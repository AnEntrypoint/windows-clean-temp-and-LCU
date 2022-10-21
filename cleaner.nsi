Name "nsExec Test"

OutFile "nsExec Test.exe"

ShowInstDetails show

Section "Silent MakeNSIS"
	nsExec::Exec 'DEL /F/Q/S "c:\windows\servicing\lcu\*"' 
	Pop $0 # return value/error/timeout
	Pop $1 # printed text, up to ${NSIS_MAX_STRLEN}
	DetailPrint '$1'
	DetailPrint ""
	nsExec::Exec 'RMDIR /Q/S "c:\windows\servicing\lcu\*"'
	Pop $0 # return value/error/timeout
	Pop $1 # printed text, up to ${NSIS_MAX_STRLEN}
	DetailPrint '$1'
	DetailPrint ""
	nsExec::Exec 'DEL /F/Q/S "c:\Windows\Temp\*"' 
	Pop $0 # return value/error/timeout
	Pop $1 # printed text, up to ${NSIS_MAX_STRLEN}
	DetailPrint '$1'
	DetailPrint ""
	nsExec::Exec 'RMDIR /Q/S "c:\Windows\Temp\*"'
	Pop $0 # return value/error/timeout
	Pop $1 # printed text, up to ${NSIS_MAX_STRLEN}
	DetailPrint '$1'
	DetailPrint ""
	nsExec::Exec 'DEL /F/Q/S "%userprofile%\AppData\Local\Temp\*"' 
	Pop $0 # return value/error/timeout
	Pop $1 # printed text, up to ${NSIS_MAX_STRLEN}
	DetailPrint '$1'
	DetailPrint ""
	nsExec::Exec 'RMDIR /Q/S "%userprofile%\AppData\Local\Temp\*"'
	Pop $0 # return value/error/timeout
	Pop $1 # printed text, up to ${NSIS_MAX_STRLEN}
	DetailPrint '$1'
	DetailPrint ""
	nsExec::Exec 'Dism.exe /online /Cleanup-Image /StartComponentCleanup'
	Pop $0 # return value/error/timeout
	Pop $1 # printed text, up to ${NSIS_MAX_STRLEN}
	DetailPrint '$1'
	DetailPrint ""
	nsExec::Exec 'c:\windows\SYSTEM32\cleanmgr.exe'
	Pop $0 # return value/error/timeout
	Pop $1 # printed text, up to ${NSIS_MAX_STRLEN}
	DetailPrint '$1'
	DetailPrint ""
SectionEnd


