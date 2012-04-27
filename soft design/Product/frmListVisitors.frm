VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmListVisitors 
   Caption         =   "BACH - Visitor List"
   ClientHeight    =   4995
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8250
   LinkTopic       =   "Form1"
   ScaleHeight     =   4995
   ScaleWidth      =   8250
   StartUpPosition =   2  'CenterScreen
   Begin MSDBGrid.DBGrid DBGrid1 
      Bindings        =   "frmListVisitors.frx":0000
      Height          =   4455
      Left            =   120
      OleObjectBlob   =   "frmListVisitors.frx":0014
      TabIndex        =   0
      Top             =   120
      Width           =   8055
   End
   Begin VB.Data Data1 
      Align           =   2  'Align Bottom
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "P:\school work\soft design\Product\bach.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   375
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Visitor"
      Top             =   4620
      Visible         =   0   'False
      Width           =   8250
   End
End
Attribute VB_Name = "frmListVisitors"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    DBGrid1.Width = (frmListVisitors.Width - 500)
    DBGrid1.Height = (frmListVisitors.Height - 2000)
End Sub

Private Sub Form_Resize()
    If (frmListVisitors.Width - 500) > 0 Then
        DBGrid1.Width = (frmListVisitors.Width - 500)
        DBGrid1.Height = (frmListVisitors.Height - 2000)
    End If
End Sub
