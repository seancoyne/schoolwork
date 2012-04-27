VERSION 5.00
Begin VB.Form frmMenu 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BACH - Main Menu"
   ClientHeight    =   5190
   ClientLeft      =   6990
   ClientTop       =   4545
   ClientWidth     =   6525
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5190
   ScaleWidth      =   6525
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Broadland Area Children's Hospital"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   1417
      TabIndex        =   0
      Top             =   240
      Width           =   3690
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mntFind 
         Caption         =   "Find Patient"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu mnuAdd 
      Caption         =   "&Add/Edit"
      Begin VB.Menu mnuPatient 
         Caption         =   "Patient"
      End
      Begin VB.Menu mnuVisitor 
         Caption         =   "Visitor"
      End
   End
   Begin VB.Menu mnuReports 
      Caption         =   "&Reports"
      Begin VB.Menu mnuLP 
         Caption         =   "List Patients"
      End
      Begin VB.Menu mnuLV 
         Caption         =   "List Visitors"
      End
      Begin VB.Menu mnuLVisits 
         Caption         =   "List Visits"
      End
      Begin VB.Menu mnuNeedVisit 
         Caption         =   "List Children w/o Visitors"
      End
   End
End
Attribute VB_Name = "frmMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub mntFind_Click()
    frmFindPatient.Show
End Sub

Private Sub mnuExit_Click()
    Unload frmPatient
    Unload frmVisitor
    Unload frmVisits
    Unload Me
End Sub

Private Sub mnuLP_Click()
    frmListPatients.Show
End Sub

Private Sub mnuLV_Click()
    frmListVisitors.Show
End Sub

Private Sub mnuLVisits_Click()
    frmVisits.Show
End Sub

Private Sub mnuNeedVisit_Click()
    frmSchedVisit.Show
End Sub

Private Sub mnuPatient_Click()
    frmPatient.Show
End Sub

Private Sub mnuVisitor_Click()
    frmVisitor.Show
End Sub
