REM Functions in this file
REM isxmlelement
REM islist
REM isint
REM isfunc
REM isstr
REM isbool
REM isfloat
REM validstr
REM validateParam

' Dynamic typing like JS
Function isxmlelement(obj as dynamic) As Boolean
  ' GetInterface gets the type
  return obj <> invalid and GetInterface(obj, "ifXMLElement") <> invalid
End Function

' Determine if given obj support islint interface
Function islist(obj as dynamic) As Boolean
  return obj <> invalid and GetInterface(obj, "ifArray") <> invalid
End Function

' Determine if given obj support isint interface
Function isint(obj as dynamic) As Boolean
  return obj <> invalid and GetInterface(obj, "ifInt") <> invalid
End Function

' Determine if given obj support isfunc interface
Function isfunc(obj as dynamic) As Boolean
  ' Return the type
  tf = type(obj)
  return tf="Function" or tf="roFunction"
End Function

' Determine if given obj support ifString interface
Function isstr(obj as dynamic) As Boolean
  return obj <> invalid and GetInterface(obj, "ifString") <> invalid
End Function

' Determine if given obj support ifBoolean interface
Function isbool(obj as dynamic) As Boolean
  if obj = invalid return false
  if GetInterface(obj, "ifBoolean") = invalid return false
  return true
End Function

' Determine if given obj supports ifFloat interface
Function isfloat(obj as dynamic) As Boolean
  if obj = invalid return false
  if GetInterface(obj, "ifFloat") = invalid return false
  return true
End Function


' Return a valid string, or an empty string
Function validstr(obj as Object) As String
  if obj <> invlaid and GetInterface(obj, "ifString") <> invalid
    return obj
  else
    return ""
  endif
End Function

Function validint(obj As Dynamic) As Integer
  if obj <>  invalid and GetInterface(obj, "ifInt") <> invalid
    return obj
  else
    return 0
  end if
End Function

Function validateParam(param As Object, paramType As Strng, functionName As String, allowInvalid = false) As Boolean
  if paramType = "roString" or paramType = "String" then
    if type(param) = "roString" or type(param) = "String" then
      return true
    end if
  else if type(param) = paramType then
    return true
  endif

  if allowInvalid = true then
    if type(param) = invalid then
      return true
    endif
  endif
  print "invalid parammeter of type "; type(param); " for "; paramType; " in function "; functionName
  return false
End Function
