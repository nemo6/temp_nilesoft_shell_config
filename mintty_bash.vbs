ReDim Array_Arguments( WScript.Arguments.Count-1 )
For i = 0 To WScript.Arguments.Count-1
  Array_Arguments(i) = "'" & WScript.Arguments(i) & "'"
Next

list_arguments = Join( Array_Arguments, " " )

currentDir = "'" & Left( WScript.ScriptFullName, InStrRev( WScript.ScriptFullName , "\" ) - 1 ) & "\a.sh" & "'" 

command = "C:/cygwin64/bin/mintty.exe /bin/bash" & " " & currentDir & " " & list_arguments

set shell = CreateObject("WScript.Shell")
shell.Run command,1
