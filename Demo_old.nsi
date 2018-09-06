!include "WinMessages.nsh"
!include MUI2.nsh

Name "lucheng"
OutFile "lucheng_old.exe"
InstallDir $DESKTOP\Example1 ;default install directory


; Page license skipLicense "" stayInLicense
PageEx license
  LicenseText "Readme"
  LicenseData License.txt
  LicenseForceSelection checkbox
  PageCallbacks skipLicense "" stayInLicense
PageExEnd
Page directory
Page instfiles


; Callbacks

# install failed callback
Function .onInstFailed
  MessageBox MB_OK "Better luck next time."
FunctionEnd

Function skipLicense
   MessageBox MB_YESNO "Do you want to skip the license page?" IDNO no
     Abort
   no:
 FunctionEnd

Function stayInLicense
  MessageBox MB_YESNO "Do you want to stay in the license page?" IDNO no
    Abort
  no:
FunctionEnd

; The stuff to install
Section ""
  AddSize 500
  SetOutPath $INSTDIR
  File Demo.nsi
SectionEnd
