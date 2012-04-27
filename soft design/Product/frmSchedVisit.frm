VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmSchedVisit 
   Caption         =   "BACH - Schedule Visits"
   ClientHeight    =   6645
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10230
   LinkTopic       =   "Form1"
   ScaleHeight     =   6645
   ScaleWidth      =   10230
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   300
      Left            =   6788
      TabIndex        =   14
      Top             =   5145
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   300
      Left            =   5708
      TabIndex        =   13
      Top             =   5145
      Width           =   975
   End
   Begin VB.CommandButton cmdRefresh 
      Caption         =   "&Refresh"
      Height          =   300
      Left            =   4628
      TabIndex        =   12
      Top             =   5145
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "&Delete"
      Height          =   300
      Left            =   3548
      TabIndex        =   11
      Top             =   5145
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add"
      Height          =   300
      Left            =   2468
      TabIndex        =   10
      Top             =   5145
      Width           =   975
   End
   Begin VB.Data Data3 
      Align           =   2  'Align Bottom
      Caption         =   "Data 3"
      Connect         =   "Access"
      DatabaseName    =   "P:\school work\soft design\Product\bach.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Visits"
      Top             =   6300
      Width           =   10230
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "Want Visit Again"
      DataSource      =   "Data1"
      Height          =   285
      Left            =   4388
      TabIndex        =   9
      Top             =   4800
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Visitor Number"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   2
      Left            =   4388
      MaxLength       =   11
      TabIndex        =   7
      Top             =   4485
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Patient Number"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   1
      Left            =   4388
      MaxLength       =   11
      TabIndex        =   5
      Top             =   4155
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Date"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   0
      Left            =   4388
      TabIndex        =   3
      Top             =   3840
      Width           =   1935
   End
   Begin MSDBGrid.DBGrid DBGrid2 
      Bindings        =   "frmSchedVisit.frx":0000
      Height          =   2655
      Left            =   5280
      OleObjectBlob   =   "frmSchedVisit.frx":0014
      TabIndex        =   1
      Top             =   120
      Width           =   4815
   End
   Begin MSDBGrid.DBGrid DBGrid1 
      Bindings        =   "frmSchedVisit.frx":0A07
      Height          =   2655
      Left            =   120
      OleObjectBlob   =   "frmSchedVisit.frx":0A1B
      TabIndex        =   0
      Top             =   120
      Width           =   5055
   End
   Begin VB.Data Data2 
      Align           =   2  'Align Bottom
      Caption         =   "Data2"
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
      RecordSource    =   "qryNeedChild"
      Top             =   5580
      Visible         =   0   'False
      Width           =   10230
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
      ReadOnly        =   -1  'True
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "qryNeedVisit"
      Top             =   5925
      Visible         =   0   'False
      Width           =   10230
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Create new visits here.  Be sure to update patient and visitor data to account for the visit."
      Height          =   195
      Left            =   1980
      TabIndex        =   15
      Top             =   3480
      Width           =   6270
   End
   Begin VB.Label lblLabels 
      Caption         =   "Want Visit Again:"
      Height          =   255
      Index           =   3
      Left            =   2475
      TabIndex        =   8
      Top             =   4815
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Visitor Number:"
      Height          =   255
      Index           =   2
      Left            =   2475
      TabIndex        =   6
      Top             =   4500
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Patient Number:"
      Height          =   255
      Index           =   1
      Left            =   2475
      TabIndex        =   4
      Top             =   4185
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Date:"
      Height          =   255
      Index           =   0
      Left            =   2475
      TabIndex        =   2
      Top             =   3855
      Width           =   1815
   End
End
Attribute VB_Name = "frmSchedVisit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAdd_Click()
  Data3.Recordset.AddNew
End Sub

Private Sub cmdDelete_Click()
  'this may produce an error if you delete the last
  'record or the only record in the recordset
  Data3.Recordset.Delete
  Data3.Recordset.MoveNext
End Sub

Private Sub cmdRefresh_Click()
  'this is really only needed for multi user apps
  Data3.Refresh
End Sub

Private Sub cmdUpdate_Click()
  Data3.UpdateRecord
  Data3.Recordset.Bookmark = Data3.Recordset.LastModified
End Sub

Private Sub cmdClose_Click()
  Unload Me
End Sub

Private Sub Data3_Error(DataErr As Integer, Response As Integer)
  'This is where you would put error handling code
  'If you want to ignore errors, comment out the next line
  'If you want to trap them, add code here to handle them
  MsgBox "Data error event hit err:" & Error$(DataErr)
  Response = 0  'throw away the error
End Sub

Private Sub Data3_Reposition()
  Screen.MousePointer = vbDefault
  On Error Resume Next
  'This will display the current record position
  'for dynasets and snapshots
  Data3.Caption = "Record: " & (Data3.Recordset.AbsolutePosition + 1)
  'for the table object you must set the index property when
  'the recordset gets created and use the following line
  'Data3.Caption = "Record: " & (Data3.Recordset.RecordCount * (Data3.Recordset.PercentPosition * 0.01)) + 1
End Sub

Private Sub Data3_Validate(Action As Integer, Save As Integer)
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
End Sub

