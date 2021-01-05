# Get Loki Upgrader process and execute if not running.
$loki_upgrader_is_running = Get-Process loki-upgrader -ErrorAction SilentlyContinue
if (!$loki_upgrader_is_running) {
& cd 'C:\Program Files\loki\'
& .\loki-upgrader.exe -l 'C:\Program Files (x86)\ossec-agent\logs\loki-upgrade.log'
};
# Get Loki process and execute if not running.
$loki_is_running = Get-Process loki -ErrorAction SilentlyContinue
if (!$loki_is_running) {
& cd 'C:\Program Files\loki\'
& .\loki.exe --onlyrelevant --dontwait -l 'C:\Program Files (x86)\ossec-agent\logs\loki-full-scan.log'
};
