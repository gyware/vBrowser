'Declare variables/objects first
Dim url, fso, oFile, oShell, browserhtml

url = 0

Do Until IsEmpty(url) = True
    'Ask user for URL
	url = InputBox("Enter URL:","vBrowser","http://")
	If IsEmpty(url) = False Then
    	'Turn '%TEMP%' into a real file path
		Set oShell = CreateObject("WScript.Shell")
		browserhtmlfile = oShell.ExpandEnvironmentStrings("%Temp%\browser.html")
		Set oShell = Nothing 'Tidy up the Objects we no longer need

		'Create the file
		Set fso = CreateObject("Scripting.FileSystemObject")
		Set oFile = fso.CreateTextFile(browserhtmlfile)
		browserhtml = "<html><head><meta http-equiv=""x-ua-compatible"" content=""ie=9""/><title>vBrowser</title><HTA:APPLICATION Application ID = ""Browser"" APPLICATIONNAME = ""Browser"" BORDER = ""dialog"" BORDERSTYLE = ""normal"" CAPTION = ""yes"" CONTEXTMENU = ""yes"" ICON = """" INNERBORDER = ""no"" MAXIMIZEBUTTON = ""yes"" MINIMIZEBUTTON = ""yes"" NAVIGABLE = ""yes"" SCROLL = ""auto"" SCROLLFLAT = ""no"" SELECTION = ""yes"" SHOWINTASKBAR = ""yes"" SINGLEINSTANCE = ""no"" SYSMENU = ""yes"" VERSION = ""1.0"" WINDOWSTATE = ""normal"" /></head><body><script type=""text/vbscript"" language=""vbscript"">window.location.replace(""" & url & """)</script></body></html>"
		oFile.WriteLine browserhtml
		oFile.Close
		Set oFile = Nothing 'Tidy up the Objects we no longer need
		Set fso = Nothing 'Tidy up the Objects we no longer need

		CreateObject("WScript.Shell").Exec("mshta %Temp%\browser.html")
    Else
        WScript.Quit
    End If
Loop

WScript.Quit