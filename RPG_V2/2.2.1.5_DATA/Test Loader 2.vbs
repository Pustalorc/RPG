On Error Resume Next

Set objExplorer = CreateObject _
    ("InternetExplorer.Application")

objExplorer.Navigate "about:blank"   
objExplorer.ToolBar = 0
objExplorer.StatusBar = 0
objExplorer.Width = 400
objExplorer.Height = 200 
objExplorer.Visible = 1             

objExplorer.Document.Title = "RPG"
objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
    & "This might take some time to complete"
    Wscript.sleep 5000
objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
    & "This might take some time to complete."
    Wscript.sleep 1000
objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
    & "This might take some time to complete.."
    Wscript.sleep 1000
objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
    & "This might take some time to complete..."

Wscript.Sleep 8000

objExplorer.Document.Body.InnerHTML = "Game Loaded! Exiting now to game..."

Wscript.Sleep 5000
objExplorer.Quit