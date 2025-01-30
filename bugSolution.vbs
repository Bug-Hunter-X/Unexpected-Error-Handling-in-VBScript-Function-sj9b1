Function MyFunction(param1)
  On Error Resume Next ' Handle potential errors
  If IsEmpty(param1) Then
    Err.Raise 13, , "Parameter cannot be empty"
    If Err.Number <> 0 Then
      ' Log or process the error appropriately
      MsgBox "Error: " & Err.Description
      Err.Clear ' Clear the error object
    End If
  End If
  On Error GoTo 0 ' Restore default error handling
  ' ... rest of the function
End Function

' Example calling code
Dim result
result = MyFunction(Null)
If IsEmpty(result) Then
  MsgBox "Function returned an error"
Else
  MsgBox "Function executed successfully: " & result
End If