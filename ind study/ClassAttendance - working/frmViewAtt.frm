VERSION 5.00
Begin VB.Form frmViewAtt 
   Caption         =   "Attendance File Viewer"
   ClientHeight    =   7110
   ClientLeft      =   4650
   ClientTop       =   3150
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   ScaleHeight     =   7110
   ScaleWidth      =   6750
   Begin VB.Label Label1 
      Height          =   6135
      Left            =   480
      TabIndex        =   0
      Top             =   240
      Width           =   5415
   End
End
Attribute VB_Name = "frmViewAtt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim path As String
Dim username As String


Private Sub Form_Load()
   path = Environ("HOMESHARE") & "\"
   username = Environ("USERNAME")
   'write username to attendance file
   Dim filename As String
   filename = path + username + "-" + Format(Now, "m-d-yy") + ".txt"
    If FileExists(filename) Then
       Const ForReading = 1
        Dim fs, f
        Set fs = CreateObject("Scripting.FileSystemObject")
        Set f = fs.OpenTextFile(filename, ForReading, TristateFalse)
        Label1.Caption = f.readall
        f.Close
    Else
        MsgBox "Attendance File: " + filename + " doesn't exist"
    End If
   'Label1.Caption = filename
End Sub
Function FileExists(filename As String) As Integer
    Dim f As Integer
    ' Trap any errors that may occur
    On Error Resume Next
    ' Get a free file handle to avoid using a file handle already in use
    f = FreeFile
    ' Open the file for reading
    Open filename For Input As #f
    ' Close it
    Close #f
    ' If there was an error, Err will be <> 0. In that case, we return False
    FileExists = Not (Err <> 0)
End Function
