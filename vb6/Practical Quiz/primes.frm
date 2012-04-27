VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form frmPrimes 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Prime Numbers"
   ClientHeight    =   6045
   ClientLeft      =   7830
   ClientTop       =   4800
   ClientWidth     =   6210
   BeginProperty Font 
      Name            =   "Courier New"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   MaxButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   6045
   ScaleWidth      =   6210
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtMaxNumber 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1440
      TabIndex        =   4
      Top             =   240
      Width           =   735
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5040
      TabIndex        =   3
      Top             =   120
      Width           =   1095
   End
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   5640
      Visible         =   0   'False
      Width           =   6015
      _ExtentX        =   10610
      _ExtentY        =   450
      _Version        =   327682
      Appearance      =   1
   End
   Begin VB.TextBox txtPrimes 
      Height          =   4695
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   720
      Width           =   6015
   End
   Begin VB.CommandButton cmdFindPrimes 
      Caption         =   "Find Primes"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3720
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Largest Number"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   120
      TabIndex        =   5
      Top             =   240
      Width           =   1125
   End
End
Attribute VB_Name = "frmPrimes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Sean Coyne
'Practical Quiz
'Prime Numbers

Private Sub cmdClear_Click()
    txtPrimes = ""
    txtMaxNumber = ""
    ProgressBar1.Visible = False
    ProgressBar1.Value = ProgressBar1.Min
End Sub

Private Sub cmdFindPrimes_Click()
    If IsNumeric(txtMaxNumber.Text) = True And Val(txtMaxNumber.Text) >= 2 Then
    Dim is_prime() As Boolean
    Dim txt As String
    
        Screen.MousePointer = vbHourglass
        
        ' Create the array.
        max_number = Int(CLng(txtMaxNumber.Text))
        ReDim is_prime(2 To max_number)
        For i = 2 To max_number
            is_prime(i) = True
        Next i
    
        For i = 2 To max_number
            If is_prime(i) Then
                ' Cross out all numbers that are
                ' multiples of this one.
                For j = 2 To max_number \ i
                    is_prime(j * i) = False
                Next j
            End If
        Next i
        
        ' Display the primes.
        j = 0
        ProgressBar1.Max = max_number
        ProgressBar1.Min = 1
        ProgressBar1.Visible = True
        For i = 2 To max_number
            If is_prime(i) Then
                txt = txt & Format$(i, "@@@@@@@")
                j = j + 1
                If (j Mod 5) = 0 Then txt = txt & vbCrLf
            End If
        ProgressBar1.Value = i
        Next i
        txtPrimes.Text = txt
    
        Screen.MousePointer = vbDefault
    Else
        MsgBox "Enter an integer greater than one.", vbCritical, "Prime Numbers"
    End If
End Sub
