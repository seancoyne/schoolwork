VERSION 5.00
Begin VB.Form frmViewAtt 
   Caption         =   "Attendance File Viewer"
   ClientHeight    =   7110
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   ScaleHeight     =   7110
   ScaleWidth      =   6750
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Caption         =   "Label1"
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
Private Sub Form_Load()
   'write username to attendance file
   Dim filename As String
   filename = "attendance-" + Format(Now, "m-d-yy") + ".txt"
   Const ForReading = 1
    Dim fs, f
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set f = fs.OpenTextFile(filename, ForReading, TristateFalse)
    Label1.Caption = f.readall
    f.Close
End Sub
