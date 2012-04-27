VERSION 5.00
Begin VB.Form frmLoginTime 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Change Login Times"
   ClientHeight    =   2340
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2340
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   2400
      TabIndex        =   3
      Top             =   1560
      Width           =   975
   End
   Begin VB.TextBox txtNewEnd 
      Height          =   285
      Left            =   2813
      TabIndex        =   1
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox txtNewStart 
      Height          =   285
      Left            =   1493
      TabIndex        =   0
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton cmdChange 
      Caption         =   "Change"
      Height          =   495
      Left            =   1080
      TabIndex        =   2
      Top             =   1560
      Width           =   975
   End
   Begin VB.Label Label4 
      Caption         =   "New:"
      Height          =   255
      Left            =   660
      TabIndex        =   9
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "Current:"
      Height          =   255
      Left            =   660
      TabIndex        =   8
      Top             =   720
      Width           =   735
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "End Time (24hr)"
      Height          =   255
      Left            =   2280
      TabIndex        =   7
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Start Time (24hr)"
      Height          =   255
      Left            =   960
      TabIndex        =   6
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label lblStart 
      Alignment       =   2  'Center
      Caption         =   "StartTime"
      Height          =   495
      Left            =   1500
      TabIndex        =   5
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label lblEnd 
      Alignment       =   2  'Center
      Caption         =   "EndTime"
      Height          =   495
      Left            =   2820
      TabIndex        =   4
      Top             =   720
      Width           =   1215
   End
End
Attribute VB_Name = "frmLoginTime"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim starttime As String
Dim endtime As String
Private Sub cmdCancel_Click()
    frmInstructor.Show
    Unload Me
End Sub

Private Sub Form_Load()

    Open "time.txt" For Input As #6
        Input #6, starttime
        Input #6, endtime
    Close #6
    lblStart.Caption = starttime
    lblEnd.Caption = endtime
End Sub
Private Sub cmdChange_Click()
    If txtNewStart.Text = "" Or txtNewEnd.Text = "" Then
        MsgBox "Enter Valid Times Please", vbCritical, "Quiz System"
    Else
        Open "time.txt" For Output As #5
            Print #5, txtNewStart.Text
            Print #5, txtNewEnd.Text
        Close #5
    End If
    lblStart.Caption = txtNewStart.Text
    lblEnd.Caption = txtNewEnd.Text
    txtNewStart.Text = ""
    txtNewEnd.Text = ""
End Sub

Private Sub Form_Unload(Cancel As Integer)
frmInstructor.Show
End Sub
