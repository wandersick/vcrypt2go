/*
 * * * Compile_AHK SETTINGS BEGIN * * *

[AHK2EXE]
Exe_File=%In_Dir%\.Lock.exe
Execution_Level=3
[VERSION]
Set_Version_Info=1
Company_Name=a wandersick
File_Description=Close Protected Drive
File_Version=0.0.0.1
Inc_File_Version=0
Internal_Name=Lock
Legal_Copyright=Copyright (c) 2012-2018 a wandersick production (http://wandersick.blogspot.com)
Original_Filename=Lock
Product_Name=Lock
Product_Version=0.0.0.1
[ICONS]
Icon_1=%In_Dir%\Lock.ico

* * * Compile_AHK SETTINGS END * * *
*/

; ** For UAC to elevate properly, use HighestAvailable (Execution_Level=3) **

; Part of vCrypt2Go Lock-and-Unlock Utilities by wandersick
; Script filename: .Lock.ahk
; Output filename: .Lock.exe
; Description: Run to lock drive on Windows for VeraCrypt containers and partitions
; Version: 0.1
; Date: 17-Feb-2018
; Language: AutoHotkey

; VeraCrypt Portable requires either admin rights or an installed copy of VeraCrypt 1.21 or above for standard users.

; If admin right is unavailable, VeraCrypt Portable would not be run, so it checks for an installed VeraCrypt program or driver.
; If one is found, it will run VeraCrypt Portable; if not found, it prompts VeraCrypt setup with Windows Explorer.

; (Note that for Mac, VeraCrypt Portable would not work. An installed copy must be available.)

#NoTrayIcon

If A_IsAdmin
{
	Run, "%A_ScriptDir%\.DO_NOT_DELETE\vc.exe" /d /f /q, %A_ScriptDir%, min
	ExitApp
}

If ProgramW6432
	Gosub, x64
Else
	Gosub, x86
	
ExitApp

x64:
RegRead, ProgramVersion, HKEY_LOCAL_MACHINE, software\wow6432node\microsoft\windows\currentversion\uninstall\veracrypt, DisplayVersion
If (ProgramVersion > 1.1)
{
	Run, "%A_ScriptDir%\.DO_NOT_DELETE\vc.exe" /d /f /q, %A_ScriptDir%, min
}
Else
{
	MsgBox, VeraCrypt not installed or version too old. Please install it first.
	Run, %Windir%\explorer.exe "%A_ScriptDir%\.DO_NOT_DELETE\VeraCrypt for Windows"
}
return

x86:
RegRead, ProgramVersion, HKEY_LOCAL_MACHINE, software\microsoft\windows\currentversion\uninstall\veracrypt, DisplayVersion
If (ProgramVersion > 1.1)
{
	Run, "%A_ScriptDir%\.DO_NOT_DELETE\vc.exe" /d /f /q, %A_ScriptDir%, min
}
Else
{
	MsgBox, VeraCrypt not installed or version too old. Please install it first.
	Run, %Windir%\explorer.exe "%A_ScriptDir%\.DO_NOT_DELETE\VeraCrypt for Windows"
}
return
