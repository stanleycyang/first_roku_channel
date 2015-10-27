' *********************************************************
' ** Roku Hello World Example
' *********************************************************
Sub Main()
  PrintInformation()
  port = CreateObject("roMessagePort")
  screen = CreateObject("roParagraphScreen")
  screen.SetMessagePort(port)
  screen.SetTitle("Fuisz Demo")
  screen.AddParagraph("Testing out the water!")
  screen.Show()
  wait(0, screen.GetMessagePort())
End Sub

' Print Roku Channel information
function PrintInformation()
  appInfo = CreateObject("roAppInfo")
  print "ID: " ; appInfo.GetID()
  print "isDev: " ; appInfo.IsDev()
  print "DevID: " ; appInfo.GetDevID()
  print "Title: " ; appInfo.GetTitle()
  print "Version: " ; appInfo.GetVersion()
  print "MajVers: " ; appInfo.GetValue("major_version")
end function
