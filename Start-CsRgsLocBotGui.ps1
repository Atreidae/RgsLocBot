<#  
.SYNOPSIS  
	This is a quick and nasty user migration script.
	It will check if the user is homed on-prem or online. Migrate them to on-prem, enable their Exchange UM
	It also includes some basic error checking and logging but isnt the most elegant thing out there



.DESCRIPTION  
	Created by James Arber. www.skype4badmin.com
	Built with PoshTools www.poshtools.com
    
	
.NOTES  
    Version      	   	: 0.1 (Devel)
	Date			    : 29/12/2017
	Lync Version		: Tested against Skype4B 2015
    Author    			: James Arber
	Header stolen from  : Greig Sheridan who stole it from Pat Richard's amazing "Get-CsConnections.ps1"
							
	:v0.1:	Internal Build
	
.LINK  
    https://www.skype4badmin.com

.KNOWN ISSUES
   None at this stage, this is however in development code and bugs are expected

.EXAMPLE Migrates a single user, configures their voice routing and sets up exchange UM
    PS C:\> .\Test-CsLisIpAddress.ps1 192.168.150.128/24

.EXAMPLE Migrates all the users in Example.Csv, configures their voice routing and sets up exchange UM
	PS C:\> .\Test-CsLisIpAddress.ps1 192.168.150.128 255.255.255.0

.PARAMETER IpAddress
	IP address of example user in "192.168.0.1" format or with CIDR notation ie "192.168.0.1/24"

.PARAMETER SubnetMask
	Subnet mask of example user in mask format ie "255.255.255.0" (no wildcards for you cisco types out there)

.PARAMETER -DisableScriptUpdate
    Stops the script from checking online for an update and prompting the user to download. Ideal for scheduled tasks

.INPUT
Test-CsLisIpAddress accepts pipeline input of single objects with named properties matching parameters.

.Output
Custom.PsObject. Test-CsLisIpAddress returns a the results of a migration as a custom object on the pipeline.

#>

#############################
# Script Specific Variables #
#############################

	$ScriptVersion = 0.1
	$StartTime = Get-Date
	Write-Host "Info: Start-CsRGSLocBotGui Version $ScriptVersion started at $StartTime" -ForegroundColor Green
	$LogFileLocation = $PSCommandPath -replace ".ps1",".log" #Where do we store the log files? (In the same folder by default)
	$DefaultLogComponent = "Unknown" 
	Write-Host "Info: Importing Base Variables" -ForegroundColor Green


#endregion variables


#region Functions
  ##################
  # Function Block #
  ##################
Function Write-Log {
    PARAM(
         [String]$Message,
         [String]$Path = $LogFileLocation,
         [int]$severity = 1,
         [string]$component = "Default"
         )

         $TimeZoneBias = Get-WmiObject -Query "Select Bias from Win32_TimeZone"
         $Date= Get-Date -Format "HH:mm:ss"
         $Date2= Get-Date -Format "MM-dd-yyyy"

         $MaxLogFileSizeMB = 10
         If(Test-Path $Path)
         {
            if(((gci $Path).length/1MB) -gt $MaxLogFileSizeMB) # Check the size of the log file and archive if over the limit.
            {
                $ArchLogfile = $Path.replace(".log", "_$(Get-Date -Format dd-MM-yyy_hh-mm-ss).lo_")
                ren $Path $ArchLogfile
            }
         }
         
		 "$env:ComputerName date=$([char]34)$date2$([char]34) time=$([char]34)$date$([char]34) component=$([char]34)$component$([char]34) type=$([char]34)$severity$([char]34) Message=$([char]34)$Message$([char]34)"| Out-File -FilePath $Path -Append -NoClobber -Encoding default
         #If the log entry is just informational (less than 2), output it to write verbose
		 if ($severity -le 2) {"Info: $date $Message"| Write-Host -ForegroundColor Green}
		 #If the log entry has a severity of 3 assume its a warning and write it to write-warning
		 if ($severity -eq 3) {"$date $Message"| Write-Warning}
		 #If the log entry has a severity of 4 or higher, assume its an error and display an error message (Note, critical errors are caught by throw statements so may not appear here)
		 if ($severity -ge 4) {"$date $Message"| Write-Error}
} 

Function Get-IEProxy {
	Write-Host "Info: Checking for proxy settings" -ForegroundColor Green
        If ( (Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings').ProxyEnable -ne 0) {
            $proxies = (Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings').proxyServer
            if ($proxies) {
                if ($proxies -ilike "*=*") {
                    return $proxies -replace "=", "://" -split (';') | Select-Object -First 1
                }
                Else {
                    return ('http://{0}' -f $proxies)
                }
            }
            Else {
                return $null
            }
        }
        Else {
            return $null
        }
    }

Function Get-ScriptUpdate {
	
if ($DisableScriptUpdate -eq $false) {
	Write-Log -component "Self Update" -Message "Checking for Script Update" -severity 1
	Write-Log -component "Self Update" -Message "Checking for Proxy" -severity 1
	    $ProxyURL = Get-IEProxy
    If ( $ProxyURL) {
		Write-Log -component "Self Update" -Message "Using proxy address $ProxyURL" -severity 1
       }
    Else {
		Write-Log -component "Self Update" -Message "No proxy setting detected, using direct connection" -severity 1
		    }
	
	$GitHubScriptVersion = Invoke-WebRequest https://raw.githubusercontent.com/atreidae/RGSLocBot/devel/version -TimeoutSec 10 -Proxy $ProxyURL #todo change back to master!
        If ($GitHubScriptVersion.Content.length -eq 0) {
			Write-Log -component "Self Update" -Message "Error checking for new version. You can check manualy here" -severity 3
			Write-Log -component "Self Update" -Message "http://www.skype4badmin.com/find-and-test-user-ip-addresses-in-the-skype-location-database" -severity 1 #Todo Update URL
			Write-Log -component "Self Update" -Message "Pausing for 5 seconds" -severity 1
            start-sleep 5
            }
        else { 
                if ([single]$GitHubScriptVersion.Content -gt [single]$ScriptVersion) {
				Write-Log -component "Self Update" -Message "New Version Available" -severity 3
                   #New Version available

                    #Prompt user to download
				$title = "Update Available"
				$message = "an update to this script is available, did you want to download it?"

				$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", `
					"Launches a browser window with the update"

				$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", `
					"No thanks."

				$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)

				$result = $host.ui.PromptForChoice($title, $message, $options, 0) 

				switch ($result)
					{
						0 {
							Write-Log -component "Self Update" -Message "User opted to download update" -severity 1
							start "http://www.skype4badmin.com/australian-holiday-rulesets-for-response-group-service/" #Todo Update URL
							Write-Log -component "Self Update" -Message "Exiting Script" -severity 3
							Exit
						}
						1 {Write-Log -component "Self Update" -Message "User opted to skip update" -severity 1
									
							}
							
					}
                 }   
                 Else{
                 Write-Log -component "Self Update" -Message "Script is upto date" -severity 1
                 }
        
	       }

	}
}

#endregion functions





. (Join-Path $PSScriptRoot 'Start-CsRgsLocBotGui.designer.ps1')

$MainForm.ShowDialog()