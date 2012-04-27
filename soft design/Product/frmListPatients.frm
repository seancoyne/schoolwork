VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmListPatients 
   Caption         =   "BACH - Patient List"
   ClientHeight    =   5355
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   13710
   LinkTopic       =   "Form1"
   ScaleHeight     =   5355
   ScaleWidth      =   13710
   StartUpPosition =   2  'CenterScreen
   Begin MSDBGrid.DBGrid DBGrid1 
      Bindings        =   "frmListPatients.frx":0000
      Height          =   4575
      Left            =   150
      OleObjectBlob   =   "frmListPatients.frx":0014
      TabIndex        =   0
      Top             =   120
      Width           =   13335
   End
   Begin VB.Data Data1 
      Align           =   2  'Align Bottom
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "P:\school work\soft design\Product\bach.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   0
      Options         =   0
      ReadOnly        =   -1  'True
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Patient"
      Top             =   5010
      Visible         =   0   'False
      Width           =   13710
   End
End
Attribute VB_Name = "frmListPatients"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    DBGrid1.Width = (frmListPatients.Width - 500)
    DBGrid1.Height = (frmListPatients.Height - 1000)
End Sub

Private Sub Form_Resize()
    If (frmListPatients.Width - 500) > 0 Then
        DBGrid1.Width = (frmListPatients.Width - 500)
        DBGrid1.Height = (frmListPatients.Height - 1000)
    End If
End Sub
