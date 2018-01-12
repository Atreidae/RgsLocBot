<#  
.SYNOPSIS  
	Todo, build synopsis


.DESCRIPTION  
	Created by James Arber. www.skype4badmin.com
	Built with PoshTools Pro www.poshtools.com
    
	
.NOTES  
    Version      	   	: 0.2 (Devel)
	Date			    : 07/1/2018
	Lync Version		: Tested against Skype4B 2015
    Author    			: James Arber
	Header stolen from  : Greig Sheridan who stole it from Pat Richard's amazing "Get-CsConnections.ps1"
							
	:v0.2:  Internal Build
	:v0.1:	Internal Build
	
.LINK  
    https://www.skype4badmin.com

.KNOWN ISSUES
   None at this stage, this is however in development code and bugs are expected

.EXAMPLE Starts the RGSLocBot Configuration Gui
    PS C:\> .\Start-CsRgsLocBotGui.ps1

.PARAMETER ConfigFilePath
	Specify the location of the RgsLocBotConfig.json file, Defaults to the current directory

.INPUT
Start-CsRgsLocBotGui Does not accept input from the pipeline.

.Output
Start-CsRgsLocBotGui Does not output to the pipeline

#>

#[CmdletBinding(DefaultParametersetName="Common")]
param(
	[Parameter(Mandatory=$false)] [switch]$DisableScriptUpdate,
	[Parameter(Mandatory=$false, Position=1)] $ConfigFilePath = $null
	)
#############################
# Script Specific Variables #
#############################
	#Set for internal builds
	$VerbosePreference = "Continue" #Todo Preview Build Only
	
	$ScriptVersion = 0.2
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
		 #If the severity is 2, its a status message. So we should write it to the status bar
		 if ($severity -ge 2) {$toolStripStatusLabel1.text = "$date $message"}
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

Function Test-LocBotUpdateFile {
	 PARAM([String]$Path)
	Write-Log -component "Test-LocBotUpdateFile" -Message "Test-LocBotUpdateFile called. Not implemented" -severity 3
	#Todo
}

Function Test-CsAutoDiscover {
	PARAM ([String]$s4bAutoDiscover)
	
	 Write-Log -component "Config" -Message "Testing Autodiscover" -severity 2
	 Write-Log -component "Config" -Message "User defined url is $s4bAutodiscover" -severity 1
	try{
		Write-Log -component "Config" -Message "Invoking webrequest" -severity 1
		$data = Invoke-WebRequest -Uri $s4bAutodiscover -Method GET -ContentType "application/json" -UseBasicParsing
		 Write-Log -component "Config" -Message "got data, parsing" -severity 1
 		$baseurl = (($data.content | ConvertFrom-JSON)._links.user.href).split("/")[0..2] -join "/"
		 Write-Log -component "Config" -Message "Found BaseURL $baseurl" -severity 1
 		$oauthurl = ($data.content | convertfrom-json)._links.user.href
		 Write-Log -component "Config" -Message "Found OauthURL $oauthurl" -severity 1
		 Write-Log -component "Config" -Message "AutoDiscover test passed, Found UCWA details" -severity 2
		$btn_TestAutodiscover.backcolor = "LimeGreen"
	}catch{
		Write-Log -component "Config" -Message "Something went wrong getting to the AutoDiscover URL or the data was bad" -severity 3
		Write-Log -component "Config" -Message "Setting button red" -severity 1
		$btn_TestAutodiscover.backcolor = "red"
	}

}

Function Test-CsManagementTools {
Write-Log -component "Test-CsManagementTools" -Message "Checking for Lync/Skype management tools"
	$ManagementTools = $false
	if(!(Get-Module "SkypeForBusiness")) {Import-Module SkypeForBusiness -Verbose:$false}
	if(!(Get-Module "Lync")) {Import-Module Lync -Verbose:$false}
	if(Get-Module "SkypeForBusiness") {$ManagementTools = $true}
	if(Get-Module "Lync") {$ManagementTools = $true}
	if(!$ManagementTools) {
		Write-Log 
		Write-Log -component "Test-CsManagementTools" -Message "Could not locate Lync/Skype4B Management tools" -severity 3 
		throw  "Could not locate Lync/Skype4B Management tools"
		}
	
	#Check for the AD Management Tools
	$ADManagementTools = $false
	if(!(Get-Module "ActiveDirectory")) {Import-Module ActiveDirectory -Verbose:$false}
	if(Get-Module "ActiveDirectory") {$ADManagementTools = $true}
	if(!$ADManagementTools) {
		Write-Log 
		Write-Log -component "Test-CsManagementTools" -Message "Could not locate Active Directory Management tools" -severity 3
		throw  "Could not locate Active Directory Management tools"
		}

}

