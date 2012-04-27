VERSION 5.00
Begin VB.Form frmResults 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Student Results"
   ClientHeight    =   4350
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3495
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4350
   ScaleWidth      =   3495
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdOpen 
      Caption         =   "Open"
      Height          =   495
      Left            =   780
      TabIndex        =   1
      Top             =   3360
      Width           =   855
   End
   Begin VB.FileListBox File1 
      Height          =   2040
      Hidden          =   -1  'True
      Left            =   360
      Pattern         =   "*results.txt"
      TabIndex        =   0
      Top             =   840
      Width           =   2775
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   1860
      TabIndex        =   2
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Results Available"
      Height          =   195
      Left            =   1140
      TabIndex        =   3
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "frmResults"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    frmInstructor.Show
    Unload Me
End Sub

Private Sub cmdOpen_Click()
    Shell "notepad.exe " & File1.FileName, vbNormalFocus
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frmInstructor.Show
End Sub
