VERSION 5.00
Begin VB.Form frmFindPatient 
   Caption         =   "BACH - Find Patient"
   ClientHeight    =   7575
   ClientLeft      =   1110
   ClientTop       =   450
   ClientWidth     =   5625
   LinkTopic       =   "Form1"
   ScaleHeight     =   7575
   ScaleWidth      =   5625
   Begin VB.TextBox txtFields 
      DataField       =   "Phone Number"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   10
      Left            =   2205
      MaxLength       =   22
      TabIndex        =   47
      Top             =   3120
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Arrival_DT"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   11
      Left            =   2205
      TabIndex        =   46
      Top             =   3435
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Release_DT"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   12
      Left            =   2205
      TabIndex        =   45
      Top             =   3750
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Location"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   13
      Left            =   2205
      MaxLength       =   6
      TabIndex        =   44
      Top             =   4065
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Primary Physician"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   14
      Left            =   2205
      MaxLength       =   31
      TabIndex        =   43
      Top             =   4380
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Primary Nurse"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   15
      Left            =   2205
      MaxLength       =   31
      TabIndex        =   42
      Top             =   4695
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Guardian_NM"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   16
      Left            =   2205
      MaxLength       =   31
      TabIndex        =   41
      Top             =   5010
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Guardian Relation"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   17
      Left            =   2205
      MaxLength       =   13
      TabIndex        =   40
      Top             =   5325
      Width           =   1935
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Patient Number"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   18
      Left            =   2205
      TabIndex        =   39
      Top             =   5640
      Width           =   1935
   End
   Begin VB.CommandButton cmdFindPatient 
      Caption         =   "Find Patient"
      Height          =   495
      Left            =   2205
      TabIndex        =   38
      Top             =   120
      Width           =   1215
   End
   Begin VB.Data Data1 
      Align           =   2  'Align Bottom
      Caption         =   "Click Here to Scroll Patients"
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
      RecordSource    =   "Patient"
      Top             =   7230
      Width           =   5625
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "Visitor"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   4
      Left            =   885
      TabIndex        =   37
      Top             =   6675
      Width           =   255
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "JC"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   3
      Left            =   2085
      TabIndex        =   34
      Top             =   6360
      Width           =   255
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "WF"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   2
      Left            =   1365
      TabIndex        =   32
      Top             =   6360
      Width           =   255
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "JCF"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   1
      Left            =   645
      TabIndex        =   30
      Top             =   6360
      Width           =   255
   End
   Begin VB.CheckBox chkFields 
      DataField       =   "Within 500 Miles"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   0
      Left            =   2205
      TabIndex        =   28
      Top             =   6045
      Width           =   255
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Country"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   9
      Left            =   3285
      MaxLength       =   20
      TabIndex        =   18
      Top             =   2640
      Width           =   855
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Zip Code"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   8
      Left            =   1245
      MaxLength       =   10
      TabIndex        =   16
      Top             =   2640
      Width           =   1215
   End
   Begin VB.TextBox txtFields 
      DataField       =   "State"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   7
      Left            =   3285
      MaxLength       =   2
      TabIndex        =   14
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox txtFields 
      DataField       =   "City"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   6
      Left            =   1245
      MaxLength       =   14
      TabIndex        =   12
      Top             =   2280
      Width           =   1215
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Second Line Address"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   5
      Left            =   1245
      MaxLength       =   25
      TabIndex        =   10
      Top             =   1920
      Width           =   2175
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Address"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   4
      Left            =   1245
      MaxLength       =   25
      TabIndex        =   9
      Top             =   1560
      Width           =   2175
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Suffix"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   3
      Left            =   4605
      MaxLength       =   5
      TabIndex        =   7
      Top             =   1200
      Width           =   735
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Last_NM"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   2
      Left            =   1245
      MaxLength       =   15
      TabIndex        =   5
      Top             =   1200
      Width           =   2175
   End
   Begin VB.TextBox txtFields 
      DataField       =   "Middle_IN"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   1
      Left            =   4605
      MaxLength       =   1
      TabIndex        =   3
      Top             =   855
      Width           =   735
   End
   Begin VB.TextBox txtFields 
      DataField       =   "First_NM"
      DataSource      =   "Data1"
      Height          =   285
      Index           =   0
      Left            =   1245
      MaxLength       =   15
      TabIndex        =   1
      Top             =   855
      Width           =   2175
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Visitor:"
      Height          =   195
      Index           =   23
      Left            =   285
      TabIndex        =   36
      Top             =   6720
      Width           =   465
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Patient Number:"
      Height          =   195
      Index           =   22
      Left            =   285
      TabIndex        =   35
      Top             =   5685
      Width           =   1140
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "JC:"
      Height          =   195
      Index           =   21
      Left            =   1725
      TabIndex        =   33
      Top             =   6405
      Width           =   225
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "WF:"
      Height          =   195
      Index           =   20
      Left            =   1005
      TabIndex        =   31
      Top             =   6405
      Width           =   300
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "JCF:"
      Height          =   195
      Index           =   19
      Left            =   285
      TabIndex        =   29
      Top             =   6405
      Width           =   315
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Within 500 Miles:"
      Height          =   195
      Index           =   18
      Left            =   285
      TabIndex        =   27
      Top             =   6060
      Width           =   1215
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Guardian Relation:"
      Height          =   195
      Index           =   17
      Left            =   285
      TabIndex        =   26
      Top             =   5370
      Width           =   1320
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Guardian_NM:"
      Height          =   195
      Index           =   16
      Left            =   285
      TabIndex        =   25
      Top             =   5055
      Width           =   1035
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Primary Nurse:"
      Height          =   195
      Index           =   15
      Left            =   285
      TabIndex        =   24
      Top             =   4740
      Width           =   1020
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Primary Physician:"
      Height          =   195
      Index           =   14
      Left            =   285
      TabIndex        =   23
      Top             =   4425
      Width           =   1275
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Location:"
      Height          =   195
      Index           =   13
      Left            =   285
      TabIndex        =   22
      Top             =   4110
      Width           =   660
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Release Date:"
      Height          =   195
      Index           =   12
      Left            =   285
      TabIndex        =   21
      Top             =   3795
      Width           =   1020
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Arrival Date:"
      Height          =   195
      Index           =   11
      Left            =   285
      TabIndex        =   20
      Top             =   3480
      Width           =   870
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Phone Number:"
      Height          =   195
      Index           =   10
      Left            =   285
      TabIndex        =   19
      Top             =   3165
      Width           =   1110
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Country:"
      Height          =   195
      Index           =   9
      Left            =   2565
      TabIndex        =   17
      Top             =   2760
      Width           =   585
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Zip Code:"
      Height          =   195
      Index           =   8
      Left            =   285
      TabIndex        =   15
      Top             =   2760
      Width           =   690
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "State:"
      Height          =   195
      Index           =   7
      Left            =   2565
      TabIndex        =   13
      Top             =   2325
      Width           =   420
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "City:"
      Height          =   195
      Index           =   6
      Left            =   285
      TabIndex        =   11
      Top             =   2325
      Width           =   300
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Address:"
      Height          =   195
      Index           =   4
      Left            =   285
      TabIndex        =   8
      Top             =   1560
      Width           =   615
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Suffix:"
      Height          =   195
      Index           =   3
      Left            =   3525
      TabIndex        =   6
      Top             =   1245
      Width           =   435
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Last Name:"
      Height          =   195
      Index           =   2
      Left            =   285
      TabIndex        =   4
      Top             =   1245
      Width           =   810
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "Middle Initial:"
      Height          =   195
      Index           =   1
      Left            =   3525
      TabIndex        =   2
      Top             =   900
      Width           =   915
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      Caption         =   "First Name:"
      Height          =   195
      Index           =   0
      Left            =   285
      TabIndex        =   0
      Top             =   900
      Width           =   795
   End
End
Attribute VB_Name = "frmFindPatient"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdFindPatient_Click()
    'Declare Variables
        Dim strPatientName As String
        Dim strFoundFlag As Boolean
        Dim intUseResponse As Integer
        Const conBtns As Integer = vbOKOnly + vbCritical + vbApplicationModal
    'assign values to variables
        strFoundFlag = False
    'input search item
        strPatientName = InputBox("Enter Patient Last Name", "Last Name")
    'search database for matching record
        Data1.Recordset.MoveFirst
        With Data1.Recordset
            Do Until .EOF Or strFoundFlag = True
                If strPatientName = .Fields("Last_NM") Then
                    strFoundFlag = True
                Else
                    .MoveNext
                End If
            Loop
        
            If .EOF And strFoundFlag = False Then
                intUseResponse = MsgBox("No Matching Record", conBtns, "No Match Error")
            End If
        End With
End Sub

