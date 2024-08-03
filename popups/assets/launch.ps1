# Define the batch file name (without extension)
$batchFileName = "brrr"

# Start the batch file in a new window
Start-Process -FilePath "cmd.exe" -ArgumentList "/c start `"$batchFileName.bat`"" -WindowStyle Hidden

# Monitor the batch file process
while ($true) {
    # Check if the batch file process is still running
    $batchProcess = Get-Process | Where-Object { $_.MainWindowTitle -match "^$batchFileName" }
    
    if (-not $batchProcess) {
        break  # Exit the loop when batch file process is not found
    }
    
    # Wait for a short period before checking again
    Start-Sleep -Milliseconds 500
}

# Batch file has been closed
Start-Process -FilePath "cmd.exe" -ArgumentList "/c start `"$batchFileName.bat`"" -WindowStyle Hidden