Function Read-ConfigFile {
	Write-Log -component "Read-ConfigFile" -Message "Read-ConfigFile called. Not implemented" -severity 3
}

Function Write-ConfigFile {
	Write-Log -component "Write-ConfigFile" -Message "Writing Config file" -severity 2
	Write-Log -component "Write-ConfigFile" -Message "Generating AES Key" -severity 1
	# Generate a random AES Encryption Key.
	$Script:Config.AESKey = New-Object Byte[] 32
	[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($Script:Config.AESKey)
	Write-Log -component "Write-ConfigFile" -Message "Encrpyting Bot Password" -severity 2
	$SecurePassword = (ConvertTo-SecureString -string $Txt_BotPassword.text -asplaintext -force)
	$Script:Config.BotPassword = (ConvertFrom-SecureString -securestring $SecurePassword -key $Script:Config.AESKey)
	Write-Log -component "Write-ConfigFile" -Message "Importing Objects" -severity 1
	$Script:Config.BotAddress = $Txt_BotSipAddr.Text 
	$Script:Config.AutoDiscover = $tbx_Autodiscover.text
	$Script:Config.DomainFQDN = $txt_DomainFQDN.text
	$Script:Config.MinUpdate = $mtxt_MinUpdate.text
	$Script:Config.MaxChanges = $mtxt_MaxChanges.text


	Try{
	(ConvertTo-Json $Script:Config) | Out-File -FilePath $Script:ConfigPath -Encoding default
	Write-Log -component "Write-ConfigFile" -Message "Config File Saved" -severity 2
		}
	Catch {
	Write-Log -component "Write-ConfigFile" -Message "Error writing Config file" -severity 3
		}



}

Function Load-DefaultConfig {
	
	If (!$Script:Config) 
		{$Script:Config=@{}
			$Script:Config.ConfigFileVersion = 0.2
			$Script:Config.Description = "CsRgsLocBot Configuration file. See Skype4BAdmin.com for more information"
			$Script:Config.Warning = "whilst passwords are encrpyted in this file, the Keys are also stored here! Please dont treat it as secure"
			$Script:Config.SelectedFePool = "---None Selected---"
			$Script:Config.SelectedRule = "---None Selected---"



		}
	Else {Write-Log -component "Load-DefaultConfig" -Message "Load-DefaultConfig Called but `$Config not Null" -severity 3 
			$Script:config | gm}
		
		
}

Function Get-CSInfrastructure(){
	#Clear the Dropboxes
$dbx__FEpool.items.Clear()
$WPFCbx_ServiceID.Items.Clear()
	Write-Log -component "Get-CSInfrastructure" -Message "Pulling FrontEnd info" -severity 1
	Write-Log -component "Get-CSInfrastructure" -Message "Detected Front Ends:" -severity 1
	Get-CSService -ApplicationServer | select-object PoolFQDN | ForEach-Object {Write-Log -component "Get-CSInfrastructure" -Message "$($_.PoolFQDN)" -severity 1}
    Get-CSService -ApplicationServer | select-object PoolFQDN | ForEach-Object {[void]$dbx__FEpool.Items.Add($_.PoolFQDN)}

}
#endregion functions


#region Controls


#region Configtab

#AutoDiscover Test Button
$btn_TestAutodiscover_Click = {
	Test-CsAutoDiscover ($tbx_Autodiscover.text)
}

#AutoDiscover Textbox
$tbx_Autodiscover_TextChanged = {
	Write-Log -component "Config" -Message "Autodiscover URL changed" -severity 2
	Write-Log -component "Config" -Message "Setting button yellow" -severity 1
	$btn_TestAutodiscover.backcolor = "Yellow"
}


#Config Browse Button
$Btn_ConfigBrowse_Click = {
	Write-Log -component "Config" -Message "Config file Browse button pressed" -severity 1
	Write-Log -component "Config" -Message "Checking current script path $PSScriptRoot" -severity 1
	#Setup Dialog Box
	$ConfigFileBrowserDialog.SelectedPath = $PSScriptRoot
	$ConfigFileBrowserDialog.Description = "Select Path of Config File, Update-CsRgsLocBotQueues.ps1 should be in the same folder"
	$ConfigFileBrowserDialog.ShowNewFolderButton = $false
	#Show the Dialogbox and catch its output
	if ($ConfigFileBrowserDialog.ShowDialog() -eq "Ok")
		{
		#Execute this block if the user presses OK
		Write-Log -component "Config" -Message "Selected Folder is $($ConfigFileBrowserDialog.SelectedPath)" -severity 1
		$Txt_ConfigFileName.text = ($ConfigFileBrowserDialog.SelectedPath + "\RgsLocBotConfig.json")
		
		#Now check that Update-CsRgsLocBotQueues.ps1 is present
		Write-Log -component "Config" -Message "Checking for Update-CsRgsLocBotQueues.ps1" -severity 2	
		$Script:ConfigPath = $ConfigFileBrowserDialog.SelectedPath + "\Update-CsRgsLocBotQueues.ps1"
		Write-Log -component "Config" -Message "Testing Path $ConfigPath" -severity 1
		If(!(Test-Path $Script:ConfigPath)) {
			Write-Log -component "Config" -Message "Could not locate Update-CsRgsLocBotQueues.ps1 in the specified folder, Display Warning" -severity 3
			$lbl_PathWarning.visible = $true
			}
			Else {
			Write-Log -component "Config" -Message "Found Update-CsRgsLocBotQueues.ps1 in the specified folder, Hiding warning" -severity 1
			$lbl_PathWarning.visible = $false
				}
	
	}



}

#Config Save Button
$btn_SaveConfig_Click = {
Write-ConfigFile
}


#endregion Configtab



#endregion Controls



#region MainScript
#

#check for script update
if ($DisableScriptUpdate -eq $false) {Get-ScriptUpdate}

#Check for Skype4B and AD Tools

<# Try {Test-CsManagementTools} #Todo Re-enable checks
	Catch {
	Write-Warning 'An error occurred trying to locate the Skype4B or Active Directory management tools'
	Write-Warning 'Install the Skype4B Management tools from you installation media and ensure the AD RSAT tools are installed'
	Throw ('Problem locating management tools {0}' -f $error[0])
    Exit 1
		}
#>

#Okay, all the self checks have passed. Load the GUI elements
. (Join-Path $PSScriptRoot 'Start-CsRgsLocBotGui.designer.ps1')



#Clean up controls and items before displaying the GUI
Write-Log -component "Script Block" -Message "Cleaning up form items" -severity 1
Write-Log -component "Script Block" -Message "Script executed from $PSScriptRoot" -severity 1
if ($ConfigFilePath -eq $null)
	{
		Write-Log -component "Script Block" -Message "No Config File Path Specified, Assuming current folder" -severity 1
		$ConfigFilePath = ("$PSScriptRoot" + "\RgsLocBotConfig.json")
	}

#Check for and load the config file if present
If(!(Test-Path $ConfigFilePath)) {
			Write-Log -component "Config" -Message "Could not locate $ConfigFilePath in the specified folder, Using Defaults" -severity 3
			#If there is no config file. Load a default
			Load-DefaultConfig
			}
			Else {
			Write-Log -component "Config" -Message "Found $ConfigFilePath in the specified folder, loading" -severity 1
			#Todo Loadconfig File
				}

#Set Global Filepath 
$Txt_ConfigFileName.text = $ConfigFilePath
$Script:ConfigPath = $ConfigFilePath

#Display the form
Write-Log -component "Config" -Message "Showing Form" -severity 2
$MainForm.ShowDialog()

#endregion MainScript