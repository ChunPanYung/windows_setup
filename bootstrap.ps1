# Info: ansible doc -> winrm & windows setup guide 

# setting up windows as managed node for ansible
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

powershell.exe -ExecutionPolicy ByPass -File $file

# setup http
winrm quickconfig

# enable winrm certificate
Set-Item -Path WSMan:\localhost\Service\Auth\Certificate -Value $true
# winrm set winrm/config/service/Auth '@{Certificate="true"}'

# Install WSL
wsl --install
wsl --install -d Ubuntu

# create self-signed certificate
New-SelfSignedCertificate -Subject "localhost" -TextExtension @("2.5.29.17={text}DNS=localhost&IPAddress=127.0.0.1&IPAddress=::1")
