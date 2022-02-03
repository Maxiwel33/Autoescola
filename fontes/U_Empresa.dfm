object Frm_empresa: TFrm_empresa
  Left = 247
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Cadastro da Empresa'
  ClientHeight = 434
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 8
    Top = 56
    Width = 79
    Height = 13
    Caption = 'NOMEFANTAZIA'
    FocusControl = dbedtNOMEFANTAZIA
  end
  object lbl3: TLabel
    Left = 8
    Top = 96
    Width = 72
    Height = 13
    Caption = 'RAZAOSOCIAL'
    FocusControl = dbedtRAZAOSOCIAL
  end
  object lbl4: TLabel
    Left = 8
    Top = 136
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = dbedtCNPJ
  end
  object lbl5: TLabel
    Left = 278
    Top = 136
    Width = 10
    Height = 13
    Caption = 'IE'
    FocusControl = dbedtIE
  end
  object lbl6: TLabel
    Left = 8
    Top = 176
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = dbedtENDERECO
  end
  object lbl7: TLabel
    Left = 444
    Top = 176
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = dbedtNUMERO
  end
  object lbl8: TLabel
    Left = 8
    Top = 216
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = dbedtCIDADE
  end
  object lbl9: TLabel
    Left = 444
    Top = 213
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = dbedtUF
  end
  object lbl10: TLabel
    Left = 8
    Top = 256
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = dbedtBAIRRO
  end
  object lbl11: TLabel
    Left = 510
    Top = 256
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = dbedtCEP
  end
  object lbl12: TLabel
    Left = 8
    Top = 296
    Width = 27
    Height = 13
    Caption = 'FONE'
    FocusControl = dbedtFONE
  end
  object lbl13: TLabel
    Left = 164
    Top = 296
    Width = 19
    Height = 13
    Caption = 'FAX'
    FocusControl = dbedtFAX
  end
  object lbl14: TLabel
    Left = 320
    Top = 296
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = dbedtEMAIL
  end
  object lbl15: TLabel
    Left = 8
    Top = 349
    Width = 13
    Height = 13
    Caption = 'HP'
    FocusControl = dbedtHP
  end
  object lbl16: TLabel
    Left = 238
    Top = 333
    Width = 28
    Height = 13
    Caption = 'LOGO'
    FocusControl = dbedtLOGO
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 647
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Cadastro da Empresa'
    Color = 16777088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object dbedtNOMEFANTAZIA: TDBEdit
    Left = 8
    Top = 72
    Width = 489
    Height = 21
    DataField = 'NOMEFANTAZIA'
    DataSource = ds1
    TabOrder = 1
  end
  object dbedtRAZAOSOCIAL: TDBEdit
    Left = 8
    Top = 112
    Width = 489
    Height = 21
    DataField = 'RAZAOSOCIAL'
    DataSource = ds1
    TabOrder = 2
  end
  object dbedtCNPJ: TDBEdit
    Left = 8
    Top = 152
    Width = 264
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds1
    TabOrder = 3
  end
  object dbedtIE: TDBEdit
    Left = 278
    Top = 152
    Width = 219
    Height = 21
    DataField = 'IE'
    DataSource = ds1
    TabOrder = 4
  end
  object dbedtENDERECO: TDBEdit
    Left = 8
    Top = 192
    Width = 430
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds1
    TabOrder = 5
  end
  object dbedtNUMERO: TDBEdit
    Left = 444
    Top = 192
    Width = 53
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds1
    TabOrder = 6
  end
  object dbedtCIDADE: TDBEdit
    Left = 8
    Top = 232
    Width = 430
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds1
    TabOrder = 7
  end
  object dbedtUF: TDBEdit
    Left = 444
    Top = 232
    Width = 53
    Height = 21
    DataField = 'UF'
    DataSource = ds1
    TabOrder = 8
  end
  object dbedtBAIRRO: TDBEdit
    Left = 8
    Top = 272
    Width = 489
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds1
    TabOrder = 9
  end
  object dbedtCEP: TDBEdit
    Left = 510
    Top = 272
    Width = 129
    Height = 21
    DataField = 'CEP'
    DataSource = ds1
    TabOrder = 10
  end
  object dbedtFONE: TDBEdit
    Left = 8
    Top = 312
    Width = 150
    Height = 21
    DataField = 'FONE'
    DataSource = ds1
    TabOrder = 11
  end
  object dbedtFAX: TDBEdit
    Left = 164
    Top = 312
    Width = 150
    Height = 21
    DataField = 'FAX'
    DataSource = ds1
    TabOrder = 12
  end
  object dbedtEMAIL: TDBEdit
    Left = 320
    Top = 312
    Width = 319
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds1
    TabOrder = 13
  end
  object dbedtHP: TDBEdit
    Left = 8
    Top = 349
    Width = 224
    Height = 21
    DataField = 'HP'
    DataSource = ds1
    TabOrder = 14
  end
  object dbedtLOGO: TDBEdit
    Left = 238
    Top = 349
    Width = 401
    Height = 21
    DataField = 'LOGO'
    DataSource = ds1
    TabOrder = 15
    OnChange = dbedtLOGOChange
  end
  object pnl2: TPanel
    Left = 503
    Top = 72
    Width = 138
    Height = 141
    BevelInner = bvLowered
    Caption = 'LOGO'
    TabOrder = 16
    object img1: TImage
      Left = 2
      Top = 2
      Width = 134
      Height = 137
      Align = alClient
      Stretch = True
      ExplicitLeft = 24
      ExplicitTop = 24
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
  end
  object btn1: TBitBtn
    Left = 504
    Top = 216
    Width = 135
    Height = 25
    Caption = 'Imagem'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 17
    OnClick = btn1Click
  end
  object pnl3: TPanel
    Left = 0
    Top = 377
    Width = 647
    Height = 57
    Align = alBottom
    Color = clTeal
    ParentBackground = False
    TabOrder = 18
    object btn2: TBitBtn
      Left = 383
      Top = 16
      Width = 120
      Height = 35
      Caption = 'Salvar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 510
      Top = 16
      Width = 120
      Height = 35
      Caption = 'Fechar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 255
      Top = 16
      Width = 120
      Height = 35
      Caption = 'Inserir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 112
      Top = 16
      Width = 136
      Height = 35
      Caption = 'Alterar'
      TabOrder = 3
      OnClick = btn5Click
    end
  end
  object ds1: TDataSource
    DataSet = DM.cdsempresa
    Left = 256
    Top = 168
  end
  object dlgOpenPic1: TOpenPictureDialog
    Left = 536
    Top = 56
  end
end
