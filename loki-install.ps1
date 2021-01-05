#Download and Unzip Loki
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest https://github.com/Neo23x0/Loki/releases/download/0.32.1/loki_0.32.1.zip -OutFile c:\Windows\Temp\loki_0.32.1.zip
if (!(Test-Path "C:\Program Files\loki\loki.exe"))
{
Expand-Archive -LiteralPath 'c:\Windows\Temp\loki_0.32.1.zip' -DestinationPath 'C:\Program Files'
}
#Create Empty Log Files
if (!(Test-Path "C:\Program Files (x86)\ossec-agent\logs\loki-upgrade.log"))
{
   New-Item -path 'C:\Program Files (x86)\ossec-agent\logs\' -name loki-upgrade.log -type "file" -value "Loki Upgrade Log"
}
if (!(Test-Path "C:\Program Files (x86)\ossec-agent\logs\loki-full-scan.log"))
{
   New-Item -path 'C:\Program Files (x86)\ossec-agent\logs\' -name loki-full-scan.log -type "file" -value "Loki Full Scan Log"
}
if (!(Test-Path "C:\Program Files (x86)\ossec-agent\logs\loki-process-scan.log"))
{
   New-Item -path 'C:\Program Files (x86)\ossec-agent\logs\' -name loki-process-scan.log -type "file" -value "Loki Process Scan Log"
}
