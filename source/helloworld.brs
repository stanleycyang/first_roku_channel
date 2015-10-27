' *********************************************************
' ** Roku Hello World Example
' *********************************************************
Sub Main()
  port = CreateObject("roMessagePort")
  screen = CreateObject("roParagraphScreen")
  screen.SetMessagePort(port)
  screen.SetTitle("Fuisz Demo")
  screen.AddParagraph("Testing out the water!")
  screen.Show()
  wait(0, screen.GetMessagePort())
End Sub
