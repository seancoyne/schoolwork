VERSION 5.00
Begin VB.Form frmCustomers 
   Caption         =   "Customers"
   ClientHeight    =   5205
   ClientLeft      =   7380
   ClientTop       =   4425
   ClientWidth     =   4455
   Icon            =   "customers.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5205
   ScaleWidth      =   4455
   StartUpPosition =   2  'CenterScreen
   Begin VB.Data Data1 
      Align           =   2  'Align Bottom
      Connect         =   "Access"
      DatabaseName    =   "C:\Program Files\Microsoft Visual Studio\VB98\NWIND.MDB"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Customers"
      Top             =   4860
      Visible         =   0   'False
      Width           =   4455
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "Customers"
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
      Left            =   1635
      TabIndex        =   22
      Top             =   120
      Width           =   1185
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Fax"
      DataField       =   "Fax"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   21
      Left            =   1680
      TabIndex        =   21
      Top             =   4275
      Width           =   2535
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Phone"
      DataField       =   "Phone"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   20
      Left            =   1680
      TabIndex        =   20
      Top             =   3915
      Width           =   2535
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Fax"
      Height          =   195
      Index           =   10
      Left            =   240
      TabIndex        =   19
      Top             =   4275
      Width           =   255
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Phone"
      Height          =   195
      Index           =   9
      Left            =   240
      TabIndex        =   18
      Top             =   3915
      Width           =   465
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Country"
      Height          =   195
      Index           =   8
      Left            =   240
      TabIndex        =   17
      Top             =   3555
      Width           =   540
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Country"
      DataField       =   "Country"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   19
      Left            =   1680
      TabIndex        =   16
      Top             =   3555
      Width           =   2535
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Postal Code"
      DataField       =   "PostalCode"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   18
      Left            =   1680
      TabIndex        =   15
      Top             =   3195
      Width           =   2505
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Postal Code"
      Height          =   195
      Index           =   7
      Left            =   240
      TabIndex        =   14
      Top             =   3195
      Width           =   855
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Region"
      Height          =   195
      Index           =   6
      Left            =   240
      TabIndex        =   13
      Top             =   2835
      Width           =   510
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Region"
      DataField       =   "Region"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   17
      Left            =   1680
      TabIndex        =   12
      Top             =   2835
      Width           =   2500
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "City"
      Height          =   195
      Index           =   5
      Left            =   240
      TabIndex        =   11
      Top             =   2475
      Width           =   255
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "City"
      DataField       =   "City"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   16
      Left            =   1680
      TabIndex        =   10
      Top             =   2475
      Width           =   2500
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Address"
      Height          =   195
      Index           =   4
      Left            =   240
      TabIndex        =   9
      Top             =   2115
      Width           =   570
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Address"
      DataField       =   "Address"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   15
      Left            =   1680
      TabIndex        =   8
      Top             =   2115
      Width           =   2500
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Contact Title"
      Height          =   195
      Index           =   3
      Left            =   240
      TabIndex        =   7
      Top             =   1755
      Width           =   900
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Contact Name"
      Height          =   195
      Index           =   2
      Left            =   240
      TabIndex        =   6
      Top             =   1395
      Width           =   1020
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Contact Title"
      DataField       =   "ContactTitle"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   14
      Left            =   1680
      TabIndex        =   5
      Top             =   1755
      Width           =   2500
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Contact Name"
      DataField       =   "ContactName"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   13
      Left            =   1680
      TabIndex        =   4
      Top             =   1395
      Width           =   2500
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Company Name"
      Height          =   195
      Index           =   1
      Left            =   240
      TabIndex        =   3
      Top             =   1035
      Width           =   1125
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Company Name"
      DataField       =   "CompanyName"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   12
      Left            =   1680
      TabIndex        =   2
      Top             =   1035
      Width           =   2500
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Customer ID"
      Height          =   195
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   675
      Width           =   870
   End
   Begin VB.Label Label 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Customer ID"
      DataField       =   "CustomerID"
      DataSource      =   "Data1"
      Height          =   255
      Index           =   11
      Left            =   1680
      TabIndex        =   0
      Top             =   675
      Width           =   2500
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuSelect 
      Caption         =   "&Select"
      Begin VB.Menu mnuNext 
         Caption         =   "&Next"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuPrev 
         Caption         =   "&Previous"
         Shortcut        =   ^P
      End
      Begin VB.Menu Separator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFirst 
         Caption         =   "&First"
         Shortcut        =   ^F
      End
      Begin VB.Menu mnuLast 
         Caption         =   "&Last"
         Shortcut        =   ^L
      End
   End
   Begin VB.Menu mnuFont 
      Caption         =   "&Font"
      Begin VB.Menu mnuBold 
         Caption         =   "&Bold"
         Shortcut        =   ^B
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "&View"
      Begin VB.Menu mnuViewAll 
         Caption         =   "View All"
      End
      Begin VB.Menu mnuHide 
         Caption         =   "Hide All"
      End
      Begin VB.Menu Separator 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCustID 
         Caption         =   "Customer ID"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuCompNM 
         Caption         =   "Company Name"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuContNM 
         Caption         =   "Contact Name"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuContTitle 
         Caption         =   "Contact Title"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuAddress 
         Caption         =   "Address"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuCity 
         Caption         =   "City"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuRegion 
         Caption         =   "Region"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuPostalCode 
         Caption         =   "Postal Code"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuCountry 
         Caption         =   "Country"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuPhone 
         Caption         =   "Phone"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuFax 
         Caption         =   "Fax"
         Checked         =   -1  'True
      End
   End
