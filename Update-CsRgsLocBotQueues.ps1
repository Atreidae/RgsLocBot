<#  
.SYNOPSIS  
	this script should not be run directly. it is intended to be called as a scheduled task


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

.EXAMPLE Starts the RGSLocBot Configuration Gui
    PS C:\> .\Start-CsRgsLocBotGui.ps1

.INPUT
Start-CsRgsLocBotGui Does not accept input from the pipeline.

.Output
Start-CsRgsLocBotGui Does not output to the pipeline

#>



 # Input Globals
 $username = "jarber@icomm.com.au"
 $password = "#####"
 $s4bAutodiscover = "https://lyncdiscover.icomm.com.au"
 $pwd = $password | convertto-securestring -AsPlainText -Force

 
#############################
# Script Specific Variables #
#############################

	$ScriptVersion = 0.1
	$StartTime = Get-Date
	Write-Host "Info: Start-CsRGSLocBotGui Version $ScriptVersion started at $StartTime" -ForegroundColor Green
	$LogFileLocation = $PSCommandPath -replace ".ps1",".log" #Where do we store the log files? (In the same folder by default)
	$DefaultLogComponent = "Unknown" 
	Write-Host "Info: Importing Base Variables" -ForegroundColor Green



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




function Connect-CsUCWAAPI{



}


#endregion Functions

	#Import the Skype for Business / Lync Modules and error if not found
	Write-Log -component "Script Block" -Message "Checking for Lync/Skype management tools"
	$ManagementTools = $false
	if(!(Get-Module "SkypeForBusiness")) {Import-Module SkypeForBusiness -Verbose:$false}
	if(!(Get-Module "Lync")) {Import-Module Lync -Verbose:$false}
	if(Get-Module "SkypeForBusiness") {$ManagementTools = $true}
	if(Get-Module "Lync") {$ManagementTools = $true}
	if(!$ManagementTools) {
		Write-Log 
		Write-Log -component "Script Block" -Message "Could not locate Lync/Skype4B Management tools. Script Exiting" -severity 5 
		$AllGood=$false
		Throw "Unable to load Skype4B/Lync management tools"
		}
	
	#Check for the AD Management Tools
	$ADManagementTools = $false
	if(!(Get-Module "ActiveDirectory")) {Import-Module ActiveDirectory -Verbose:$false}
	if(Get-Module "ActiveDirectory") {$ADManagementTools = $true}
	if(!$ADManagementTools) {
		Write-Log 
		Write-Log -component "Script Block" -Message "Could not locate ActiveDirectory Management tools. Script Exiting" -severity 5 
		Throw "Unable to load ActiveDirectory Powershell Module"
		}

 

 write-verbose "Get S4B Autodiscover Information"
try{
	$data = Invoke-WebRequest -Uri $s4bAutodiscover -Method GET -ContentType "application/json" -UseBasicParsing
 	$baseurl = (($data.content | ConvertFrom-JSON)._links.user.href).split("/")[0..2] -join "/"
 	$oauthurl = ($data.content | convertfrom-json)._links.user.href
}catch{
	write-output "Could not retrieve S4B Autodiscover information on" $s4bAutodiscover "Change the S4B Autodiscover URL and try again"
	exit 1
}

write-verbose "AuthN to S4B to get oAuth Token"
try{
	$postParams = @{grant_type="password";username=$username;password=$password}
 	$data = Invoke-WebRequest -Uri "$baseurl/WebTicket/oauthtoken" -Method POST -Body $postParams -UseBasicParsing
 	$authcwt = ($data.content | ConvertFrom-JSON).access_token
}catch{
	write-output "We couldn't AuthN with the username & password provided. Update and try again."
	exit 1
}

write-verbose "Get application URLs"
try{
	$data = Invoke-WebRequest -Uri "$oauthurl" -Method GET -Headers @{"Authorization"="Bearer $authcwt"} -UseBasicParsing
	$rootappurl = ($data.content | ConvertFrom-JSON)._links.applications.href
}catch{
	write-output "Unable to get Application URLs"
	exit 1
}
<# Create the UCWA Application

The following script will create an application on the UCWA endpoint. The Endpoint ID you can make up yourself. Same for the Application name.#>

write-verbose "Create App Instance"
$userAgent = "RGSLocBot Version $version"
$EndpointID = "f6d747f3-d2f3-4e07-9f73-c1515fcc9585"

 
try{
	$postparams = @{UserAgent=$userAgent;EndpointId=$EndpointID;Culture="en-US"} | ConvertTo-JSON
    $data = Invoke-WebRequest -Uri "$rootappurl" -Method POST -Body "$postparams" -Headers @{"Authorization"="Bearer $authcwt"} -ContentType "application/json" -UseBasicParsing

    $appurl = $(($data.content | ConvertFrom-JSON)._links.self.href)
	$appurl = "$($rootappurl.split("/")[0..2] -join "/")$(($data.content | ConvertFrom-JSON)._links.self.href)"

    $meurl = $(($data.Content | ConvertFrom-JSON)._embedded.me._links)   
    $peopleurl = $(($data.Content | ConvertFrom-JSON)._embedded.people._links)   

	$appid = $appurl.split("/")[-1]
	$operationID = (($data.content | ConvertFrom-JSON)._embedded.communication | GM -Type Noteproperty)[0].name

}

catch{
	write-output "Unable to create application instance"
	exit 1
}
<# 
Change your Presence, Get your Contacts & their Status

Now you can do what you want or need to with the API. Here are a few examples of changing your status, getting your contacts, getting the status of your contacts.
#>

# Get my Contacts
$response = Invoke-WebRequest -Uri ($baseurl+$peopleurl.myContacts.href) -Method Get -Headers @{"Authorization"="Bearer $authcwt"} -ContentType "application/json" -UseBasicParsing
$myContacts = $response.Content | ConvertFrom-Json
$myContacts._embedded.contact | Out-GridView


# Get the presense status of my contacts
$myContactsLinks = $(($response.content | ConvertFrom-JSON)._embedded.contact._links)

foreach ($contact in $myContactsLinks.contactPresence.href){  
    $presense = Invoke-WebRequest -Uri $($baseurl+ $Contact) -method GET -Headers @{"Authorization"="Bearer $authcwt"} -ContentType "application/json" -UseBasicParsing #| ConvertFrom-JSON | Select -ExpandProperty availability
    $contactPresense = $presense.Content | ConvertFrom-Json
    write-host $Contact.split("/")[7..7] "is on a" $contactPresense.deviceType "and is" $contactPresense.availability
}

Invoke-WebRequest -Uri ($appurl + "/people/" + "jarber@icomm.com.au" + "/Location") -method GET -Headers @{"Authorization"="Bearer $authcwt"} -ContentType "application/json" -UseBasicParsing | ConvertFrom-Json
