Add-Type -AssemblyName System.Windows.Forms

# Number of pop-up windows
$popupCount = 350

# Create an array to hold the forms and their properties
$forms = @()

# Get screen dimensions
$screenWidth = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width
$screenHeight = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height

# Initialize forms and labels
for ($i = 0; $i -lt $popupCount; $i++) {
    $form = New-Object System.Windows.Forms.Form
    $form.Text = "GETHACKED $i"  # Title of the form
    $form.Size = New-Object System.Drawing.Size(300, 150)
    $form.StartPosition = "Manual"
    $form.TopMost = $true

    $label = New-Object System.Windows.Forms.Label
    $label.Text = "hahahahahahahahahahahahahahahahahahahhahahahahahah $i"  # Custom text
    $label.AutoSize = $true
    $label.Location = New-Object System.Drawing.Point(50, 50)
    $form.Controls.Add($label)

    # Random initial position and direction
    $x = Get-Random -Minimum 0 -Maximum ($screenWidth - $form.Width)
    $y = Get-Random -Minimum 0 -Maximum ($screenHeight - $form.Height)
    
    $dx = Get-Random -Minimum 3 -Maximum 10
    $dy = Get-Random -Minimum 3 -Maximum 10
    
    if (Get-Random -Minimum 0 -Maximum 1 -eq 0) { $dx = -$dx }
    if (Get-Random -Minimum 0 -Maximum 1 -eq 0) { $dy = -$dy }

    # Store the form and its properties
    $forms += [PSCustomObject]@{
        Form = $form
        X = $x
        Y = $y
        DX = $dx
        DY = $dy
    }

    # Show the form at its initial position
    $form.Location = New-Object System.Drawing.Point($x, $y)
    $form.Show()
}

# Main loop to animate all forms
while ($true) {
    foreach ($formObj in $forms) {
        $form = $formObj.Form
        $formObj.X += $formObj.DX
        $formObj.Y += $formObj.DY

        if ($formObj.X -lt 0 -or $formObj.X + $form.Width -gt $screenWidth) {
            $formObj.DX = -$formObj.DX
        }
        if ($formObj.Y -lt 0 -or $formObj.Y + $form.Height -gt $screenHeight) {
            $formObj.DY = -$formObj.DY
        }

        $form.Location = New-Object System.Drawing.Point($formObj.X, $formObj.Y)
    }
    Start-Sleep -Milliseconds 50
}
