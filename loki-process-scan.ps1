# Get Loki process and execute if not running.
$loki_is_running = Get-Process loki -ErrorAction SilentlyContinue
if (!$loki_is_running) {
& cd 'C:\Program Files\loki\'
& .\loki.exe --nofilescan --onlyrelevant --dontwait -l 'C:\Program Files (x86)\ossec-agent\logs\loki-process-scan.log'
};
