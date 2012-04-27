VERSION 5.00
Begin VB.Form frmPatient 
   Caption         =   "BACH - Patient"
   ClientHeight    =   7965
   ClientLeft      =   1110
   ClientTop       =   450
   ClientWidth     =   5520
   LinkTopic       =   "Form2"
   ScaleHeight     =   7965
   ScaleWidth      =   5520
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   300
      Left            =   4440
      TabIndex        =   50
      Top             =   7420
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   300
      Left            =   3360
      TabIndex        =   49
      Top             =   7420
      Width           =   975
   End
   Begin VB.CommandButton cmdRefresh 
      Caption         =   "&Refresh"
      Height          =   300
      Left            =   2280
      TabIndex        =   48
      Top             =   7420
      Width           =   975
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "&Delete"
      Height          =   300
      Left            =   1200
      TabIndex        =   47
      Top             =   7420
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add"
      Height          =   300
      Left            =   120
      TabIndex        =   46
      Top             =   7420
      Width           =   975
   End
   Begin VB.Data Data1 
      Align           =   2  'Align Bottom
      Connect         =   ""
      DatabaseName    =   "D:\school work\soft design\Product\bach.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   300
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Patient"
      Top             =   7665
      Width           =   5520
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Patient Number"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   18
      Left            =   2040
      TabIndex        =   45
      Top             =   7080
      Width           =   1935
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "JC"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   3
      Left            =   2040
      TabIndex        =   43
      Top             =   6760
      Width           =   3375
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "WF"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   2
      Left            =   2040
      TabIndex        =   41
      Top             =   6440
      Width           =   3375
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "JCF"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   1
      Left            =   2040
      TabIndex        =   39
      Top             =   6120
      Width           =   3375
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "Within 500 Miles"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   0
      Left            =   2040
      TabIndex        =   37
      Top             =   5800
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Guardian Relation"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   17
      Left            =   2040
      MaxLength       =   13
      TabIndex        =   35
      Top             =   5480
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Guardian_NM"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   16
      Left            =   2040
      MaxLength       =   31
      TabIndex        =   33
      Top             =   5160
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Primary Nurse"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   15
      Left            =   2040
      MaxLength       =   31
      TabIndex        =   31
      Top             =   4840
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Primary Physician"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   14
      Left            =   2040
      MaxLength       =   31
      TabIndex        =   29
      Top             =   4520
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Location"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   13
      Left            =   2040
      MaxLength       =   6
      TabIndex        =   27
      Top             =   4200
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Release_DT"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   12
      Left            =   2040
      TabIndex        =   25
      Top             =   3880
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Arrival_DT"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   11
      Left            =   2040
      TabIndex        =   23
      Top             =   3560
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Phone Number"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   10
      Left            =   2040
      MaxLength       =   22
      TabIndex        =   21
      Top             =   3240
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Country"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   9
      Left            =   2040
      MaxLength       =   20
      TabIndex        =   19
      Top             =   2920
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Zip Code"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   8
      Left            =   2040
      MaxLength       =   10
      TabIndex        =   17
      Top             =   2600
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "State"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   7
      Left            =   2040
      MaxLength       =   2
      TabIndex        =   15
      Top             =   2280
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "City"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   6
      Left            =   2040
      MaxLength       =   14
      TabIndex        =   13
      Top             =   1960
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Second Line Address"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   5
      Left            =   2040
      MaxLength       =   25
      TabIndex        =   11
      Top             =   1640
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Address"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   4
      Left            =   2040
      MaxLength       =   25
      TabIndex        =   9
      Top             =   1320
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Suffix"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   3
      Left            =   2040
      MaxLength       =   5
      TabIndex        =   7
      Top             =   1000
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Last_NM"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   2
      Left            =   2040
      MaxLength       =   15
      TabIndex        =   5
      Top             =   680
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Middle_IN"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   1
      Left            =   2040
      MaxLength       =   1
      TabIndex        =   3
      Top             =   360
      Width           =   3375
   End
   Begin VB.TextBox txtFields 
      DataField       =   "First_NM"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   0
      Left            =   2040
      MaxLength       =   15
      TabIndex        =   1
      Top             =   40
      Width           =   3375
   End
   Begin VB.Label lblLabels 
      Caption         =   "Patient Number:"
      Height          =   255
      Index           =   22
      Left            =   120
      TabIndex        =   44
      Top             =   7100
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "JC:"
      Height          =   255
      Index           =   21
      Left            =   120
      TabIndex        =   42
      Top             =   6780
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "WF:"
      Height          =   255
      Index           =   20
      Left            =   120
      TabIndex        =   40
      Top             =   6460
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "JCF:"
      Height          =   255
      Index           =   19
      Left            =   120
      TabIndex        =   38
      Top             =   6140
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Within 500 Miles:"
      Height          =   255
      Index           =   18
      Left            =   120
      TabIndex        =   36
      Top             =   5820
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Guardian Relation:"
      Height          =   255
      Index           =   17
      Left            =   120
      TabIndex        =   34
      Top             =   5500
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Guardian_NM:"
      Height          =   255
      Index           =   16
      Left            =   120
      TabIndex        =   32
      Top             =   5180
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Primary Nurse:"
      Height          =   255
      Index           =   15
      Left            =   120
      TabIndex        =   30
      Top             =   4860
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Primary Physician:"
      Height          =   255
      Index           =   14
      Left            =   120
      TabIndex        =   28
      Top             =   4540
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Location:"
      Height          =   255
      Index           =   13
      Left            =   120
      TabIndex        =   26
      Top             =   4220
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Release_DT:"
      Height          =   255
      Index           =   12
      Left            =   120
      TabIndex        =   24
      Top             =   3900
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Arrival_DT:"
      Height          =   255
      Index           =   11
      Left            =   120
      TabIndex        =   22
      Top             =   3580
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Phone Number:"
      Height          =   255
      Index           =   10
      Left            =   120
      TabIndex        =   20
      Top             =   3260
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Country:"
      Height          =   255
      Index           =   9
      Left            =   120
      TabIndex        =   18
      Top             =   2940
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Zip Code:"
      Height          =   255
      Index           =   8
      Left            =   120
      TabIndex        =   16
      Top             =   2620
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "State:"
      Height          =   255
      Index           =   7
      Left            =   120
      TabIndex        =   14
      Top             =   2300
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "City:"
      Height          =   255
      Index           =   6
      Left            =   120
      TabIndex        =   12
      Top             =   1980
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Second Line Address:"
      Height          =   255
      Index           =   5
      Left            =   120
      TabIndex        =   10
      Top             =   1660
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Address:"
      Height          =   255
      Index           =   4
      Left            =   120
      TabIndex        =   8
      Top             =   1340
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Suffix:"
      Height          =   255
      Index           =   3
      Left            =   120
      TabIndex        =   6
      Top             =   1020
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Last_NM:"
      Height          =   255
      Index           =   2
      Left            =   120
      TabIndex        =   4
      Top             =   700
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "Middle_IN:"
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   2
      Top             =   380
      Width           =   1815
   End
   Begin VB.Label lblLabels 
      Caption         =   "First_NM:"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   60
      Width           =   1815
   End
End
Attribute VB_Name = "frmPatient"
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