End
Attribute VB_Name = "frmCustomers"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub mnuAddress_Click()
    toggle_view mnuAddress, 15
End Sub

Private Sub mnuBold_Click()
If Label(0).FontBold = False Then
    For x = 0 To 21
        Label(x).FontBold = True
    Next
    mnuBold.Checked = True
Else
    For x = 0 To 21
        Label(x).FontBold = False
    Next
    mnuBold.Checked = False
End If
End Sub

Private Sub mnuCity_Click()
    toggle_view mnuCity, 16
End Sub

Private Sub mnuCompNM_Click()
    toggle_view mnuCompNM, 12
End Sub

Private Sub mnuContNM_Click()
    toggle_view mnuContNM, 13
End Sub

Private Sub mnuContTitle_Click()
    toggle_view mnuContTitle, 14
End Sub

Private Sub mnuCountry_Click()
    toggle_view mnuCountry, 19
End Sub

Private Sub mnuCustID_Click()
    toggle_view mnuCustID, 11
End Sub

Private Sub mnuExit_Click()
End
End Sub

Private Sub mnuFax_Click()
    toggle_view mnuFax, 21
End Sub

Private Sub mnuFirst_Click()
    Data1.Recordset.MoveFirst
End Sub

Private Sub mnuHide_Click()
    For x = 0 To 21
        Label(x).Visible = False
    Next
End Sub

Private Sub mnuLast_Click()
    Data1.Recordset.MoveLast
End Sub

Private Sub mnuNext_Click()
Data1.Recordset.MoveNext
If Data1.Recordset.EOF = True Then Data1.Recordset.MoveFirst
End Sub

Private Sub mnuPhone_Click()
    toggle_view mnuPhone, 20
End Sub

Private Sub mnuPostalCode_Click()
    toggle_view mnuPostalCode, 18
End Sub

Private Sub mnuPrev_Click()
Data1.Recordset.MovePrevious
If Data1.Recordset.BOF = True Then Data1.Recordset.MoveLast
End Sub
Public Sub toggle_view(ControlName As Control, Index As Integer)
    If ControlName.Checked = False Then
        ControlName.Checked = True
        Label(Index).Visible = True
        Label(Index - 11).Visible = True
    Else
        ControlName.Checked = False
        Label(Index).Visible = False
        Label(Index - 11).Visible = False
    End If
End Sub

Private Sub mnuRegion_Click()
    toggle_view mnuRegion, 17
End Sub

Private Sub mnuViewAll_Click()
    For x = 0 To 21
        Label(x).Visible = True
    Next
End Sub
