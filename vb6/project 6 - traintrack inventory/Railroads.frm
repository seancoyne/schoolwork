VERSION 5.00
Begin VB.Form frmRailroads 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Edit Railroad Name List"
   ClientHeight    =   2520
   ClientLeft      =   1095
   ClientTop       =   435
   ClientWidth     =   5550
   Icon            =   "Railroads.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   2520
   ScaleWidth      =   5550
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   300
      Left            =   4448
      TabIndex        =   5
      Top             =   1695
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   300
      Left            =   3008
      TabIndex        =   4
      Top             =   1695
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "&Delete"
      Height          =   300
      Left            =   1568
      TabIndex        =   3
      Top             =   1695
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add"
      Height          =   300
      Left            =   128
      TabIndex        =   2
      Top             =   1695
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
      RecordSource    =   "RailRoads"
      Top             =   2175
      Width           =   5550
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Railroads"
      DataSource      =   "Data1"
      Height          =   285
      Left            =   2040
      MaxLength       =   20
      TabIndex        =   1
      Top             =   645
      Width           =   3375
   End
   Begin VB.Label lblLabels 
      Caption         =   "Railroads:"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   660
      Width           =   1815
   End
End
Attribute VB_Name = "frmRailroads"
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


Private Sub Form_Unload(Cancel As Integer)
frmInventory.Show
End Sub
