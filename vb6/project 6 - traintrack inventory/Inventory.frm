VERSION 5.00
Object = "{FAEEE763-117E-101B-8933-08002B2F4F5A}#1.1#0"; "DBLIST32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "CRYSTL32.OCX"
Begin VB.Form frmInventory 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "TrainTrack"
   ClientHeight    =   2325
   ClientLeft      =   1095
   ClientTop       =   735
   ClientWidth     =   5520
   Icon            =   "Inventory.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2325
   ScaleWidth      =   5520
   StartUpPosition =   2  'CenterScreen
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   1200
      Top             =   1080
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      PrintFileLinesPerPage=   60
   End
   Begin VB.Data Data2 
      Caption         =   "Data2"
      Connect         =   "Access"
      DatabaseName    =   "Trains.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   300
      Left            =   4080
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "select * from [Railroads] order by [railroads]"
      Top             =   1080
      Visible         =   0   'False
      Width           =   1215
   End
   Begin MSDBCtls.DBCombo DBCombo1 
      Bindings        =   "Inventory.frx":030A
      DataField       =   "RailroadName"
      DataSource      =   "Data1"
      Height          =   315
      Left            =   2040
      TabIndex        =   2
      Top             =   360
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   556
      _Version        =   393216
      ListField       =   "Railroads"
      Text            =   "DBCombo1"
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   300
      Left            =   4440
      TabIndex        =   13
      Top             =   1660
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   300
      Left            =   3000
      TabIndex        =   12
      Top             =   1660
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "&Delete"
      Height          =   300
      Left            =   1560
      TabIndex        =   11
      Top             =   1660
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add"
      Height          =   300
      Left            =   120
      TabIndex        =   10
      Top             =   1660
      Width           =   975
   End
   Begin VB.Data Data1 
      Align           =   2  'Align Bottom
      Connect         =   "Access"
      DatabaseName    =   "Trains.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "select * from [inventory] order by [stocknumber]"
      Top             =   1980
      Width           =   5520
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Value"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   4
      Left            =   2040
      TabIndex        =   9
      Top             =   1320
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Quantity"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   3
      Left            =   2040
      TabIndex        =   7
      Top             =   1000
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Description"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   2
      Left            =   2040
      MaxLength       =   25
      TabIndex        =   5
      Top             =   680
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "StockNumber"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   0
      Left            =   2040
      TabIndex        =   1
      Top             =   40
      Width           =   1935
   End
   Begin VB.Label lblLabels 
      Caption         =   "Value:"
      Height          =   255
      Index           =   4
      Left            =   120
      TabIndex        =   8
      Top             =   1340
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Quantity:"
      Height          =   255
      Index           =   3
      Left            =   120
      TabIndex        =   6
      Top             =   1020
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Description:"
      Height          =   255
      Index           =   2
      Left            =   120
      TabIndex        =   4
      Top             =   700
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "RailroadName:"
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   3
      Top             =   380
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "StockNumber:"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   60
      Width           =   1815
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "&Options"
      Begin VB.Menu mnuFind 
         Caption         =   "&Find"
      End
      Begin VB.Menu separator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuRailroads 
         Caption         =   "&Edit Railroad List"
      End
      Begin VB.Menu separator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuReport 
         Caption         =   "&Report"
      End
   End
End
Attribute VB_Name = "frmInventory"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAdd_Click()
  Data1.Recordset.AddNew
End Sub

Private Sub cmdDelete_Click()
  'this may produce an error if you delete the last
  'record or the only record in the recordset
  Data1.Recordset.Delete
  Data1.Recordset.MoveNext
End Sub

Private Sub cmdRefresh_Click()
  'this is really only needed for multi user apps
  Data1.Refresh
End Sub

Private Sub cmdUpdate_Click()
  Data1.UpdateRecord
  Data1.Recordset.Bookmark = Data1.Recordset.LastModified
  Data1.Refresh
End Sub

Private Sub cmdClose_Click()
  Unload Me
End Sub

Private Sub Data1_Error(DataErr As Integer, Response As Integer)
  'This is where you would put error handling code
  'If you want to ignore errors, comment out the next line
  'If you want to trap them, add code here to handle them
  MsgBox "Data error event hit err:" & Error$(DataErr)
  Response = 0  'throw away the error
End Sub

Private Sub Data1_Reposition()
  Screen.MousePointer = vbDefault
  On Error Resume Next
  'This will display the current record position
  'for dynasets and snapshots
  Data1.Caption = "Record: " & (Data1.Recordset.AbsolutePosition + 1)
  'for the table object you must set the index property when
  'the recordset gets created and use the following line
  'Data1.Caption = "Record: " & (Data1.Recordset.RecordCount * (Data1.Recordset.PercentPosition * 0.01)) + 1
  DBCombo1.SelLength = 0
End Sub

Private Sub Data1_Validate(Action As Integer, Save As Integer)
  'This is where you put validation code
  'This event gets called when the following actions occur
  Select Case Action
    Case vbDataActionMoveFirst
    Case vbDataActionMovePrevious
    Case vbDataActionMoveNext
    Case vbDataActionMoveLast
    Case vbDataActionAddNew
    Case vbDataActionUpdate
    Case vbDataActionDelete
    Case vbDataActionFind
    Case vbDataActionBookmark
    Case vbDataActionClose
  End Select
  Screen.MousePointer = vbHourglass
End Sub

Private Sub Form_Activate()
Data2.Refresh
Data1_Reposition
End Sub

Private Sub mnuFind_Click()
stocknum = InputBox("Enter Stock Number", "Find")
If stocknum <> "" Then
    SearchString = "StockNumber = " & Val(stocknum)
    Data1.Recordset.FindFirst SearchString
    If Data1.Recordset.NoMatch = True Then
        MsgBox "No Matching Record", 0, "Find"
    End If
End If

End Sub

Private Sub mnuRailroads_Click()
frmRailroads.Left = frmInventory.Left
frmRailroads.Top = frmInventory.Top
frmRailroads.Show
frmInventory.Hide

End Sub

Private Sub mnuReport_Click()
CrystalReport1.WindowTitle = "TrainTrack Inventory by Railroad"
CrystalReport1.ReportFileName = "inventory.rpt"
CrystalReport1.DiscardSavedData = True
CrystalReport1.Action = 1
End Sub
