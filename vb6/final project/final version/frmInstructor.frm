VERSION 5.00
Begin VB.Form frmInstructor 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Quiz System"
   ClientHeight    =   3060
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   5970
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3060
   ScaleWidth      =   5970
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdHelp 
      Caption         =   "Help"
      Height          =   735
      Left            =   3848
      TabIndex        =   5
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton cmdView 
      Caption         =   "View Results"
      Height          =   735
      Left            =   3848
      TabIndex        =   2
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton cmdDelQues 
      Caption         =   "Delete Question"
      Height          =   735
      Left            =   788
      TabIndex        =   3
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton cmdAddUser 
      Caption         =   "Add User"
      Height          =   735
      Left            =   2348
      TabIndex        =   4
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton cmdAddQues 
      Caption         =   "Add Question"
      Height          =   735
      Left            =   788
      TabIndex        =   0
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton cmdLoginTimes 
      Caption         =   "Change Valid Login Times"
      Height          =   735
      Left            =   2348
      TabIndex        =   1
      Top             =   960
      Width           =   1335
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Quiz System Administration"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   638
      TabIndex        =   6
      Top             =   120
      Width           =   4695
   End
   Begin VB.Menu mnuTools 
      Caption         =   "&Tools"
      Begin VB.Menu mnuAddQuestion 
         Caption         =   "Add &Question"
      End
      Begin VB.Menu mnuDelQues 
         Caption         =   "&Delete Question"
      End
      Begin VB.Menu mnuAddUser 
         Caption         =   "Add &User"
      End
      Begin VB.Menu mnuLoginTimes 
         Caption         =   "&Change Valid Login Times"
      End
      Begin VB.Menu mnuResults 
         Caption         =   "&View Results"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
   End
End
Attribute VB_Name = "frmInstructor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAddQues_Click()
    Me.Hide
    Load frmAddQues
    frmAddQues.Show
End Sub

Private Sub cmdAddUser_Click()
    Me.Hide
    Load frmAddUser
    frmAddUser.Show
End Sub

Private Sub cmdDelQues_Click()
    Me.Hide
    Load frmDelQues
    frmDelQues.Show
End Sub

Private Sub cmdHelp_Click()
    Load frmHelp
    frmHelp.Show
End Sub

Private Sub cmdLoginTimes_Click()
    Me.Hide
    Load frmLoginTime
    frmLoginTime.Show
End Sub

Private Sub cmdView_Click()
    Me.Hide
    Load frmResults
    frmResults.Show
End Sub

Private Sub mnuAddQuestion_Click()
    cmdAddQues_Click
End Sub

Private Sub mnuAddUser_Click()
    cmdAddUser_Click
End Sub

Private Sub mnuDelQues_Click()
    cmdDelQues_Click
End Sub

Private Sub mnuHelp_Click()
    Load frmHelp
    frmHelp.Show
End Sub

Private Sub mnuLoginTimes_Click()
    cmdLoginTimes_Click
End Sub

Private Sub mnuResults_Click()
    cmdView_Click
End Sub
