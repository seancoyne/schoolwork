VERSION 5.00
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "CRYSTL32.OCX"
Begin VB.Form frmParents 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Night and Day Child Care"
   ClientHeight    =   2805
   ClientLeft      =   7050
   ClientTop       =   5940
   ClientWidth     =   6540
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   2805
   ScaleWidth      =   6540
   StartUpPosition =   2  'CenterScreen
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   2280
      Top             =   960
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   300
      Left            =   4943
      TabIndex        =   13
      Top             =   2100
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   300
      Left            =   3503
      TabIndex        =   12
      Top             =   2100
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "&Delete"
      Height          =   300
      Left            =   2063
      TabIndex        =   11
      Top             =   2100
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add"
      Height          =   300
      Left            =   623
      TabIndex        =   10
      Top             =   2100
      Width           =   975
   End
   Begin VB.Data Data1 
      Align           =   2  'Align Bottom
      Connect         =   "Access 2000;"
      DatabaseName    =   "\\nickel4242\vb6\project 6 - traintrack inventory\cases and places 7 - night and day child care\nightday.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Parents"
      Top             =   2460
      Width           =   6540
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Work Phone"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   4
      Left            =   3023
      MaxLength       =   10
      TabIndex        =   9
      Top             =   1320
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Home Phone"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   3
      Left            =   3023
      MaxLength       =   10
      TabIndex        =   7
      Top             =   1000
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Home Address"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   2
      Left            =   3023
      MaxLength       =   50
      TabIndex        =   5
      Top             =   680
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Name"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   1
      Left            =   3023
      MaxLength       =   50
      TabIndex        =   3
      Top             =   360
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Parent Identification Number"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   0
      Left            =   3023
      TabIndex        =   1
      Top             =   40
      Width           =   1935
   End
   Begin VB.Label lblLabels 
      Caption         =   "Work Phone:"
      Height          =   255
      Index           =   4
      Left            =   143
      TabIndex        =   8
      Top             =   1335
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Home Phone:"
      Height          =   255
      Index           =   3
      Left            =   143
      TabIndex        =   6
      Top             =   1015
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Home Address:"
      Height          =   255
      Index           =   2
      Left            =   143
      TabIndex        =   4
      Top             =   695
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Name:"
      Height          =   255
      Index           =   1
      Left            =   143
      TabIndex        =   2
      Top             =   375
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Parent Identification Number:"
      Height          =   255
      Index           =   0
      Left            =   143
      TabIndex        =   0
      Top             =   55
      Width           =   2295
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "&Options"
      Begin VB.Menu mnuFind 
         Caption         =   "&Find"
      End
      Begin VB.Menu separator3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuChild 
         Caption         =   "&Edit Child Information"
      End
      Begin VB.Menu separator4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuLabel 
         Caption         =   "&Create Mailing Label"
      End
   End
End
Attribute VB_Name = "frmParents"
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
Private Sub mnuChild_Click()
    frmParents.Hide
    frmChild.Show
End Sub
Private Sub mnuFind_Click()
    SearchName = InputBox("Enter Name", "Find")
    If SearchName <> "" Then
        SearchString = "Name = " & SearchName
        Data1.Recordset.FindFirst SearchString
        If Data1.Recordset.NoMatch = True Then
            MsgBox "No Matching Record", 0, "Find"
        End If
    End If
End Sub
Private Sub mnuLabel_Click()
    CrystalReport1.WindowTitle = "Parent Mailing Label"
    CrystalReport1.ReportFileName = "D:\vb6\project 6 - traintrack inventory\cases and places 7 - night and day child care\parentlabel.rpt"
    CrystalReport1.Action = 1
End Sub


