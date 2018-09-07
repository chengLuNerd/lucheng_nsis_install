!include MUI2.nsh ;modern2ui head file

Name "lucheng"  ;installer name
OutFile "lucheng.exe" ;installer file name
InstallDir $DESKTOP\Example1 ;default install directory

; MUI settings 
!define MUI_ICON "favicon.ico"
!define MUI_HEADERIMAGE_BITMAP "head.png" ;if not define this, it will show MUI_ICON
!define MUI_WELCOMEFINISHPAGE_BITMAP "welcome.bmp"
!define MUI_LICENSEPAGE_CHECKBOX

; Pages
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "License.txt"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH


;!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "English"
; Callbacks


; The stuff to install
Section "PLB Section" PlbSection
  AddSize 500
  SetOutPath $INSTDIR
  File Demo.nsi
SectionEnd

Section "APP Section" AppSection
  AddSize 200
  SetOutPath $INSTDIR
  File License.txt
SectionEnd

;Descriptions
LangString DESC_SecPLB ${LANG_ENGLISH} "A plb section."
LangString DESC_SecAPP ${LANG_ENGLISH} "A app section."

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
   !insertmacro MUI_DESCRIPTION_TEXT ${PlbSection} $(DESC_SecPLB)
   !insertmacro MUI_DESCRIPTION_TEXT ${AppSection} $(DESC_SecAPP)
!insertmacro MUI_FUNCTION_DESCRIPTION_END
