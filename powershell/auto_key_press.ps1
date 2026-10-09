$logPath = Join-Path (Split-Path (Split-Path `c:\auto.ps1` -Parent) -Parent) `auto_key_press.log`
$timestamp = Get-Date -Format `yyyy-MM-dd HH:mm:ss`
"$timestamp - Running - PID: $PID" | Out-File -FilePath $logPath -Append

$code = @'
[DllImport("user32.dll", SetLastError = true)]
public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, int dwExtraInfo);
public const int KEYEVENTF_KEYUP = 0x0002;
public const byte VK_F15 = 0x7E;
public static void KeepAlive() {
    keybd_event(VK_F15, 0, 0, 0);
    keybd_event(VK_F15, 0, KEYEVENTF_KEYUP, 0);
}
'@

Add-Type -TypeDefinition $code -Name `IdlePrevention` -Namespace `GeminiBatchProcessor`

while ($true) {
    [GeminiBatchProcessor.IdlePrevention]::KeepAlive()
    Start-Sleep -Seconds `60`
}