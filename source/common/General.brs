REM This file has no dependencies on other common files
REM Functions in this file
REM GetDeviceVersion
REM GetDeviceVersionAA
REM CheckDeviceVersion
REM GetDeviceCaptionsMode
REM GetDeviceESN
REM IsHD

Function GetDeviceVersion()
  if m.softwareVersion = invalid OR m.softwareVersion = "" then
    m.softwareVersion = CreateObject("roDeviceInfo").GetVersion()
  end if
  return m.softwareVersion
End Function
