On Error Resume Next
'Declare variables/objects first
Dim url, fso, oFile, oShell, oFSO, browserhta, browserhtafilepath, inputfile, outputfile, filepathTXT, filepathICO, urlcorrect
Set oFSO = CreateObject("Scripting.FileSystemObject")
Set oShell = CreateObject("WScript.Shell")
filepathTXT = oShell.ExpandEnvironmentStrings("%Temp%") & "base64browsericon.txt"
filepathICO = oShell.ExpandEnvironmentStrings("%Temp%") & "browsericon.ico"

If oFSO.FileExists(filepathTXT) = False Then
	
	'Custom icon
	Set oFile = oFSO.CreateTextFile(filepathTXT,True)
	oFile.Write "AAABAAEAICAAAAEAIACoEAAAFgAAACgAAAAgAAAAQAAAAAEAIAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAIAAAAGAAAADAAAABMAAAAYAAAAGAAAABMAAAAMAAAABgAAAAIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAUSCgUTbzweNqhbLWLFajSK1HM5pdp2OrHadjqx1HM5pcZrNYqoWy1hbjwdNRQLBRQAAAAFAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMqFwsXmlMqU9VzOabvgUDg+YdD+f6JRP//ikT//4pE//+KRP//ikT//olE//mHQvnvgUDg1nQ5pptUKlMqFwsXAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAIgUcjOtd1OqX2hkLw/4pF//+KRf//ikX//4pE//+KRP//ikT//4pE//+KRP//ikT//4pE//+KRP/+ikT/9oVC8Nd0OaaDRyM7AAAACAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAADKxeL1ztgUHX/opG//+LRf//i0X//4tF//+KRf//ikX//4pF//+KRP//ikT//4pE//+KRP//ikT//4pE//+KRP//ikT//olE/+2AP9itXi5dAgEBDAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAu6ZjNn9IZE6f+MR///jEf//4tG//+LRv/+i0X//IlE//mHQv/2hEH/9YNA//WDP//4hUH/+4hC//2JQ//9iEP//YlD//yIQ//4hED/+odC//SEQem6ZTJoAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFYvGAAAAAAGtGMzWfWGRej/jEj//4xH//+MR//+i0f/+4lF//SEQf/qgUH/5IdO/+SSYv/kmGv/5JZo/+SNWP/shUf/9IRB/+6FR//vgkD/7YFA/+iZav/riU7/+YVB//SEQei1YjBbAAAABgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZRSKjTvhETV/41I//+MSP//jEj//otI//iHRf/sg0T/5ppt/+zGr//05dz/+vTw//vu5//78u7/+PHs//HGrP/ri1L/8M24/+Oie//kpoH/+fLu//DOuf/wjFD//YhD//CCQNaXUig2AAAAAQAAAAAAAAAAAAAAAP//pAArGA0Q4HxAoP6NSf//jUj//41I//6MSP/3h0T/6YpS/+3Eqv/57uf/+vDq//78+v/8yqz/+55m//uugP/+7eP/98ap/+yfcf/9+ff/+vTx//r18v///////vn2//isf//9iEH//opE/+F6PKIwGg0RAAAAAAAAAAAAAAAAAAAAAbdmNUr5ikju/41J//+NSf//jUn/+IhG/+qOV//x1cT/+OTY/+qqg//03c//98+3//SJSP/4hUH/94Q///mjcP/znWn/8b+h//////////////////78+v/1wKD/+otJ//+KRP//ikT/+YdC7rdjMUsAAAABAAAAAIxPKgAAAAAK5H9Dnf+OSv//jkr//45K//yMSP/vik3/8s+6//38+//qwKf/5rOU//rw6v/mpHz/5ItV/+WMVv/mjVf/7oxR/+6JTv/34dT//////////////////Pj1/+ypgf/3hUH//4pE//+KRP//ikT/5Hw9nwMCAguBRyQA//+eAJlWLij1iUjb/45L//+OS///jkv/9ohG/++xjP/88On//NvH//vl2P/89/T//fr3//nr5P/36eH/9+nh//jr4//0vZv/7Z1s//z39P//////////////////////+t7M//qPT///iUP//4pE//+KRP/2hULdnVYrKv//lQD///8AzHM9VPyNSvj/j0v//49L//2NSv/xj1T/9+LV//rFpv/6jEr/85Zd//nn3P/4xqj/+6Z0//2se//9rn7//a19//iVW//0vp7////////9/P/+7+b//dW+//axiP/xlFz/+ohE//+KRP//ikT//4pE//yJQ/nNcDhW////AAAAAAHhf0R9/49M//+PTP//j0v/+4tH//Gmef/77ub/9p1o//uJRv/ymGH/+uzk//Wldf/7iEP//YpG//2KRf/9ikX/+4pI//rFpv/40Lf/9ayB//mWXP/5iEX/8J1r/++5mf/1iEf//olD//+KRP//ikT//4pE/+F7PX8AAAACAAAABeqFSJn/kE3//49M//+PTP/5ikj/9L6e//fez//qhkr/7YFB/+udb//67OT/65Rf/+6CQf/vg0L/74NC/++DQf/ugkH/7IRF/+eQXP/onnH/638//+x9O//tpXr/+eng//ORV//+iEL//4pE//+KRP//ikT/64BAmwAAAAYAAAEI74dKpv+QTf//kE3//5BN//mMSv/3zbP/9ujf/+i5nP/puJr/7cu3//vz7//qwKb/6bea/+q4m//quJr/6ria/+q4mv/otpj/8djI//fp4f/ouJv/6LaX/+vFrv/78uz/9Jtm//2IQv//ikT//4pE//+KRP/wgkGoBgQDCAACAwfxiUul/5BO//+QTv//kE7/+oxM//jPtv/99fH//OHR//3h0P/86d7//vr3//vj1f/94dH//uHR//7h0f/+4dH//uHQ//zgz//87ub//fby//zh0f/94M//++XZ//z18P/2nmn//YhC//+KRP//ikT//4pE//KDQqcJBwYIAAAABO+IS5f/kE7//5BO//+QTv/7jUv/+cao//fczP/zkFT/+49P//aqfP/77eT/85tm//yQTv/+kVD//pFQ//6RUP/+kE//94tK//XEp//528n/941P//mLSf/wpnn/++zj//eXXf/+iUP//4pF//+KRP//ikT/74NCmQAAAAT///8A64dLeP+RT///kU///5BO//2NS//4s4n/+erh/++UXv/5i0j/9Z5q//vu5v/woHD/94hG//mLSP/5ikj/+YpI//mKR//yhkX/9c+4//jPt//3iEX/9YVC//G6mf/74tT/+Y5O//+KRP//ikX//4pE//+KRP/rgUJ6////AP/XeQDggkpM/ZFQ9/+RUP//kU///pBN//mcY//87OL/7bGN/+uCQ//pjVb/+Ofd/+qui//kh07/5oxW/+aMV//mjFb/5olS/+OIU//13tH/77qa/+p+Pf/ohkz/9t/R//rEpP/8iET//4tF//+KRf//ikX//opE9+B8QU7/1GwA/6FfAMh3RiD7kFDY/5FQ//+RUP//kVD//I9O//vJq//25dr/5rOU/+zGr//78+//+O3n//Ti2P/2597/9+jf//fo3//15dv/9OLX//z59v/z3M//57aZ/+rAp//87OP/+p1l//6KRP//i0b//4tF//+KRf/7iUXZyXI9If+aUwCBUDQABxAWBPSOUZb/klD//5JQ//+RUP/+kE//+5tj//3n2v/9/f3/9drK//fWwv/89fD/8ryc//qxhf/9soT//LKF//Wvhf/12cj/++7m//PMtP/57eb///39//u+mv/9ikb//4xH//+LRv//i0X//4pF//SHRpcdHBoEh1AwAAAAAAD/v28A44dQPf2SUuv/klD//5JQ//+SUP/+j07/+6l4//3t5P/vzrr/5Jtv//fl2//tuJn/7oRE//iKR//1hkT/6Y1X//bj1//svJ7/5aN8//js5f/8z7T//I9P//+LR///jEf//4tG//+LRf/9i0bs5YFGPv+1YAAAAAAAAAAAAL92SgCIWT4G9pBTlP+SUf//klH//5JQ//+SUP/+j07//Kl3//3m2P/15dv/9OPZ//ry7f/np4H/5YVL/+SNWP/vzrr/+/bz//DYyv/77+j//cmp//ySUf//jEf//4xI//+MR///i0b//4tG//aJSJaNWTsGwnNEAAAAAAAAAAAAAAAAAP+eYADfiFQk+5NUzf+SUf//klH//5JQ//+SUP/+j07//Jpg//3FpP/+6t////v5//v28//y3dD/9ejf//79/P/+9fD//tvH//ysfP/9jkv//4xI//+NSP//jEj//4xH//+MR//7i0jP4YJJJf+WUgAAAAAAAAAAAAAAAAAAAAAAf1U7AP+3ZQDuj1ZG/ZRU4/+TUf//klH//5JQ//+SUP//kE///pBO//2aXv/9rX3//b6Z//7Hpf/+xKH//baM//2ia//9kFD//4xI//+OSv//jUn//41I//+MSP//jEj//Y1J5O2ITEf/u1wAdksyAAAAAAAAAAAAAAAAAAAAAAAAAAAArnBKAAAHJwHwkVhT/ZRU4/+SUf//klH//5JQ//+RUP//kVD//5BO//+OTP//jkv//o5L//6OSv//jUn//45J//+OS///jkv//45K//+NSf//jUj//41I//2NSuTxi05UAAwwAa9sRQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAArHJQABwxQgHwkllF/JRWzf+SUv//klD//5JQ//+RUP//kU///5BO//+QTv//kE7//5BN//+PTP//j0v//49L//+OS///jkr//41J//+NSf/8jkzP74tQRzM6RAGxb0oAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAg1lKAP/scQDnkFsi+ZRYk/6TVOv/klD//5FQ//+RUP//kU///5BO//+QTv//kE3//49N//+PTP//j0v//45L//+OS//+j0zs+Y9Qk+eKUiP/4F0Ah2JLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAN+NXADEglsF8JNbOvqUV5P9k1TX/5JS9/+SUP//kE7//5BO//+QTf//kE3//5BN//+QTff9kE/X+pFSlPCPVDvEf1UF34lWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADMiF4ArnheA+iRXRz1lFpJ+ZRYc/uTVpH7k1Wf/JNVn/qTVJH5klVz9JJWSOiOWRyqdFoDyYRZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEnwAAAF/ACZLbwEsTXABAAKEAAAQgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/8AD//8AAP/+AAB/+AAAH/AAAA/wAAAP4AAAB8AAAAPAAAADgAAAAYAAAAGAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAYAAAAGAAAABgAAAAcAAAAPAAAAD4AAAB/AAAA/wAAAP+AAAH/4AAH//AAD//8AD///+f/8="
	oFile.Close
	
	inputfile = filepathTXT
	outputfile = filepathICO
	
	Set input = oFSO.OpenTextFile(inputfile,1)
	contents = input.ReadAll()
	input.Close
	
	Set oXML = CreateObject("Msxml2.DOMDocument")
	Set oNode = oXML.CreateElement("base64")
	oNode.dataType = "bin.base64"
	oNode.text = contents
	
	Set BinaryStream = CreateObject("ADODB.Stream")
	BinaryStream.Type = 1 'adTypeBinary
	BinaryStream.Open
	BinaryStream.Write oNode.nodeTypedValue
	BinaryStream.SaveToFile outputfile
	
	oFSO.DeleteFile(filepathTXT)
