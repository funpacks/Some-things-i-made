$signature = @"
[DllImport("user32.dll")]
public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);
[DllImport("user32.dll")]
public static extern IntPtr GetForegroundWindow();
"@

Add-Type -MemberDefinition $signature -Name "Win32ShowWindowAsync" -Namespace Win32Functions
$hWnd = [Win32Functions.Win32ShowWindowAsync]::GetForegroundWindow()
# SW_MINIMIZE = 6
[Win32Functions.Win32ShowWindowAsync]::ShowWindowAsync($hWnd, 6)
