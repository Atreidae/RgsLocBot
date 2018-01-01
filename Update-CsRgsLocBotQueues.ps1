


 # Input Globals
 $username = "jarber@icomm.com.au"
 $password = "#####"
 $s4bAutodiscover = "https://lyncdiscover.icomm.com.au"
 $pwd = $password | convertto-securestring -AsPlainText -Force




 

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
$userAgent = "RGSBugMeNot"
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