End If


url = "http://"

Dim urlre
Set urlre = New RegExp
With urlre
	.Pattern    = "https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&\/\/=]*)"
	.IgnoreCase = True
	.Global     = True
End With

Do Until IsEmpty(url) = True
	'Ask user for URL
	If url = "res://ieframe.dll/syntax.htm" Then
		url = "http://"
	End If
	url = InputBox("Enter URL:", "vBrowser", url)
	urlcorrect = urlre.Test(url)
	If IsEmpty(url) = False Then
		'Turn '%TEMP%' into a real file path
		Set oShell = CreateObject("WScript.Shell")
		browserhtafilepath = oShell.ExpandEnvironmentStrings("%Temp%\browser.hta")
		
		If urlcorrect = False Then
			url = "res://ieframe.dll/syntax.htm"
		End If
		'Create the file
		Set fso = CreateObject("Scripting.FileSystemObject")
		Set oFile = fso.CreateTextFile(browserhtafilepath)
		browserhta = "<html><head><meta http-equiv=""x-ua-compatible"" content=""ie=9""/><title>vBrowser</title><HTA:APPLICATION ID = ""Browser"" APPLICATIONNAME = ""vBrowser"" BORDER = ""dialog"" BORDERSTYLE = ""normal"" CAPTION = ""yes"" CONTEXTMENU = ""yes"" ICON = """ & filepathICO & """ INNERBORDER = ""no"" MAXIMIZEBUTTON = ""yes"" MINIMIZEBUTTON = ""yes"" NAVIGABLE = ""yes"" SCROLL = ""auto"" SCROLLFLAT = ""no"" SELECTION = ""yes"" SHOWINTASKBAR = ""yes"" SINGLEINSTANCE = ""no"" SYSMENU = ""yes"" VERSION = ""1.0"" WINDOWSTATE = ""normal"" /></head><body><script type=""text/vbscript"" language=""vbscript"">window.location.replace(""" & url & """)</script></body></html>"
		oFile.WriteLine browserhta
		oFile.Close
		
		CreateObject("WScript.Shell").Exec("mshta " & browserhtafilepath)
	Else
		WScript.Quit
	End If
Loop

WScript.Quit