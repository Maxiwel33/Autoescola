object Frm_Abastecimento: TFrm_Abastecimento
  Left = 300
  Top = 184
  BorderStyle = bsDialog
  Caption = 'Controle de Abastecimento'
  ClientHeight = 575
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 879
    Height = 38
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'tlb1'
    Images = il1
    TabOrder = 0
    object btnnovo: TToolButton
      Left = 0
      Top = 0
      Hint = 'Novo registro'
      Caption = 'btnnovo'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = btnnovoClick
    end
    object btneditar: TToolButton
      Left = 39
      Top = 0
      Hint = 'Altera registro'
      Caption = 'btneditar'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = btneditarClick
    end
    object btnapagar: TToolButton
      Left = 78
      Top = 0
      Hint = 'Apaga registro'
      Caption = 'btnapagar'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnapagarClick
    end
    object btnlocalizar: TToolButton
      Left = 117
      Top = 0
      Hint = 'Localiza registro'
      Caption = 'btnlocalizar'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = btnlocalizarClick
    end
    object btn2: TToolButton
      Left = 156
      Top = 0
      Width = 8
      Caption = 'btn2'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object btncancela: TToolButton
      Left = 164
      Top = 0
      Hint = 'cancela registro'
      Caption = 'btncancela'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = btncancelaClick
    end
    object btnsalva: TToolButton
      Left = 203
      Top = 0
      Hint = 'Salva registro'
      Caption = 'btnsalva'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = btnsalvaClick
    end
    object btn5: TToolButton
      Left = 242
      Top = 0
      Width = 8
      Caption = 'btn5'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 250
      Top = 0
      Hint = 'Fechar fomul'#225'rio'
      Caption = 'btnsair'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = btnsairClick
    end
    object btn1: TToolButton
      Left = 289
      Top = 0
      Width = 8
      Caption = 'btn1'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object btnprimeiro: TToolButton
      Left = 297
      Top = 0
      Hint = 'Primeiro registro'
      Caption = 'btnprimeiro'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
    end
    object btn3: TToolButton
      Left = 336
      Top = 0
      Hint = 'Registro anterior'
      Caption = 'btn3'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
    end
    object btn4: TToolButton
      Left = 375
      Top = 0
      Hint = 'Proximo registro'
      Caption = 'btn4'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
    end
    object btnultimo: TToolButton
      Left = 414
      Top = 0
      Hint = 'Ultimo registro'
      Caption = 'btnultimo'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 38
    Width = 879
    Height = 537
    ActivePage = ts1
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 749
    ExplicitHeight = 457
    object ts1: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 0
      ExplicitTop = -80
      ExplicitWidth = 0
      ExplicitHeight = 499
      object lbl1: TLabel
        Left = 8
        Top = 8
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = dbedtID_CONTROLECOMB
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 33
        Height = 13
        Caption = 'Ve'#237'culo'
      end
      object Label3: TLabel
        Left = 464
        Top = 48
        Width = 103
        Height = 13
        Caption = 'Posto de Combustivel'
      end
      object Label4: TLabel
        Left = 18
        Top = 256
        Width = 106
        Height = 19
        Caption = 'COMBUSTIVEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 238
        Top = 256
        Width = 70
        Height = 19
        Caption = 'KM FINAL'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 379
        Top = 256
        Width = 84
        Height = 19
        Caption = 'KM INICIAL'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 10
        Top = 335
        Width = 49
        Height = 19
        Caption = 'DATA:'
        FocusControl = dbedtDATA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 528
        Top = 256
        Width = 130
        Height = 19
        Caption = 'VALOR DO LITRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 708
        Top = 255
        Width = 99
        Height = 19
        Caption = 'VALOR PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 707
        Top = 335
        Width = 120
        Height = 19
        Caption = 'QUANT. LITROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl13: TLabel
        Left = 664
        Top = 288
        Width = 41
        Height = 13
        Caption = 'Divis'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnl2: TPanel
        Left = 264
        Top = 334
        Width = 310
        Height = 111
        Caption = 'pnl2'
        Color = clBlack
        ParentBackground = False
        TabOrder = 15
      end
      object rg1: TRadioGroup
        Left = 10
        Top = 236
        Width = 847
        Height = 81
        Caption = 'Informa'#231#245'es sobre o Abastecimento.'
        TabOrder = 14
      end
      object dbedtID_CONTROLECOMB: TDBEdit
        Left = 8
        Top = 24
        Width = 81
        Height = 21
        Color = 8454143
        DataField = 'ID_CONTROLECOMB'
        DataSource = ds1
        Enabled = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 238
        Top = 280
        Width = 134
        Height = 27
        DataField = 'KMFINAL'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
      end
      object DBEdit6: TDBEdit
        Left = 378
        Top = 280
        Width = 134
        Height = 27
        DataField = 'KINICIAL'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
      end
      object dbedtDATA: TDBEdit
        Left = 59
        Top = 332
        Width = 134
        Height = 27
        TabStop = False
        DataField = 'DATA'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
      end
      object dblkcbbID_TRANSPORTE: TDBLookupComboBox
        Left = 8
        Top = 67
        Width = 398
        Height = 21
        DataField = 'ID_TRANSPORTE'
        DataSource = ds1
        KeyField = 'ID_TRANSPORTES'
        ListField = 'TRANSPORTE'
        ListSource = dstransp
        TabOrder = 1
        OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
      end
      object dblkcbbID_POSTO: TDBLookupComboBox
        Left = 464
        Top = 64
        Width = 391
        Height = 21
        DataField = 'ID_POSTO'
        DataSource = ds1
        KeyField = 'ID_POSTO'
        ListField = 'NOME'
        ListSource = dsposto
        TabOrder = 2
        OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
      end
      object grp1: TGroupBox
        Left = 8
        Top = 94
        Width = 398
        Height = 140
        Caption = 'Informa'#231#245'es sobre Transporte'
        TabOrder = 11
        object lbl2: TLabel
          Left = 8
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Placa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 8
          Top = 48
          Width = 22
          Height = 13
          Caption = 'Cor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 8
          Top = 72
          Width = 44
          Height = 13
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 8
          Top = 96
          Width = 57
          Height = 13
          Caption = 'Renavam:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 8
          Top = 120
          Width = 25
          Height = 13
          Caption = 'Ano:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtPLACA: TDBText
          Left = 72
          Top = 24
          Width = 67
          Height = 13
          AutoSize = True
          DataField = 'PLACA'
          DataSource = dstransp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtCOR: TDBText
          Left = 72
          Top = 48
          Width = 54
          Height = 13
          AutoSize = True
          DataField = 'COR'
          DataSource = dstransp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtMODELO: TDBText
          Left = 72
          Top = 72
          Width = 77
          Height = 13
          AutoSize = True
          DataField = 'MODELO'
          DataSource = dstransp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtRENAVAM: TDBText
          Left = 72
          Top = 96
          Width = 85
          Height = 13
          AutoSize = True
          DataField = 'RENAVAM'
          DataSource = dstransp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtANO: TDBText
          Left = 72
          Top = 120
          Width = 54
          Height = 13
          AutoSize = True
          DataField = 'ANO'
          DataSource = dstransp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object grp2: TGroupBox
        Left = 464
        Top = 94
        Width = 393
        Height = 140
        Caption = 'Informa'#231#245'es sobre Posto de Combustivel'
        TabOrder = 12
        object lbl8: TLabel
          Left = 13
          Top = 32
          Width = 41
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 13
          Top = 60
          Width = 41
          Height = 13
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl10: TLabel
          Left = 13
          Top = 88
          Width = 53
          Height = 13
          Caption = 'Bandeira:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtCIDADE1: TDBText
          Left = 72
          Top = 32
          Width = 80
          Height = 13
          AutoSize = True
          DataField = 'CIDADE'
          DataSource = dsposto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtESTADO: TDBText
          Left = 72
          Top = 60
          Width = 75
          Height = 13
          AutoSize = True
          DataField = 'ESTADO'
          DataSource = dsposto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtCIDADE: TDBText
          Left = 72
          Top = 88
          Width = 73
          Height = 13
          AutoSize = True
          DataField = 'BANDEIRA'
          DataSource = dsposto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object dbedtVLRLITRO: TDBEdit
        Left = 528
        Top = 281
        Width = 130
        Height = 27
        Color = 13500115
        DataField = 'VLRLITRO'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
      end
      object dbedtQTDLITRO: TDBEdit
        Left = 687
        Top = 360
        Width = 160
        Height = 37
        TabStop = False
        Color = 8421631
        DataField = 'QTDLITRO'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object dbedtVLRTOTAL: TDBEdit
        Left = 708
        Top = 280
        Width = 124
        Height = 27
        Color = 11070717
        DataField = 'VLRTOTAL'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnExit = dbedtVLRTOTALExit
        OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
      end
      object pnl1: TPanel
        Left = 252
        Top = 327
        Width = 315
        Height = 111
        Caption = 'pnl1'
        Color = clTeal
        ParentBackground = False
        TabOrder = 9
        object lbl7: TLabel
          Left = 12
          Top = 5
          Width = 288
          Height = 32
          Caption = 'C'#211'DIGO DE BARRA'
          FocusControl = dbedtCODIGO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl12: TLabel
          Left = 16
          Top = 88
          Width = 181
          Height = 14
          Caption = 'Exemplo: ML0987T6- HGB9987w'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbedtCODIGO: TDBEdit
          Left = 12
          Top = 43
          Width = 289
          Height = 43
          BorderStyle = bsNone
          Color = clYellow
          DataField = 'CODIGO'
          DataSource = ds1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
        end
      end
      object btn6: TBitBtn
        Left = 312
        Top = 451
        Width = 218
        Height = 55
        Caption = 'Gerar Nota Abastecimento'
        DoubleBuffered = True
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFCFDE8FFFF
          F8FAFBFFF6FCFFFEFFEFFDFBFFFFFCFFFFFBFFFFEFFFFFF7FFFEFAFFFDFFF4FD
          FFDBFFFFCAFFFFC2FFFCD7F7FFCFFBFFD4FFFFE1FFFFFDFFFFFFF8F6FFFFF9FD
          FFF8FFFFF8FFFEF9FBFCFAFFFCFFF7FAFEF3FAFDFFFDFFFFFBFFEDFFFFFFF3F7
          ECFFFFF3FEFBFFFEFEFFFCFDFDFFFFFCF3F6FFFCFFF2FAFFC6FDFF73EDF92ED1
          DA14B8C40EA8B50AA4AF00ADB800A9B40CB3BC3DCAD389F0F9C4F8FFF6F9FFFF
          F4FFFFF5F8EFFFFEF7FEFBFAFFFDFFFEFEFDFFFFF2F6F7FFFDFFFBFFFFF3FFFF
          FFFFFBE8FCF0FAFFFBFFFAFFF1F3FBE3FFFFCAFFFF60D3E00EB4C1009DB507A3
          C10FBFDE05CDEA08D6F200D2EC0ED1ED17C0DC0CACC400A0B107A8B647D1DD90
          FFFFDCFFFFFFF0FCFFFFFFE8FFFBF1F9EFFFFEFCFDFFFFF6FDFFF5F8FCFDFFFE
          F6F9F0FFFFF6FFFCF8E9FFFFF3FBFF74E1E900A2A700A8B200C5D100E8F200F5
          FF04F2FF00E7FF00E5FF00EAFF06E9FF07E6FC07EDFE00E5EF00CFD700AAB400
          98A55DDCE4E6FDFFF7FDFFFFFEFBE8FFF8F1F9EFFFFEFEF5F8FCFDFFFFFFFEFD
          FDFFFBFFFAF8F6FFFFE4F8FF2CD1D40A9BAA18C4D601E9F400F2FB00EEFD14E6
          FE08E0FD00E6FF00E2FF07E6FF00E2FB00E4FB00ECFF01EDFE12F0FF1AE3F614
          CFE40798AD08CFD1DBF2FFFDFEFFFFFFFCE8FFFBFAFFFDFFFCFFFFFAFBF8FEFD
          FFFAFCEDFFFFF5F6FF35D8DA009AA600D3DF00E6FB04F3FF08E9FF00E2F500E7
          FA04ECFF13EAFF03DEFF00E5FC00E7FF0BEEFF01E1FE00E0FF00E1FF00ECFF00
          E6FF00DCF10093AA07D3D4DAF1FFF6FCFFFCFCFCF7FEFBFCFDFBFFFFFCFAFFFF
          E8F6FCEFFCFF34D0D50098A600DDE908F4FF0FEDFF00DCEE00F1FA08F8FD00F1
          F100F1F100EAF014EFFC00E9EB07F1F713F8FF00E2F200F4FF00E0FA00E1FF0E
          DDFF07F7FF00DEF40092A906CDCFE6FDFFFFEFFBEFFFFEFFFFFBF8FFFBFFF3F8
          F4FDFF74E3EB009FAB00D4E00FF2FF00E8FC26CEDF00455B0020361626370A2D
          3704383F002A34123E4B1054590A323E002033003A4D1FC0CF09EDFA01F7FF00
          EBFF00DBFB06F6FF00DAEF0596AB5AD9E1DCFFFFFFF6F9FFFFF8FFFFEEFFFCFD
          AEFFFF0CA4B50EC6D800EDF800E5F700E9FF00D8EE00757D090007140B070001
          000601030000010101011C030D1314121B000C00455700EDED17E7E50AD9DB01
          CDDE0DEBEB02F8FE00E5F70DCCE7009CB296FDFFFFF3F7FDFFF4FAFFF1F9FAFE
          76DEEB0BB0C319DDEF00F1FD00EAFE00E9FF10F5FF09B9C00E04100501000002
          0006010300000104020200000412060629152100C3C207E5E904384F000B2900
          053400364606B8C310FDFF04E9FE00A5B835C9CFFDFDFFF6FFF7F6FFF8D9FBFF
          35B7C80BC8DD19F0FF00EBFB00E9FE01E5FF00EDFF15CFD50000090002000003
          000200010000010400000004060001002B000F0AC0C005728800445700DCD90D
          DFED0A5C6704405800EBF500F1FF00CEDF0DACB6B7EDF4FFFEFFF0FFFEA7F0F8
          04A5B90EE0F80DF4FF00E5F700E6FD04E5FF00EEFF0ACBCF0000070006000108
          03020001000203040000100005000C0300010400C0BE2B5F7D00778100FFFB03
          F0FA0BCABB220A2A00DEE600F2FF00EFFE1B9FB66BE7EDFFF8FFE6FCFF66D7E1
          00A9BC0BEBFF00ECFF00E8FB00EAFF0DE9FF00F5FF05C8CC0000070007000004
          0000000100020309040508010403040000000401C0BD3958791D8B970BFFF700
          FAFE00C0AD0C132C02F6FC00EBFE00EFFF14AAC229D0D3F0FAFFE4FFFF2EC2C8
          00B7CC0AEDFF00E6FD07EDFF02ECFF0DE6FF00EAFD0CC8CD0000070002000002
          00030204000101060404000001050100000D0E00C5BE004158007D851EFEF900
          FAFE125F6200575F00FEFF00E7FB06ECFF00C7D608ACB1CDFFFFE1FFFF0AB7BA
          00CBDE0CEDFF00E9FF13ECFF08ECFD0FE6FB04EEFF1ED1D805000A0303000002
          000302040001010000001A00061605020500030FBBBB215A7400828905FFF419
          DAE7090D2000C9C700F0FB0FEFFF1AEDFF00D6E21BB2B9C0FBFFD9FAFF00AEAF
          00D5E80FECFF0CEFFF1BECFC0FF1FE1DF0FF11F2FF20CDD50500070C08030002
          000000010007070001000008030007000300040BC4C0124B651A768319FFFF0C
          7B9514354816FDFB0AE4F427EBFF16E6FF0FE4F2059BA1DAFCFFE7F6FF00BABA
          00CBD732FBFF3FE1F352F6FF2FE7F732F1FF26F5FF3DC9D010050F0005000102
          001500030102000901000E02021203010004003DCCBD1E44560D909930FBF200
          262E1EA6B237F6FF37EFFF3CEFF141F1FC00D7F00AA2BBC7FEFFE2FAFF10BDBF
          00C2CF2EECFF4AF7FF4CEDFB3DF0FF43EFFF51F6FF5EC8D31900060004020000
          010B00060001040200000F0005000001000605002D2E061B3142DADF56D4D511
          142249D9E44AF2FF42F3FF56EDF428F3FC00CFE60FACC0D6FBFFE5FFFF33CFCF
          00AEBE21EEFD5BFCFF44EBF65DF4FF53EEFF53F5FF50C5CA0000060E4C460C4D
          4E104750004B4E044546134650004A4900030A2A61687FD2E14CFFFF479FA52B
          2E3669FFFF59EFFF63EFFF5AEEFA28F6FF00C3D12BBAC9E8F9FFF6FFFF67E9E9
          009DAB10F6FF65ECFF53F2FC7AEEFF58F2FF5DFFFF4ECECD00171B60D0C876F8
          F77BF8FF6CFFFF7CFFFF74FFFF60EBE804000F51B2B670FFFF4FF5F60E5F6226
          373A62F8FF71EEFC75EBFC69F1FF1DF5FF00ADB855D2DAFEFCFFFFFEFEADFBFF
          00A1AC00DBE560F1FF7DF7FF85EDFA63F6FE7BF9FE5EC2C20000086CD7D47AFF
          FF74F4FF64F7FF73F5FA5EF6FA7AF1F31E03175CB4BA72F6FD6FEDF225575D18
          17195CEAF58AF3FE7BF4FE71F6FF04DFEC009FA68FF3F3FFFAFEFFFEF7EDFEFF
          19C0C900AFBE47F7FF92F5FF88F1FA77F9FE90FBFF7ACDCE07030E77D4D581F8
          FF7EEFFF77F8FF82F3F67EFFFF84E1E40104125E9FA7A3F9FF6FEBF11938412B
          33337BEDFA85FDFD94F9FF3AF7FF13B6CF0EB3B6D8FFFFFEF9F8FFFFF4FFFAFF
          76E5F500ABB822D6E16DF5FB9AF8FE8FF7FC89FAFC7BD3D30908127AD4D58EFD
          FF90F5FF8CFFFF9AFAFA9CFFFF84E4DE00080E69B4B6A9FFFF73DDE40C273153
          918B9CF6FF82FEF884FCFC03DBE8169FBF69E1E6F8FFFEFAFEF8FBFFF3FFFAFF
          D2FAFF00C4CE06A4B234F7F4B0F9FF9AF5F995FFFF80CDCF0B000779C2C693ED
          F88EDBEB88E3E897DDDC94DFDD83E1D632161C5FB9B498FFFF0A3647707E8AA8
          FFFFA1F9FF9DF6F341FFF30CB0C700A7BFDCFFFFE0F9EFFFFFF9EDFFFCFFEDF2
          FFF8FFB7F5FF00AFAE00B6B55FF6FFACEEFFADFFFF94C4CA000103020503030B
          040003000905040E000416080C27282C0F262897C4C7C0F7FA7BB5BBB6F7FFAB
          F9FFAEF2FF6CF6FF00C4C900A2AB94E5F4FFF7FFFFF3FAFFFFFCEEFDF9FFFDFF
          FFF7FFDFFFFF7FF0F20AB2B30FB8BF67FCFFB5F5F6BFFFFF73B4AB8BB0A88FA5
          A089AEAA7DB4B170ACAC82A8AC98BDC19BB8BDC7E5EAC6FEFFA6F7F4C3FFFFC9
          EEF270FBFF0DC3C90BA0AA5EE8EEF3FAFFF9F9FFFFF5FEEAFEF9F9FDFEFFFFFF
          F8F3F2F9F9F9E3FFFF84E0E110B3B500AFAF28F4EF8AFFFFCBF8FFDCFFFFC4FF
          FFC0FFFEBAFFFAB9FFFFD1FFFFCEFDFBCBFBFCC4F7FAD2F5FFCEF7FF89F3FA41
          F6F200BABA05A0A35CE0E0F3FCFFE9FCFFFFF4FFEFFFFEEEFFFEFFF9FFFCFCFC
          FFFFFBFFFDF4FFF6F4E4FFFF85F0F307B1B2009CBC0CC6DE56F8FFA7F6FFDDEC
          FFEEFAFFD8FFFFC6FAF3CCFFF6DEFFFDEEF7FFE5F0FFA9FBFF51FAFF13D2E500
          9FBB07B3B16DEFEEEAFFFFF4FFFFFFF3F8F4FFFEFFFEFFEBFBFAFFF9FFFFFAFB
          FDFFF9FFFFF7FFFAF1FEFCFCE4FFFFC6FCFF16D5E9049EB7059DB500C5D110ED
          F141F3F884F7FFA7F9FFA0F9FF7AF6FC40F8F819F9F703CDD40099AB00A6BB00
          D0DFA8F7FAE3FFFFFDFCFFFFF6F6F8FFFBFAFFFBEEFCF8FFFDFFFFFCFFFFFBFC
          F9FDF7F6FFF5FAFEF8FFFBFAFFF4FDFFF7FFFFF8FFB4F4F94EE0E012B7C0019D
          B0009AB203AEC600ACC600AAC600A7BF00A3B60099A610ACB14BDAD8AAF1F5FF
          F9FFFFFCFFFFEFF6FFFCFFFFFDFCEEFFF9EEFFFDEFF4F2FFFCFFF8FCFDFDFCFE
          FFFFFFFBFDFDF6FCFBFDFFFFFFFDFFFFF5FAFFFFF4FFFBF7F6FCFFCDFFFF9CFB
          FF72E2EF54D4E146D4DF50D0E35AD3E671E4EF9AF4FBD5FCFFFFFDFFFFFCFCF4
          FFF9FFF8FAFFFEFEFFFAFCF4FFFFF8F9FDF2FAFAFFFEFFF5F3F2F0FEFCF7FCFD
          FFFBFFFFFAFFFEFDFFF6FFFFEEFFFBEDFFFCFFFFFBFAFFFEF0FFFFF8FBFFFFFC
          FFFFFDFFF2FFF5E8FFF7E9FDF8F4FFFFF9F9F9FFFDFFFFFEFFECF5F8F3FFFFF8
          FFFFFFFFF9F4FFFCEAFFFFF5FBFFFFFBFFFFF6FEF9F9F9F1FFFC}
        ParentDoubleBuffered = False
        TabOrder = 10
        OnClick = btn6Click
      end
      object dbcbbCOMBUSTIVEL: TDBComboBox
        Left = 16
        Top = 280
        Width = 208
        Height = 27
        Style = csDropDownList
        DataField = 'COMBUSTIVEL'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'ALCOOL'
          'BIODIESEL'
          'DIESEL'
          'ETANOL'
          'GASOLINA')
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dblkcbbID_TRANSPORTEKeyPress
      end
    end
    object ts2: TTabSheet
      Caption = 'Localiza'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 930
      ExplicitHeight = 499
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 871
        Height = 73
        Align = alTop
        Color = clTeal
        ParentBackground = False
        TabOrder = 0
        object lbl15: TLabel
          Left = 388
          Top = 9
          Width = 126
          Height = 13
          Caption = 'Digite um valor v'#225'lido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtbusca: TEdit
          Left = 388
          Top = 28
          Width = 349
          Height = 21
          TabOrder = 0
          TextHint = 'Nome do Posto'
        end
        object btn7: TBitBtn
          Left = 743
          Top = 21
          Width = 97
          Height = 33
          Caption = 'Filtro'
          DoubleBuffered = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE5D1CB67241E5CBB8FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7C33
            E2A736C67418AB5C23D7AE8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFBF7934E4AB3BDD951DC4731496400CB4621DFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFC17E36E3AE41DD9723C87618AC530DBF701FFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC48039E5B24ADE9D29C97A
            1DB0560FC07222FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5833C
            E7B551E09F30CC7E20B45A12C27624FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFC7853DE8B95AE2A436D18326B75D15C57927FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFC9883DEABD5FE3A83DD28729BB6118C77B29FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC8B3FEBC165E5AC42D68C
            2DBD671BC97E2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE8F42
            EDC36AE6B149D69031C16B1ECC862EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFD19244EEC670E8B34FD89435C57020CF8731FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFD39747EEC776EAB851DB973BC87424D18E34FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA66EE2BA79EDC169EBB95BDDA0
            40CF7A26CE822BDCAA74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEED4B7DEAD61F2D491
            ECBD5FEBBE60EABB5BCE7D27D1812AD49136EFD6B9FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EADAD5
            963CF5DEABEDC261EDC265EDBE64EDC166DA963BD3852DD58830D38F34F7EADB
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFBF2E9D18A2AF9E7C3EFC567F0C66CEFC56AEFC468EFC569E6AE50D7872ED5
            872FDB9438D38E33FBF3E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFDA9C48F4E0B2F2CC75F1CA71F1C971F0C86FF0C76EEFC5
            6BF2CA70D98F32D98D32D78B30E1A648D99849FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDA04EEFD39BF5D589F3CD71F2CC72F2CB6F
            F1C86DF1C76CF0C66BF1C86BE5AB45DB9131DC9233DB8F30E5AD4FE1AE68FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9BE84E7C174F6D88DF3D487F5
            D99FF4D79BF3E0BAF2E1C0F1DFBDEFDDBBEEDCBAECD8ADDB993FDB9F47DB9739
            E19733E5AA47EAC188FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DBB7E5BE76FFFF
            FFFFFFFFFEFFFFFAFEFFF8FCFFF6F8FFF3F8FFF0F5FEEEF2FCECF0F9EAEEF9DA
            C8AED4BD94D2BA96CEB691D8BE93DDAD5CF4DCB9FFFFFFFFFFFFFFFFFFFCF5EA
            E4B564FFFFFFFFFFFFFEFFFFF3EAD7F2E9D7EFE7D5EEE6D3E6CF94E3C37CE1C3
            7BE0C177E6DECBDFCBA3D5AF6AD4B068D1B78BCEB58DD5D0CCDDA64DFCF5EAFF
            FFFFFFFFFFE3A94BE6B860E3B14BD78C10D88F14D99117DA9117DA9117DA9118
            DA941DDB941FDB941FDB941FDB931ADB941CDC9721DC9622DC971FDC951CDA9E
            31DEAD54E3AA4CFFFFFFFFFFFFE5AC46EAB753EBBA5CEBBC5DEBBC5EEBBC5DEB
            BA5CEBBA5CEBBA5CEBBA5CEBB95BEBB95BEBBA5CEBBA5CEBBA5CEBBA5CEBBC5D
            EBBC5EEBBC5EECBC5EEAB955E5AC46FFFFFFFFFFFFFFFFFFF6E3C1F2D39FF0C9
            80F0C779EDBF5FEDBF5FEDBF5FEDBE5EF0C567F2CB72F2CB72F0C567EDBE5EED
            BF5FEDBF5FEDBF5FF0C779F0C980F2D39FF6E3C1FFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 1
        end
        object pnl4: TPanel
          Left = 1
          Top = 1
          Width = 381
          Height = 71
          Align = alLeft
          Color = 4227327
          ParentBackground = False
          TabOrder = 2
          object lbl14: TLabel
            Left = 178
            Top = 13
            Width = 42
            Height = 16
            Caption = 'Inicial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl16: TLabel
            Left = 187
            Top = 43
            Width = 33
            Height = 16
            Caption = 'Final:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rb1: TRadioButton
            Left = 16
            Top = 8
            Width = 113
            Height = 17
            Caption = 'Todos'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
          end
          object rb2: TRadioButton
            Left = 16
            Top = 28
            Width = 113
            Height = 17
            Caption = 'Posto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object rb3: TRadioButton
            Left = 16
            Top = 49
            Width = 113
            Height = 17
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object dtp1: TDateTimePicker
            Left = 223
            Top = 11
            Width = 125
            Height = 21
            Date = 42046.726790034720000000
            Time = 42046.726790034720000000
            TabOrder = 3
          end
          object dtp2: TDateTimePicker
            Left = 223
            Top = 41
            Width = 125
            Height = 21
            Date = 42046.726869351850000000
            Time = 42046.726869351850000000
            TabOrder = 4
          end
        end
      end
      object dbgrd1: TDBGrid
        Left = 0
        Top = 73
        Width = 871
        Height = 436
        Align = alClient
        DataSource = ds1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_TRANSPORTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_POSTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMBUSTIVEL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMFINAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KINICIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRLITRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDLITRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end>
      end
    end
  end
  object il1: TImageList
    Height = 32
    Width = 32
    Left = 504
    Bitmap = {
      494C01010C000E00500020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DCA67500C4691A00C2610E00C2630E00C5630E00C3660E00C5660E00C86D
      1900DDA57200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEB88A00CA712600CD782F00F0C6
      A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECB5
      8300CA722500CE7A3100F2CCAA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDB88800C6671300C869
      1400E4B17C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDC3
      9F00C7732E00C5702700ECB88D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9B58900C2651800C162
      1000E8AA7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EDC29E00C7732E00C5702700ECB98F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCA6
      7500C4691A00C2610E00C2630E00C5630E00C3660E00C5660E00C86D1900DDA5
      7200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9A5
      7400D8791100FFAB1A00FFA81300FFA60C00FFA40800FFA20200FFA10100FF9F
      0000DC760000DDA67300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6CDAA00D0700C00FFB84200FFB33D00D16E
      0700F3D1B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5C7A100D36B
      0000FFB02B00FFAC3100D0690300FBD8BB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6D0B100CF660100FFBA3C00FFBD
      4800DA7B1200E7BB8D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFCCAC00CB67
      0400FFAD2D00FFA91900CC650000F4CEAD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4C59E00D16F0A00FFB43300FFAF
      1F00CF680000F3C59D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFCC
      AC00CD6B0D00FFB43C00FFB12C00CC670600F5CFB100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9A57400D879
      1100FFAB1A00FFA81300FFA60C00FFA40800FFA20200FFA10100FF9F0000DC76
      0000DDA67300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE60
      1800FFB02800FFA51B00FF9E0E00FF9A0400FF990000FF990000FF990000FF9B
      0000FFA00000C4671600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9E8DB00C7660F00FFAF3500FFAE2E00FFAD2A00F9A0
      1F00D0864500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAE7D700C8630C00FFAB
      2800FFB03400FFB03000F59B1E00E4965000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7651300FEA82800FFAF3200FFAC
      2B00FFAA2500C8732900FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7783F00F7A3
      2D00FFAE3000FFA92000FF9E0C00C3621100FAEBDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DA7F3A00FAA62E00FFAE2F00FFA8
      1F00FFA00C00C4600A00F8E4D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C77C
      4100F9A73300FFAE2D00FFA61D00FF9F1000C6651300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE601800FFB0
      2800FFA51B00FF9E0E00FF9A0400FF990000FF990000FF990000FF9B0000FFA0
      0000C4671600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B959
      0E00FFA81700FE9B0900FF980000FE980000FF990000FF990000FF990000FF99
      0000FFA20000BF5E0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC773300F1982100FFAA2200FFA21800FFA01300FFA5
      1100C56C2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9732E00F2941200FFAC
      2800FFA31B00FFA31600FFA31200DE7D2D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC7E3B00ED8F1100FFAC2500FFA31900FFA1
      1400FFA81400C15E0A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC5F1C00FFAC
      2F00FBA12000FC9C1100FF9C0400EE880000CC793700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CF671B00FFAC2F00FBA11F00FA9B
      1000FF9B0400F38D0000C6712B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC5F
      1C00FFAE3400FBA11F00FA9B1000FF9C0300EE880000CC7D3900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9590E00FFA8
      1700FE9B0900FF980000FE980000FF990000FF990000FF990000FF990000FFA2
      0000BF5E0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B757
      0E00FF9E0A00F9930000FB950000FC960000FF990000FE980000FF9A0000FF99
      0000FFA20000BB5A0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E2A06B00DA7C1100FFA91B00FF9E0D00FF9B0400FF990100FF9F
      0100C0681E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DF9C6600DC780600FFAB1E00FEA0
      0F00FF9C0700FF9A0300FF9C0200D9792A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E3A87700D6740600FFAB1D00FF9F0E00FF9B0500FF9A
      0000FFA10100BD5A0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00B85A1900FBA4
      2600F69A1500F7940600FA930000FF9B0000D8720000E3A27100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE651900FBA52500F6981400F793
      0600F8920000FF9A0000DC770000DD9A6000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BB5C
      1900FDA72800F6981500F7930600F8920000FF9B0000D8720000E3A77300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7570E00FF9E
      0A00F9930000FB950000FC960000FF990000FE980000FF9A0000FF990000FFA2
      0000BB5A0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B554
      0E00FB960100F58F0000F7910000F8920000FA940000FC960000FD970000FE98
      0000FFA20000B9580800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F3CAAA00C7620500FFA51A00FB990700FC970000FF980000FE980000FF9F
      0000C0641E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F2C8A700C7600000FFA41800FD990800FE97
      0000FE980000FF980000FF9C0000D7772A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F4D3B700C45A0100FFA21600FC980800FC960000FF980000FE98
      0000FFA20000BA5A0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6591900F89E
      1D00F2910C00F38E0000F58F0000F9930000FF990000C65E0100F3CEB000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CD641900F89C1C00F2900B00F38D
      0000F58F0000F7910000FF9A0000C9620000F1C3A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B75A
      1900F89F2100F2910C00F38D0000F58F0000F7910000FF990000C65E0100F4CE
      B100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5540E00FB96
      0100F58F0000F7910000F8920000FA940000FC960000FD970000FE980000FFA2
      0000B9580800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B353
      0E00F7910000F18B0000F38D0000F58F0000F6900000F8920000FA940000FB95
      0000FFA00000B7560800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8E7
      DB00BD5B0F00F5981900F8940700F7910000F9930000FB950000FE980000FF9F
      0000BE631E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8E6DA00BF5B0E00F5961200F8940700F7910000F993
      0000FB950000FE980000FF9C0000D4732A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BE5E1500F1931100F8950700F6910000F8920000FB950000FE98
      0000FFA10000B9570800FFFFFF00FFFFFF00FFFFFF00FFFFFF00B45A1900F397
      1600EE8A0500F08A0000F18B0000F38D0000F8920000F7910000BF5E1200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CB641900F3961500EE8A0400EF89
      0000F18B0000F38D0000F7910000F9930000C05C0B00F7E5D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B559
      1900F3981A00EE8A0600EF890000F18B0000F38D0000F7910000F7910000BE5E
      1200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3530E00F791
      0000F18B0000F38D0000F58F0000F6900000F8920000FA940000FB950000FFA0
      0000B7560800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B151
      0E00F28C0000ED870000EF890000F18B0000F28C0000F48E0000F6900000F892
      0000FF9C0000B5540800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C270
      3200E3861800F4930D00F18C0000F38D0000F58F0000F7910000FB950000FF9C
      0000BA611E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C3703200E3830D00F4930D00F18C0000F38D0000F690
      0000F8920000FB950000FF9A0000D2732A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C7794000DD7C0A00F4940F00F18B0000F38D0000F58F0000F7910000F993
      0000FF9E0000B6560800FFFFFF00FFFFFF00FFFFFF00FFFFFF00B4561900EF91
      1000EA850000EC860000ED870000EF890000F18B0000F6900000E57F0000C878
      3900FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9601900EF901000EA840000EB85
      0000ED870000EF890000F08A0000F6900000E9830000C16B2D00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B459
      1900F1921400EA850100EC860000ED870000EF890000F28C0000F6900000E57F
      0000C5763900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1510E00F28C
      0000ED870000EF890000F18B0000F28C0000F48E0000F6900000F8920000FF9C
      0000B5540800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B050
      0E00F08A0000EA840000EB850000ED870000EF890000F08A0000F28C0000F48E
      0000FE980000B4540800FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB976A00CD6E
      1100F1951A00EC880300EE880000F08A0000F28C0000F48E0000F6900000FF99
      0000B9601F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DB9B6C00CD6A0800F1961900EC880200EE880000F08A0000F28C
      0000F48E0000F7910000FC960000D1722B00FFFFFF00FFFFFF00FFFFFF00E0A5
      7D00C9620300F1961A00EC870400ED870000EF890000F18B0000F38D0000F58F
      0000FF9A0000B7550A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2581A00EB8B
      0D00E6810000E8820000EA840000EB850000ED870000F08A0000F6900000CF69
      0000E0A37400FFFFFF00FFFFFF00FFFFFF00C7601B00EB8A0C00E6800000E882
      0000E9830000EB850000ED870000EE880000F6900000D36D0000DA956300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B357
      1A00EC8D1000E6810000E8820000EA840000EB850000ED870000F08A0000F690
      0000CF6A0000DEA17300FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0500E00F08A
      0000EA840000EB850000ED870000EF890000F08A0000F28C0000F48E0000FE98
      0000B4540800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AE4E
      0E00EB850000E6800000E7810000E9830000EB850000EC860000EE880000F08A
      0000FB950000B3500800FFFFFF00FFFFFF00FFFFFF00EEC5A900BB570700EF9A
      2A00E9881000E8830000EA840000EC860000EE880000F08A0000F28C0000F993
      0000B9622400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFC7AC00BA540000EE972500EA890E00E8830000EA840000EC860000EE88
      0000F08A0000F58F0000F58F0000D1723000FFFFFF00FFFFFF00F1D0BB00B950
      0200ED942200E88A1100E8820000EA840000EC860000EE880000F08A0000F28C
      0000FD970000B5530E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3591F00E686
      0A00E37D0000E47E0000E6800000E8820000E9830000EB850000EF890000F690
      0000BF560100F1CDB300FFFFFF00FFFFFF00C7601F00E6850A00E27C0000E47E
      0000E6800000E7810000E9830000EB850000ED870000F6900000C15A0000EEC2
      A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B157
      1E00E8880E00E37D0000E47E0000E6800000E8820000E9830000EB850000EF89
      0000F6900000BF570100F2CCB100FFFFFF00FFFFFF00FFFFFF00AE4E0E00EB85
      0000E6800000E7810000E9830000EB850000EC860000EE880000F08A0000FB95
      0000B3500800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD4C
      0E00E6800000E27C0000E47E0000E57F0000E7810000E9830000EA840000EC86
      0000F6900000B14E0800FFFFFF00FFFFFF00F6E5DA00B5510E00E7963700E88F
      2300E4840D00E57F0000E7810000E9830000EB850000ED870000F08A0000F791
      0000B9622400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6E6
      DD00B4511000E6912C00E68E2200E4830B00E57F0000E7810000E9830000EB85
      0000ED870000F08A0000F28C0000CA713000FFFFFF00FFFFFF00B6551800E08A
      2200E7912500E4830D00E47E0000E6800000E8820000EA840000EC860000EE88
      0000F9930000B3520E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0581F00E481
      0C00DF790000E17B0000E27C0000E47E0000E6800000E7810000E9830000EE88
      0000EB860000BB5A1400FFFFFF00FFFFFF00C15C1F00E2800A00DF790000E07A
      0000E27C0000E47E0000E57F0000E7810000E9830000EC860000EF890000BC57
      0D00F6E5D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B156
      1E00E3840F00DF790000E17B0000E27C0000E47E0000E6800000E7810000E983
      0000EE880000ED870000BA591200FFFFFF00FFFFFF00FFFFFF00AD4C0E00E680
      0000E27C0000E47E0000E57F0000E7810000E9830000EA840000EC860000F690
      0000B14E0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AB4A
      0E00E27C0000DE780000E07A0000E17B0000E37D0000E57F0000E7810000E882
      0000F28C0000B04B0800FFFFFF00FFFFFF00BA633100D8893800E7983900E289
      2100E1800D00E17B0000E37D0000E57F0000E7810000E9830000EB850000F28C
      0000B5602400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BB66
      3400D57E2700E6973900E1881F00E17F0B00E17B0000E37D0000E57F0000E781
      0000E9830000EC860000F08A0000BE6A3000FFFFFF00BD6F3F00CE701500E69A
      3E00E1882100E0800D00E17B0000E37D0000E57F0000E7810000E9830000EB85
      0000F6900000B1500E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AE551F00DF7E
      0D00DB760000DD770000DF790000E07A0000E27C0000E47E0000E57F0000E781
      0000ED870000DB750000C1703900FFFFFF00B2571F00DF7E0C00DB750000DD77
      0000DE780000E07A0000E27C0000E37D0000E57F0000E8820000EB850000DF79
      0000BD672C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AE55
      1E00E0821200DB760000DD770000DE780000E07A0000E27C0000E37D0000E57F
      0000E7810000ED870000DD770000C26F3700FFFFFF00FFFFFF00AB4A0E00E27C
      0000DE780000E07A0000E17B0000E37D0000E57F0000E7810000E8820000F28C
      0000B04B0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A94A
      0E00DE780000DA740000DC760000DE780000DF790000E17B0000E37D0000E47E
      0000ED880000AE4B0800FFFFFF00D19B7D00C6712D00E8A35400E0903700DF87
      2300DE7E0F00DE780000E07A0000E27C0000E47E0000E6800000E9830000EF89
      0000B35D2400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D29E7E00C369
      1D00E7A25300E0903600DE862100DD7D0C00DE780000E07A0000E27C0000E47E
      0000E6800000E9830000EB850000B9663000D8B09500BC590900E9A45500E191
      3900DE862300DD7D0F00DD780000DF790000E17B0000E37D0000E57F0000E781
      0000F18B0000AF4E0E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AE541F00DC7E
      1100D8730200D9730000DB750000DD770000DE780000E07A0000E17B0000E37D
      0000E57F0000EC860000C8620000D7A68400AD521F00DC7C1000D7720000D973
      0000DB750000DC760000DE780000DF790000E17B0000E37D0000E47E0000EC86
      0000CB660000D39E7900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AC53
      1E00DD801500D8730200D9730000DB750000DC760000DE780000E07A0000E17B
      0000E37D0000E57F0000EC860000C9630000D5A48200FFFFFF00A94A0E00DE78
      0000DA740000DC760000DE780000DF790000E17B0000E37D0000E47E0000ED88
      0000AE4B0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A846
      0E00DA740000D6700000D8720000DA740000DB750000DD770000DF790000E17B
      0000E9830000AC490800FFFFFF00B0552800E6AB6A00E19C5200DE903B00DC86
      2700DB7D1400DB760200DC760000DE780000E07A0000E27C0000E47E0000EC86
      0000B35C2400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0562800E5A8
      6500E09B4F00DE8E3800DC852500DB7C1100DA750000DC760000DE780000E07A
      0000E27C0000E57F0000E8820000B7663000B96E4600D88D4200E29F5600DE8F
      3B00DC862700DB7D1400DA750200DC760000DE780000E07A0000E27C0000E47E
      0000EF890000AE4D0E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD521F00DA7D
      1700D5710600D5700000D7710000D9730000DA740000DC760000DE780000DF79
      0000E17B0000E57F0000E7810000B8662E00AC501F00D97D1600D4710500D56F
      0000D7710000D8720000DA740000DC760000DD770000DF790000E17B0000E37D
      0000E8820000B6632A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AC52
      1E00DB811B00D5720800D56F0000D7710000D9730000DA740000DC760000DE78
      0000DF790000E17B0000E57F0000E8820000B8642E00FFFFFF00A8460E00DA74
      0000D6700000D8720000DA740000DB750000DD770000DF790000E17B0000E983
      0000AC490800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A546
      0E00D7710000D36D0000D46E0000D6700000D8720000D9730000DB750000DD77
      0000E47F0000AA470800FFFFFF00A94A1900E9B37600DE9B5600DC904100DB87
      2E00D97E1B00D8760900D9730000DB750000DD770000DF790000E27C0000E781
      0000B25C2400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A94A1900E9B3
      7500DE9A5400DC8F3E00DA862B00D97D1800D8750500D9730000DB750000DD77
      0000DF790000E27C0000E37D0000B8653000B5663D00DC955100E19F5A00DC90
      4100DA872E00D97E1B00D8750900D8720000DA740000DC760000DE780000E07A
      0000E9840000AC4B0E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A9511F00D87F
      1E00D3720D00D26D0000D36D0000D56F0000D7710000D8720000DA740000DC76
      0000DD770000E07A0000E7810000B25B1F00A9501F00D77D1D00D2710D00D26C
      0000D36D0000D56F0000D6700000D8720000DA740000DB750000DD770000E17B
      0000E6800000B2592100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA4F
      1E00D9812300D3730F00D26D0100D36D0000D56F0000D7710000D8720000DA74
      0000DC760000DD770000E07A0000E8820000B1581E00FFFFFF00A5460E00D771
      0000D36D0000D46E0000D6700000D8720000D9730000DB750000DD770000E47F
      0000AA470800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A443
      0E00D4710800CF690000D06A0000D26C0000D46E0000D56F0000D7710000D973
      0000E27C0000A8450800FFFFFF00BA734E00D48F5500E0A26200DB924800D989
      3600D8802400D6781300D6720300D7710000D9730000DB750000DD770000E57F
      0000AF592400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BB724F00D592
      5900E0A15E00DB914600D9883400D77F2200D6771100D6710000D7710000D973
      0000DB750000DD770000E07A0000B4623000CC967A00C16C2700E3A76800DB92
      4A00D9893600D7802400D6781300D5710300D7710000D9730000DB750000DD77
      0000E7810000AA4A0E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A94E1F00D680
      2600D1741800D06D0800D06A0000D16B0000D36D0000D56F0000D6700000D872
      0000DA740000DE780000D06A0000C4815600A74B1F00D57F2500D2731700CF6C
      0700CF6A0000D16B0000D36D0000D46E0000D6700000D8720000D9730000DF79
      0000CD680000C5865E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A74E
      1E00D7832C00D1751800D06E0900D06A0000D16B0000D36D0000D56F0000D670
      0000D8720000DA740000DE780000D16B0000C47F5400FFFFFF00A4430E00D471
      0800CF690000D06A0000D26C0000D46E0000D56F0000D7710000D9730000E27C
      0000A8450800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A241
      0E00D2741300CC690700CD670000CE680000D06A0000D26C0000D36D0000D56F
      0000DD770000A7430800FFFFFF00EDD7CB00AB440700E1A56900DE985400D88C
      4000D7842F00D67C1F00D5751000D4700100D6700000D8720000DB740000E079
      0000AE572400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEDACD00AB46
      0C00E1A56900DC975200D88B3E00D6822D00D57B1D00D4740E00D46F0000D670
      0000D8720000DB750000DE780000B8623000FFFFFF00AB4C1C00D5905000DD9B
      5900D88C4000D6843000D57C2000D4751000D4700300D56F0000D7710000D973
      0000E27C0000A8480E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A64D1F00D482
      3000D0772200CE701300CD6A0500CE680000CF690000D16B0000D36D0000D46E
      0000D8720000D9730000AF4B0900F0DED200AB4B1F00D4812E00CF762100CE6F
      1200CD690600CD670000CF690000D16B0000D26C0000D46E0000D8720000D771
      0000AE4D0F00F5E5DC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A74A
      1E00D6853500D0782200CF711400CE6B0700CE680000CF690000D16B0000D36D
      0000D46E0000D7710000DB750000AF4B0900F1DCD000FFFFFF00A2410E00D274
      1300CC690700CD670000CE680000D06A0000D26C0000D36D0000D56F0000DD77
      0000A7430800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A03E
      0E00D1792100CC6E1500CB690A00CB660100CC660000CE680000D06A0000D16B
      0000D9730000A3410800FFFFFF00FFFFFF00E3AE9500AF501300E3A66900D993
      4D00D6883B00D5812C00D47B1F00D4751200D4710800D5700100D6710000DC76
      0000AD552400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5B3
      9B00B0531700E1A46800D9904A00D6873A00D5802B00D4791D00D3741100D370
      0500D56F0000D6700000D9730000C1653000FFFFFF00EFD5C800A33F0600DE9E
      5E00DA945000D6883C00D5812D00D47A1F00D3751300D3710900D46F0100D670
      0000DD790000A5460E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5491F00D385
      3A00CF7C2E00CE741F00CC6E1300CC690800CC670000CD670000CF690000D26C
      0000D7710000B04A0000E8BCA100FFFFFF00B4501F00D3843A00D07A2D00CD74
      1F00CC6E1300CB690800CC660000CD670000CF690000D16A0000D6700000AD47
      0100EBC6B100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A448
      1E00D5894000CF7C2E00CE752000CD6F1400CC6A0900CC670000CD670000CF69
      0000D26C0000D8720000B04B0000E8BA9E00FFFFFF00FFFFFF00A03E0E00D179
      2100CC6E1500CB690A00CB660100CC660000CE680000D06A0000D16B0000D973
      0000A3410800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009D3B
      0E00D17E2E00CC742500CB6F1A00CA6B1100CA680900CB670400CC680000CE69
      0100D6710200A23F0800FFFFFF00FFFFFF00FFFFFF00C77E5B00BC6A3100DFA0
      6300D88E4900D5873B00D4812E00D47C2300D4781900D4751200D5750D00DA78
      0A00AA542400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CA815F00BF6F3500DE9F6000D68D4700D5863A00D4802D00D37B2200D377
      1800D4751100D5740C00D7750800C1653000FFFFFF00FFFFFF00E1AB9200AD4A
      0A00DFA26500D7904C00D5873C00D4812F00D37C2400D3781B00D4751300D575
      0E00DD7B0B00A4440E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4471F00D489
      4500CF813A00CD792D00CC732100CB6F1700CB6A0E00CB680500CC670100D16A
      0000B8520000D08C6600FFFFFF00FFFFFF00B44E1F00D4894500CE803900CD79
      2C00CC732100CB6E1600CA6A0D00CB670500CB660100D26C0000B54F0000D698
      7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A346
      1E00D68E4D00CF803B00CD7A2D00CC742200CB6F1700CB6B0E00CB680600CC67
      0100D16A0000B9530000CF8A6300FFFFFF00FFFFFF00FFFFFF009D3B0E00D17E
      2E00CC742500CB6F1A00CA6B1100CA680900CB670400CC680000CE690100D671
      0200A23F0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B39
      0E00D1833D00CC7C3500CB762A00CB732200CB701C00CB6E1700CC6E1400CE6F
      1300D57816009F3D0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00AB512B00CE87
      5000DB9B5F00D68E4B00D5883F00D4833400D4802C00D57E2500D77D2100DB83
      2000A9512600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AC542C00CF8B5400DA9A5C00D68D4900D5873E00D4833400D47F
      2B00D47D2500D67E2200D67A1C00BF613200FFFFFF00FFFFFF00FFFFFF00C47A
      5600BA642700DDA06500D68F4D00D5884000D4843600D4802D00D47E2700D57D
      2200DD852000A3431100FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1472100D28E
      5000CF864800CE7F3A00CC7A3000CB752600CB711E00CB6E1700CE6F1200C261
      0B00B3603200FFFFFF00FFFFFF00FFFFFF00B54E2200D28C4E00CF864700CD7F
      3A00CC792F00CB742600CB711E00CB6E1700CE6F1200BF5C0800BA694000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A246
      2100D5935800CF874600CE7F3B00CC7A3000CB752600CB711E00CB6E1600CE6F
      1200C2620900B25D3100FFFFFF00FFFFFF00FFFFFF00FFFFFF009B390E00D183
      3D00CC7C3500CB762A00CB732200CB701C00CB6E1700CC6E1400CE6F1300D578
      16009F3D0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009937
      0E00D1894A00CD844600CC7E3C00CC7B3400CC782E00CC772900CD772700CE77
      2600D7822A009C3B0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1DED600A13D
      0D00DA9E6800D99A5F00D6905000D58C4600D5893F00D6863900D6863400DB8B
      3600AA522A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F2DFD700A23F0D00DB9F6900D9985E00D6904F00D58B4600D588
      3E00D5863800D7883600D6812C00C0623500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A94C2700CC824800DB9D6500D6915300D58C4800D5894000D5873A00D686
      3600DD8C3500A1401300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A2462400D292
      5B00D18E5600CE864900CD803F00CC7C3600CC782E00CC782A00CC752400A545
      1000F5E4DD00FFFFFF00FFFFFF00FFFFFF00B34C2400D2915B00D18D5500CE85
      4800CD803F00CC7C3600CB782E00CE782B00C96F2000A8481800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A246
      2400D6986400D08D5600CF864900CD803F00CC7C3600CC782E00CC782900CC74
      2100A5441000F6E5DC00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099370E00D189
      4A00CD844600CC7E3C00CC7B3400CC782E00CC772900CD772700CE772600D782
      2A009C3B0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009833
      0E00D2915800CF8C5700CE874D00CD844600CD814000CE803C00CE803A00CF80
      3900D78B40009B380800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4BB
      A800A5420D00E1AB7A00D99B6300D7955900D7925200D7904C00D88F4800DC95
      4C00A74F2A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E4BAA700A6461100E1AB7900D99A6300D7955800D792
      5200D7904C00D9914B00D68A3E00BC5E3500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0DBD1009E360A00DA9D6800DB9F6900D7955A00D7925400D7904E00D890
      4A00DF964B009E3D1300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1432400D398
      6800D3956400D08D5800CF884E00CD844600CE814000D2864000A6410700E8C2
      B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1492400D4986700D1946300D08D
      5700CE884E00CD834600CF824100D1833E00A43D0400ECCEBF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A043
      2400D79F7100D2946200D08D5700CE884E00CD834500CE823F00D2843E00A53F
      0400E8C3B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0098330E00D291
      5800CF8C5700CE874D00CD844600CD814000CE803C00CE803A00CF803900D78B
      40009B380800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009832
      0E00D3996800D3976900D0905E00D08D5800CF8B5300D0894F00D0894D00D18A
      4C00D99654009A350800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CA8A6E00B5623200E2B18200D99F6C00D99B6400D9995F00DA995C00DFA0
      6100A64D2A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C7876B00B7663500E1AE8100D99F6C00D99B
      6500D99A6000DB9B6000D7914F00BB5D3500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E0B39E00A23E0500E1AF8100DBA27000D99C6600D99A6200DA9B
      5F00E0A05D009B3A1300FFFFFF00FFFFFF00FFFFFF00FFFFFF009F432400D69F
      7500D59D7300D2956700D0905E00CF8D5700D5925A00AF551B00D0937600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1492400D69E7500D39D7300D295
      6600D0905E00CF8D5700D5935A00A64B1300D1A28700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A042
      2400DAA77F00D49C7100D2956600D0905D00CF8B5600D4925800AE521700D095
      7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0098320E00D399
      6800D3976900D0905E00D08D5800CF8B5300D0894F00D0894D00D18A4C00D996
      54009A350800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009631
      0E00D7A07900D6A17B00D39A7000D2976A00D2956500D2936200D3936000D494
      5F00DCA06A0097310800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AB563900CA8A5F00E1B28800DCA67800DCA47300DCA37000E2AC
      7700A3492A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA553600CD8F6300E1B28900DCA6
      7800DCA47400DDA77400DA9A6100B8593500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6816200B45D2500E6B99200DCA87C00DCA57600DCA5
      7300E3AB730099361300FFFFFF00FFFFFF00FFFFFF00FFFFFF009F422400D8A7
      8400D7A68300D49E7600D3996E00D79D6F00BF723F00AF603E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0492400D8A88400D7A78300D49E
      7600D3996E00D69E7000BA6A3700AF6E4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F41
      2400DCAF8F00D6A48100D49D7500D4986D00D69C6E00BE703B00B1634000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0096310E00D7A0
      7900D6A17B00D39A7000D2976A00D2956500D2936200D3936000D4945F00DCA0
      6A0097310800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009731
      0E00DAAB8800D9AD8D00D7A68300D6A27D00D6A07800D69E7500D69E7300D79F
      7200E0AC7E00942C0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A13C1600DDB18C00E2B89300DFB08700DFB08500E5B8
      8F00A1472A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009D391200E0B39000E2B8
      9300DFB08800E3B28B00DCA47400B6573500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A7502F00C9855700E6BE9C00DFB18B00E1B2
      8900E5B7880097341400FFFFFF00FFFFFF00FFFFFF00FFFFFF009F412400DBB1
      9400DCB09200D8A88800D9A98600D0956D00A03D1800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0492500DBB19300DCB09300D7A8
      8800D9A98600CD906700A3452100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A041
      2400E0BBA000DAB09100D7A78500D8A88400CF936800A03E1900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0097310E00DAAB
      8800D9AD8D00D7A68300D6A27D00D6A07800D69E7500D69E7300D79F7200E0AC
      7E00942C0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009A39
      1700DCB39A00E0BBA400DBB19500DAAE9000DAAC8B00D9AA8800DAAA8600DBAD
      8900E5BD99009B381600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E9C8BA00A13F0C00ECCCB200E6C1A200E6C19F00E6BE
      9D00AC5C4000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8C2B300A23F0C00EDCD
      B300E6C1A300E8C4A600D8A27700C06C4C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F2E0D9009C330F00DEB18F00E9C5AA00E7C2
      A300E4B99400A44C2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA583B00D8AE
      9300E3C1AB00DEB89E00DFB699009D370300EBCBBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC624000D4A68A00E4C3AE00DEB8
      9F00DDB598009E390700EFD5CB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A957
      3A00D9B09600E1BEA900DEB79B00DDB496009D360400EBCCC000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009A391700DCB3
      9A00E0BBA400DBB19500DAAE9000DAAC8B00D9AA8800DAAA8600DBAD8900E5BD
      99009B381600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C288
      7100AA542800ECD6C700EBD3C200E9CDBB00E8CBB700E8CAB300E8C9B200ECCD
      B500BB744B00BF876F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D39B8300B1603100EED2B900F0D5BF00B565
      3A00DAAD9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE927900B465
      3900F1DBC400ECCDB400A74A1400E4B7A500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5BCAB00A0370100EBCFB700F5E2
      CF00B5663C00D7A59100FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8A99400AA50
      2000E3C5B200E3C3AE00A34F1F00CE9E8500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4B5A200A2411000DDB7A200E1BE
      A900A94E1F00DEAA9600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2A7
      9300A54A1800E3C4B100E6C7B400A94F1F00DAA28A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2887100AA54
      2800ECD6C700EBD3C200E9CDBB00E8CBB700E8CAB300E8C9B200ECCDB500BB74
      4B00BF876F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C28770009A38130098330800963208009633080096330800973308009B3A
      1300BE836C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C58C72009E3C1D009F422400D6A1
      8D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BE87
      6B009B3A1B00A1432600D9A99500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DAAB9800A8523600AA56
      3700D8A99500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4A1
      8A009F4323009E3F1D00BD8E7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDB2A100A9573A00A54F
      3300D5A18A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CD9F88009F4323009E3F1E00CF917700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C287
      70009A38130098330800963208009633080096330800973308009B3A1300BE83
      6C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00846150008661500084604F0084604F0084604F0084604F0084604F008360
      4F0083604F0083604F00987A6C007A73AB001923B7000B15B3000B15B0000B13
      AE000B12AA000B11A6000B0FA4000B0E9F000B0C9C000B0B9A000B0B9B000B0B
      9B000E0E9E001A1AA300A6A6D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDEB
      DD0077B177003488340018741400177413003284320074AA7400D9E7D900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DAEDF5003399C4002190BD007CBDD700DDEDF500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700FFFFFF00FFFFFF00FFFFFF00C4C4C400E1E1
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0085615000F8E4D300F2DECC00F2DECC00F2DECC00F2DECC00F2DECC00F2DE
      CC00F2DECC00F2DFCC00F8ECE2001B2AC400344CDF000019D200001ACE000016
      CC000018CB000015C4000013C0000011BC00000EB800000EB8000007AE000009
      AC000007A70000039F001818A200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BD744700A34108009F3B08009A350400727678008F8C8A009390
      9100989696009D9A9B00A19F9F00A4A09E009D999700BFBEBB00609E5F000779
      04000D820000178600001D8100002A78000032720000236D00000C6B02005D82
      3D00D8BCA900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0090CEE6000C97C6000A9ECD00008CBF00017FB10043A3CD00A7D5E600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D4D4D400909090008E8E8E0092929200C6C6C60090909000979797007F7F
      7F009B9B9B00D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0086615000FFFDF200FAF4E800FAF3E900FAF3E900FAF3E900FAF3E900FAF3
      E900FAF3E800FAF4E800FCF8F200192DCD003757EF000022E500001FE2001944
      F600547BF900001CDD00001DD600001BD2000011CD00668BFB00385DEC000007
      BA00000EB8000006A5000B0B9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BC652800B85E1300CA7D2C00CA7C2B00C8792700878E9500C0BCB700CEB6
      9B00D7C2A900E2CCB400EDD6B800FEFEFE00FCFDFC0053A45300028B0300029E
      0400009A0000009800000097000000970000078D000025790000396D00001A6B
      00003F7B2800DBBEAF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DCDCDC00E9E9E900FFFFFF00FFFFFF00FFFF
      FF008BCEE80015A4CF0013A8D50000A0D30000A0D3000092C5000083B6001283
      B0006EB6D400D1E8F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDFDF009898
      9800A0A0A000E4E4E400C8C8C800AAAAAA0094949400D5D5D500D3D3D300A3A3
      A300969696007F7F7F008B8B8B00CDCDCD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0086615000FFFEF500FBF6EA00FBF5EC00FBF5EB00FBF5EB00FBF5EB00FBF5
      EC00FBF5EA00FBF6EA00FDF9F4001B32D0003D60F4000021ED000435F900CBD1
      E400F5F2E1005076F900001ADF000016D800577BF900FFFFF900F5FAFF003054
      EA000007BA000008A9000B0B9E00FFFFFF00FFFFFF00FFFFFF00FAEFE600C46D
      2A00BC621400C6782A00C6762700C6752800C675250080889100B1A09000CC75
      1A00CB7B2400CF802700D4821E00EDEDEB007DBE7D0006920B0007A31000019E
      0A0019B535006AD58B0013B12F00009700000097000000970000138500003B6B
      00001A6C00005F864000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00929292006969690067676700646464006E6E6E007E79
      79005977810016A7D40015A9D70000A0D30000A0D30000A1D40000A3D600009B
      CE00008ABD000079AC003696C10099CAE000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E800A8A8A8009E9E9E00DEDE
      DE00F5F5F500F4F4F400C2C2C200A4A4A400A8A8A800E8E8E800D3D3D3009F9F
      9F00A4A4A400A8A8A8009B9B9B008383830083838300C2C2C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0087635100FFFEF700FBF5EC00FCF6EC00DEC4B700DEC5B700DEC5B700DEC4
      B700DDC3B500DDC3B500ECDED6001E33D4004467FC00002DFA00C5CAE100E7E5
      DF00E7E7E400F9F5EA004B72F800426AF900FFFFF900FFFEFB00FFFFFF00F6FB
      FF00375CED000004AB000B0B9E00FFFFFF00FFFFFF00FFFFFF00C9762B00BF65
      1300C3742800C3732700C3722600C3732600C4712300848C9400A5948400C16A
      1A00C2712500C7782A00D0832E00D0E0CF000F8B110016AD230009A6170016B1
      3000E2EEE900FFFBFF00DCF8EA0012B53400009A000001990200009800001584
      00003A6E00000B6B0200D9E8D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFDFDF00767676007D7D7D006F6E6E0085848500AEA9AC00AFA8
      AB008D9DA60016A9D40019ABD80000A2D50000A2D50000A2D50000A1D40000A2
      D50000A1D40000A3D6000092C500007FB2000D76A30085A5B400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EEEEEE00B2B2B2009E9E9E00D8D8D800F4F4F400F2F2
      F200F1F1F100F2F2F200ADADAD009E9E9E009D9D9D00E8E8E800B3B3B3008D8D
      8D00A1A1A100A4A4A400A6A6A600AAAAAA00A0A0A000858585007B7B7B00B7B7
      B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0088625100FFFFF700FCF6ED00FCF6EE00DBC0B400DBC0B400DBC0B400DBC0
      B400DBC0B300DBBFB200EBDCD4001F37D700486FFF003B5CEC00F5EFD900E4E4
      E100E6E6E600EEEEEB00F5F4F000F5F4F600FEFDFA00FFFFFF00FFFFFF00FFFF
      FF0080A1FF00010FB6000B0BA000FFFFFF00FFFFFF00FFFFFF00CB6D1500C16F
      2500C1702500C16F2400C1702400C3702500C06E2100929AA200A9988B00B95C
      1200BA651E00C06D2300D595550073B172002DAC38000DAB22000DA81F00D8E5
      DB00F7F2F600F6F4F500FFFDFF00DEFAEB0012B63500009B0100019A03000098
      00002C770000226F000073AA7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C7C7C7008C8C8C007B7B7B00706B6F006AAB7F0083D09D0095CF
      A60083C1B1001BACD70019AEDB0000A4D70000A3D60000A3D60000A3D60000A3
      D60000A2D50000A3D60000A2D50000A3D60000A1D70023576D00B0AFAE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BCBCBC009E9E9E00D4D4D400F5F5F500F1F1F100F1F1F100F0F0
      F000D7D7D700DBDBDB00BCBCBC00999999008E8E8E00D5D5D500DEDEDE009292
      9200888888008C8C8C009F9F9F00A6A6A600A8A8A800ABABAB00A5A5A5008888
      880075757500AAAAAA00EBEBEB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0089635200FFFFFA00FCF7EF00FCF7EF00DBC2B800DBC2B800DBC2B800DBC2
      B700DBC2B600DBC0B500EBDCD500213CDC005680FF00002BFF004563ED00F5F1
      E100EAE9E700ECECEC00F1F1F100F7F7F600FDFDFD00FFFFFE00FFFFFF007494
      FD000017D100000AB5000B0EA300FFFFFF00FFFFFF00FFFFFF00D0721500BF6B
      2100BF6C2200BF6D2300BF6D2300C06E2300BF6C1F009DA5AD00B3A09400AE4B
      0800B35A1700BA641E00DAA471003597340049C55E0009A21600D0DDCF00F0EA
      EF00F8F0F700FFF9FF00FFFBFF00FFFFFF00DDFAEA0012B63600009B0100009A
      02000F8B00003373000031843100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C3C3C3008E8E8E007B7B7B00726A700052CA7A004FF1850052F1
      84003EDC8F0023ADDB001CB1DC0000A5D80000A5D80000A5D80000A5D80000A4
      D70000A4D70000A3D60000A3D60000A2D50000A7DC00225E7700A3A2A100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C4
      C4009E9E9E00D0D0D000F4F4F400F1F1F100F1F1F100F0F0F000D8D8D800D8D8
      D800F3F3F300FAFAFA00BDBDBD00A1A1A10099999900F4F4F400E1E1E1009696
      96009C9C9C009D9D9D008C8C8C008A8A8A009B9B9B00A7A7A700ABABAB00ADAD
      AD00AAAAAA008B8B8B007D7D7D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008A645300FFFFFA00FCF8F000FCF8F100DBC3BB00DBC4BB00DBC4BB00DBC3
      BB00DBC3B900DBC2B800EBDDD700253EDF00628BFF000240FF000035FF004364
      F000F1EFE700EEEEED00F2F2F200F7F7F700FDFDFC00FFFFFF006385FE000018
      DA00001AD200000FB9000B10A700FFFFFF00FFFFFF00FFFFFF00D3741500BE69
      2000BD6A2200BD6A2100BE6A2100BE6B2200BD681E00A8B1B900BCA99E00A23B
      0000AD4F1100B65E1900DDAA7E001A921D0058CD71004FAC4F00FBE9F900FBED
      F90082CA860000AA1900ABDEB300FFFFFF00FFFFFF00DDF9EA0012B53500009A
      0000009900003475000012761000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000929292007D7D7D00746B72004FC776004DE981004EE7
      7F003AD48E0028B2DD0021B4DF0000A7DA0000A7DA0000A7DA0000A6D90000A6
      D90000A5D80000A5D80000A4D70000A3D60000A8DE0022627C00A19F9E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D5D500A1A1A100CCCC
      CC00F3F3F300F0F0F000F0F0F000F0F0F000D8D8D800D8D8D800F1F1F100F4F4
      F400F5F5F500F8F8F800BBBBBB009D9D9D0095959500F6F6F600E2E2E2009393
      9300999999009C9C9C009E9E9E00A2A2A200939393008A8A8A0094949400A9A9
      A900ACACAC00B0B0B00072727200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008B655300FFFFFB00FCF8F200FCF8F200DBC6BE00DBC6BF00DBC6BF00DBC4
      BE00DBC4BC00DBC3BA00EBDDD8002543E2006C97FF000549FF000346FF00123B
      EE00E3E5E800EDEDEC00F2F2F200F7F7F700FEFEFD00FFFFFF003862FA000019
      DD00001DD6000011BD000B12AE00FFFFFF00FFFFFF00FFFFFF00D2731500BB67
      1D00BB671F00BC671F00BC682000BC692000B9661A00B0B9C100C6B2A8009F3D
      0500AB521800B35F1F00DAAB82001C951C006DD5870007A721007BB7770071BB
      6D000BB028001FB9410008AE2400ACDEB300FFFEFF00FFFFFF00DCF8E80012B4
      3200009A0000287E000014771100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00959595007E7E7E00756C730048C4720047E27B0048E1
      790035CE8C002EB7DF0022B6E10000A9DC0000A9DC0000A8DB0000A8DC0000A7
      D90000A7DB0000A6D90000A6D90000A5D80000A9DE00216782009F9E9D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0096969600F3F3F300F0F0
      F000F0F0F000F0F0F000D9D9D900D8D8D800F0F0F000F5F5F500F5F5F500F5F5
      F500F6F6F600FCFCFC00BABABA009898980097979700FDFDFD00E2E2E2009090
      900097979700999999009B9B9B009E9E9E00A0A0A000A3A3A3009D9D9D008B8B
      8B008E8E8E00A6A6A60075757500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C675400FFFFFE00FDF9F300FDF9F400DBC7C200DBC7C300DBC7C300DBC6
      C200DBC5BF00DBC4BC00EBDED9002847E60076A3FF00034EFF001A3BDF00E8E6
      E100EAEAE600EDEDEC00F1F1F100F6F6F600FCFCFC00FFFFFE00FFFFFF004068
      FB000019DB000013C1000B14B100FFFFFF00FFFFFF00FFFFFF00D2731500BB65
      1C00BA651F00BA651E00BA661E00BC661F00B8621A00BBC6CF00E4EBEF00D3DE
      E500C5D0D800B3BEC700C7CDD200329633006DD78B003FCA66001CBB45001EBC
      450027C1520024BD4A0021BA430007AE2500ACDDB100FFFBFF00FFFBFF00D8F4
      E40010B430001E830000338C3300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BABABA009A9A9A007E7E7E00776F740043C56E0041DC740042DB
      730030C98A0032BAE20029B9E30000AADD0000AADD0000ABDE0000A5D60000A4
      D60000A8DB0000A9DC0000A7DA0000A7DA0000ABE000216B89009E9C9A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0098989800F4F4F400F0F0
      F000DADADA00D8D8D800EEEEEE00F4F4F400F4F4F400F4F4F400F5F5F500F6F6
      F600F7F7F700FCFCFC00B7B7B7009494940094949400FFFFFF00E4E4E4008E8E
      8E009595950096969600989898009A9A9A009C9C9C009E9E9E00A2A2A200A5A5
      A500A5A5A5009090900074747400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008F665500FFFFFF00FDFAF500FDFAF500DBC8C300DBC8C400DBC8C400DBC8
      C200DBC6C000DBC4BD00EBDED900294BEB007CA8FF001D38CF00E4E2DA00E6E4
      E000E6E6E500EDEDEA00F7F5EF00FDFDF400FCFCF900FEFEFE00FFFFFF00FFFF
      FF004C73FD000015C6000B16B400FFFFFF00FFFFFF00FFFFFF00D2741400B861
      1C00B8621C00B8631C00B9631D00B9641D00BA641D009A765A00A07A5A00A57E
      5C00A57F5F00A27E5C00B79C820069A157004BC162006CD98E002AC85C0030C9
      61002EC75B0029C2540024BD4A0020B9410006AC2100A9DAAF00FFF8FF00FFF8
      FF008DE2AC000E7E000077B27700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B8B8B8009F9F9F007B7B7B00776E74003CC26A003BD56E003ED6
      6E0029C5880038BEE40029BAE40000ACDF0000ADE20000A7DD00009FD20000A4
      D40000A6D80000AADD0000A9DC0000A8DB0000ABE00021718F009A979600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009A9A9A00DFDFDF00D8D8
      D800EDEDED00F4F4F400F4F4F400F4F4F400F5F5F500F6F6F600F7F7F700F8F8
      F800F9F9F900FEFEFE00B7B7B7008F8F8F0092929200FFFFFF00E6E6E6008B8B
      8B00929292009494940096969600989898009A9A9A009C9C9C009E9E9E00A0A0
      A000A3A3A300A6A6A60076767600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008F675400FFFFFF00FDFAF600FDFBF700DBC7C300DBC7C400DBC7C400DBC7
      C300DBC6C000DBC5BE00EBDFDA002C4DEE0085B3FF001A34C900E0DCD800E5E4
      E000E6E6E300FCF8E8003A59ED004A69F300FFFFF600FDFDFA00FFFFFE00FFFF
      FF003962FD000017C9000B18B800FFFFFF00FFFFFF00FFFFFF00D3741400B560
      1900B6601C00B7601B00B7611B00B8611C00B9621C00BC631A00BB631800BC63
      1900BE641A00BF671B00C3702900C7B17E00179B1B0084E5A8004FD47C002FCB
      630031CB64002EC75B0027C0500022BC47001BB53B0003A91D009FD5A400C7E3
      CD001FB3340008790300DCEBDC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4B4B400A5A5A5007A7A7A00776E740032BE5E0031CF620034CF
      600020C082003EC3E60027BAE60000AEE30038AACB007B8D920078868900009F
      CE0000A5D60000A9DC0000AADD0000AADD0000AEE2002075940099969400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C00F1F1F100F3F3
      F300F3F3F300F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
      F900FBFBFB00FFFFFF00B6B6B6008D8D8D0091919100FFFFFF00EAEAEA008989
      890090909000929292009494940096969600989898009A9A9A009C9C9C009E9E
      9E00A0A0A000A2A2A20076767600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0091685500FFFFFF00FDFBF800FDFBF800DCC7C200DBC6C300DBC6C300DBC6
      C100DBC5C000DBC4BD00EBDEDA002E50F10092C0FF000F68FF001832C900E4E0
      DA00F8F3E3004057DD00003DFD000034FE004F6CF200FFFFF600FFFFFA00204C
      FC00001DE3000019CC000B1ABC00FFFFFF00FFFFFF00FFFFFF00D3741400B55C
      1900B55D1900B55D1900B55E1A00B65F1A00B6601B00B7611B00B8621C00B963
      1D00BA641E00BB661E00BB671F00CF915B0075A24C003AB54E0085E4A9004DD2
      7A002DCB62002FC85F0029C2540023BC48001EB83D0018B1320008A81D0004A8
      1700038E040065914300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B3B3B300ABABAB0079797900746C6F0072E2C40072EEC80071EB
      C00048D2C30040C5E40029BDE8001FB5DF00CCBAB500C7C4C200BDB2B0003B9C
      B80000ABDE0000AEE10000ACDF0000ABDE0000AEE2001E7A9B0097939200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F9F9F00F7F7F700F4F4
      F400F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9F900FAFAFA00FBFB
      FB00FDFDFD00FFFFFF00B6B6B600898989008F8F8F00FFFFFF00E0E0E0007F7F
      7F008F8F8F0091919100939393009494940096969600989898009A9A9A009C9C
      9C009F9F9F00A0A0A00078787800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0092695700FFFFFF00FEFCF900FEFCFA00DCC6C000DCC6C000DCC6C000DCC6
      C000DCC5BF00DCC4BD00EBDED9003055F4009CC9FF001371FF001069FF001D36
      CA004150CD000045FC00064AFF000241FF00002AFD00526EF1001C47F8000020
      ED000022E5000018CE000B1CC200FFFFFF00FFFFFF00FFFFFF00D3751400B25A
      1600B35A1900B35B1800B45B1500B4581200B5581000B7591100B65C1300B75D
      1200B85E1300BA611400BB611600BC651800D7A47600518F33003AB64E0082E4
      A8006ADB91003DCC6B0026C2510020BC48001DB73D0018B2320016B12B000895
      10004B943100C58F7600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AFAFAF00AEAEAE0079797900716A6B00ABF8FA00B1FFFF00B5FF
      FF0073E0F50045C9E4002ABFEA0035BDE200EEDDD800F5F1F000DED0CC003DAB
      CB0000B0E40000AEE10000ADE00000ACDF0000AEE3001D7EA00097929100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A1A100F9F9F900F4F4
      F400F5F5F500F6F6F600F8F8F800F9F9F900FAFAFA00FBFBFB00FDFDFD00FFFF
      FF00F1F1F100E9E9E9009F9F9F007474740082828200EBEBEB00E6E6E6007B7B
      7B007C7C7C007F7F7F008C8C8C00929292009494940095959500979797009999
      99009B9B9B009D9D9D0076767600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00936A5600FFFFFF00FEFCFB00FEFDFB00DCC6C000DCC6C000DCC6C000DCC6
      BE00DCC4BE00DCC4BB00EBDDD800204AF500D2EEFF008ABEFF007EB4FF0072A7
      FF006591F9006396FF005B8BFF005180FF004873FF003860FE00355BFA003154
      F3002C4CED002C42D9002032C900FFFFFF00FFFFFF00FFFFFF00D3751400B056
      1500B1581600B2571300B16F3E00AF978400AD927E00AE937D00AE937D00AE94
      7F00AE947E00AE947C00AE937C00AE937D00AD947C00CDBEB00070AD6300189E
      1E004EC56A0070DC940067D7890051CE720041C55D0026AC37000E8E0F0072A4
      4B00E0B684009F401700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AEAEAE00B1B1B1007A7A7A006D696900CAFDFD00CCFFFF00D0FF
      FF0081E0F20049CDE50030C1EB0000B1E60087CEE200ACC8D10095BAC40000B1
      E50000B0E30000B0E30000AFE20000AEE10000B1E5001C82A70095918E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300F9F9F900F6F6
      F600F7F7F700F8F8F800F9F9F900FAFAFA00FBFBFB00FCFCFC00FEFEFE00F4F4
      F400EAEAEA00FFFFFF00AFAFAF00828282008B8B8B00FFFFFF00EDEDED007C7C
      7C00888888008C8C8C00828282007F7F7F008383830092929200969696009898
      98009A9A9A009B9B9B0078787800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00946C5700FFFFFF00FEFDFC00FEFDFD00FEFEFD00FEFEFD00FEFEFD00FEFD
      FD00FEFDFC00FEFDFB00FEFCFC00ABB8FB002B53F900365AF6003458F4003256
      F1003153EF002E4FEC002E4DE9002D4AE5002C48E4002743E1002640DC001F37
      D200223AD500273CD100ADB3EB00FFFFFF00FFFFFF00FFFFFF00D3751400B055
      1300B0551600B0541100B0785100BFC8CD00D7D9DC00D6D9DB00D8DADC00D7DA
      DC00D7D9DB00D8DADC00D6D8DA00D5D7D900D4D7D900D1D4D600DCDEDF00CEDF
      CF0075B87600379E38001E9A21001E982000339834006CA45800CAB68100D9A2
      6800CC812F009E3E1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AAAAAA00B5B5B5007B7B7B006B696900EEFFFF00EAFFFF00F0FF
      FF0092DEF2004ED0E80031C3ED0000B4E80000B3E80000B4E80000B3E80000B3
      E70000B2E50000B1E40000B0E30000AFE20000B1E5001B86AB00958F8F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A4A400FBFBFB00F9F9
      F900F9F9F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FFFFFF00FFFFFF00E1E1
      E100FFFFFF00FFFFFF00B2B2B2008080800088888800FFFFFF00F4F4F400CCCC
      CC00AEAEAE0087878700898989008D8D8D008E8E8E0083838300828282008888
      8800989898009A9A9A007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00956B5900FFFFFF00FEFEFD00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00FEFDFD00FEFDFC00FEFCFC00FEFDFB00FEFDFB00FEFDFA00FEFC
      FA00FEFCF900FEFCF800FDFBF700FDFAF700FDFAF600FEFAF600FAF1E900BAA6
      9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3751400AC51
      1200AE531300AE500E00AF764E00C8CED100E9E9E900E9E9E900E9E9E900EBEB
      EB00ECECEC00EDEDED00EBEBEB00EAEAEA00E9E9E900E7E7E700E4E4E400E4E4
      E400E8E8E800EAEAEA00EAEAEA00EAEAEA00D5D6D900C4A68600CD823200C97C
      2D00CB7F2E009E3F1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ABABAB00B9B9B9007C7C7C0069696900FFFFFF00FFFEFD00FFFF
      FD009BDEF10055D4EA0034C5EF0000B6E90000B6E90000B6E90000B5E80000B4
      E70000B4E70000B3E60000B2E50000B1E40000B2E600178AB100948F8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A6A6A600FEFEFE00F9F9
      F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00E9E9E900FAFA
      FA00FFFFFF00FFFFFF00AEADAE00A4A4A400A4A4A400EEEEEE00AAAAAA009191
      9100B3B3B300D2D2D200C0C0C000A1A1A100898989008D8D8D00909090009090
      900084848400848484007A7A7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00966C5800FFFFFF00FEFEFE00FFFFFF00E0CFCE00E0D0CF00E0CFCD00DFCD
      CA00DFCDCA00DFCBC800DFC9C500DFC8C200DFC7BD00DFC5BB00DFC3B800DFC1
      B400DFC0B100DFBFAC00DFBFAC00E1C2B000FCF7EF00FDF7F000F6E6D8008560
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3751400AC4E
      1000AC501100AD4E0D00AF764D00CBD0D400EBEBEB00EAEAEA00EEEEEE00D2D2
      D200CECECE00CECECE00CECECE00CECECE00CECECE00CFCFCF00CDCDCD00CECE
      CE00CDCDCD00DCDCDC00DADADA00DADADA00BABDC100B0886000C9772600CA7B
      2B00CC7E2C009E3F1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A8A8A800BABABA007D7D7D006B6B6B00FFFFFC00FFF9F400FFFB
      F40094DAED005DD9EC002FC5EF0000B8EB0000B8EB0000B7EA0000B7EA0000B6
      E90000B5E80000B4E70000B3E60000B2E50000B4E800168FB700938D8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A8A800FEFEFE00FCFC
      FC00FCFCFC00FDFDFD00FEFEFE00FEFEFE00FFFFFF00FAFAFA00E9E9E900FFFF
      FF00FFFFFF00F4F2F300AAACAA00ACA9AC00B9B8B90099999900BFBFBF00FFFF
      FF00D2D2D200A6A6A6009B9B9B00BCBCBC00C6C6C600B0B0B000999999008B8B
      8B0092929200949494007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00976D5900FFFFFF00FFFFFF00FFFFFF00DDCBC900DDCBCB00DDCAC900DDC9
      C600DDC9C600DCC7C300DCC5C000DCC3BC00DCC2B900DCC0B500DBBEB200DBBD
      AF00DBBAAA00DBB9A700DBB9A700DEBEAB00FCF7EF00FDF7F000F6E6D7008660
      4F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3751400A94D
      0F00AB4E1000AB4C0A00AE754D00CED4D700EEEEEE00EDEDED00F1F1F100CFCF
      CF00C9C9C900CACACA00CACACA00CACACA00CACACA00CACACA00CBCBCB00CBCB
      CB00CACACA00DDDDDD00DDDDDD00DCDCDC00BDC0C300B2885F00C8762400C87A
      2A00CA7D2D009E3F1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A4A4A400BCBCBC007F7F7F006E6F7000FFFFF600FFF5EC00FFF7
      EC0091D8E90064DEEE002EC7F00000BAED0000BAED0000B9EC0000B8EB0000B8
      EB0000B7EA0000B6E90000B4E70000B3E60000B5E8001493BC00938D8A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAAAAA00FFFFFF00FCFC
      FC00FDFDFD00FEFEFE00FFFFFF00FFFFFF00FFFFFF00E1E1E100FFFFFF00FFFF
      FF00FFFFFF00C0CAC30088F09F00ACD7B2009F9DA000EAEAEA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F6F600C5C5C500A2A2A200A8A8A800C1C1C100BFBF
      BF00B1B1B1009C9C9C007E7E7E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00986E5B00FFFFFF00FFFFFF00FFFFFF00DDCBC900DDCBCB00DDCAC900DDC9
      C600DDC9C600DCC7C300DCC5C000DCC3BC00DCC2B900DCC0B500DBBEB200DBBD
      AF00DBBAAA00DBB9A700DBB9A700DEBEAB00FDF8F100FDF8F100F7E7D9008661
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3751400A749
      0D00A94B0E00A9490A00AE754D00D0D6D900F1F1F100F0F0F000F4F4F400EEEE
      EE00ECECEC00EDEDED00EBEBEB00EAEAEA00E8E8E800E6E6E600E5E5E500E1E1
      E100DFDFDF00E1E1E100DDDDDD00DDDDDD00BDC1C400B1875F00C9752300C779
      2B00C97E2B009E3F1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A2A2A200BFBFBF008181810072737400FFFAED00FFF1E400FFF3
      E4008AD4E60070E4F1002FC8F30000BCEF0000BBEF0000BBEF0000BAEE0000B9
      EC0000B8EB0000B7EA0000B6E90000B4E70000B5E9001196C200918A8700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABABAB00FFFFFF00FFFF
      FF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00E7E7E700FBFBFB00FFFFFF00FFFF
      FF00FBF8FA0081A98D0072DC9000ACB7AD00FFFFFF00FFFFFF00FFFFFF00FFFE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E800BBBBBB00A4A4
      A400D7D7D700A3A3A300A9A9A900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099705A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFD00FEFDFC00FEFCFA00FFFDF900FEFD
      F900FFFDF900FFFDF700FEFBF700FDF8F300F9F5ED00F5F0E800E9D6C8008662
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4761500A747
      0C00A7490D00A8470700B0754F00D4D9DD00F4F4F400F3F3F300F7F7F700E7E7
      E700E6E6E600E7E7E700E5E5E500E4E4E400E3E3E300E0E0E000E0E0E000DDDD
      DD00DADADA00E3E3E300E0E0E000DFDFDF00BEC2C500B1876100C7732400C878
      2900CA7C2C009E3F1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A0A0A000C3C3C3008383830079787700FFF6E300FFEDDC00FFEF
      DC0084D1E30076E7F3002ECAF30000BEF20028BCE7002BBEE80000B6EA0000B7
      ED0000B8ED0000B7EC0000B7EB0000B6EA0000B6EA000F9BC6008F878400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ACACAC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F6F600E4E4E400F9F9F900FFFFFF00FFFFFF00FFFF
      FF00CECDCE00C0BEBF00B9B5BA00E3D6C700FFF3DF00FFF4E600FFF7ED00FFFB
      F600FFFCFB00FFFFFF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE0095959500AEAEAE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A6F5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFDFC00FEFCFA00FFFDFB00E6DC
      D700D9CBC200E0D3CC00DACCC500D5C5BE00C8B6AD00BBA49A0097756500A78D
      8100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4761500A444
      0A00A6460B00A6440600AF744E00D5DBDE00F7F7F700F6F6F600FBFBFB00D0D0
      D000C9C9C900C9C9C900C9C9C900C9C9C900CACACA00CACACA00CACACA00CBCB
      CB00C9C9C900E2E2E200E0E0E000E0E0E000C0C3C600B1876000C7742200C677
      2A00C87B2A009E3F1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009E9E9E00C3C3C300868787007D7B7B00FFF0DB00FFE9D400FFEA
      D40081D1E00082ECF6002ECAF60000BEF3008FCAE100FFECE700FFE7E500EEDD
      E200BDD3E0008BCAE1005FC3E20026BBE60000B7EB000B9ECC008F888400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00FFFFFF00EEEE
      EE00E6E6E600E6E6E600F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDF
      DF00C5C5C500C3C4C400C0BDB700FFE9BC00FFE9C300FFEBCA00FFEED200FFF0
      D900FFF3E100FFF7E900FFF9F200FFFEFB00FFFFFF00FFFFFF00CBCBCB009191
      9100CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009B705B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFD00FEFDFC00FEFCFA00FFFFFF00BBA2
      9500A1807200A7897800A5836F00A37F6700B0886600936C5400A3867900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4761500A342
      0900A4440A00A5420400AF744E00D9DFE200F9F9F900F9F9F900FEFEFE00DDDD
      DD00D9D9D900DADADA00D8D8D800D7D7D700D8D8D800D7D7D700D6D6D600D5D5
      D500D3D3D300E3E3E300E2E2E200E0E0E000C1C4C700B1876000C6722200C778
      2800C87A2B009E3F1400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009D9D9D00C7C7C70088888800817F7E00FFECD300FFE5CC00FFE7
      CD007ACEDD008BF1F6002ECDF60000C0F5008AC8E000FFEFED00FFE9E900FFE6
      E500FFE2E100FFDEDD00FFDBD800CECCD60000B5EB0008A1D0008B838000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ACACAC00EBEBEB00FAFA
      FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800DCDCDC00CCCC
      CC00CBCBCC00C7C7C800B9AA8F00D0BB9600E1CCA100F2DAAD00FEE3B700FFEA
      BF00FFEDC800FFF2D100FFEED500DBD3C500B4B1AD008C8C8C00BABABA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C725D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFD00FEFDFC00FEFCFA00FFFFFF00CBB7
      AD00C5AD9F00FFF5E000F9E1BB00F8D69C00C59E6E00A4877B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4771500A140
      0700A2410800A3400300B0734E00DCE1E500FBFBFB00FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F8F8F800F4F4F400F1F1
      F100ECECEC00E6E6E600E1E1E100E1E1E100C2C5C900B3886000C7732300C778
      2900C87A2900A0411400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009B9B9B00CACACA008A8A8A0086817E00FFE7C700FFE0C300FFE1
      C20075CDDA0094F6F9002ACEF90000C3F80094C9DF00FFF8F500FFF0EF00FFEA
      E900FFE6E500FFE0E000FFDBDA00CAC8D40000B5EC0006A5D7008A817E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ACACAC00FFFFFF00FFFF
      FF00FFFFFF00F9F9F900F1F1F100E8E8E800DCDCDC00D8D8D800D6D6D600D2D2
      D200C1C1C1007D7D7C0074706A0085807600988E7E00A5998500A99F8A00ACA3
      8F00A7A1920095928E0085878700ACACAD00D3D3D300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009E725C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FEFDFC00FEFDFB00FEFCFA00FFFFFC00CCBA
      B000BEA18B00F6DFB800F3CF9600C0986A009C7F7200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D47715009F3C
      0600A13F0700A23C0200AE734E00DCE2E500FCFCFC00FDFDFD00FFFFFF00DCDC
      DC00D6D6D600D6D6D600D7D7D700D6D6D600D5D5D500D4D4D400D3D3D300D4D4
      D400D1D1D100E5E5E500E3E3E300E1E1E100C2C5C800B4896100B4671E00B56B
      2400CB7B2900A5461400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009A9A9A00CCCCCC008C8C8C0089848000FFE2BC00FFDBB900FFDC
      B80073CCD7009DF9FC0025CDF90000C4F90041AED4008CC5DD00A5C8D900C2CD
      D900E0D5DD00FDDCDD00FFE1DB00DDC9D10000B4EA0002A9DB008B817E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1B1B100DEDEDE00E3E3
      E300E9E9E900ECECEC00EBEBEB00E8E8E800E4E4E400E1E1E100DCDCDC00CFCF
      CF00BABABA00A1A1A2008D8D8E0078787A0066666800696A6C00ADADAF009090
      9200ABABAB00D5D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C725C00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFDFD00FEFDFC00FEFCFA00FEFCF900FFFEFC00D7C9
      C100B28D7200F6D39A00C89F6E009F817500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D57816009E3A
      05009F3D0600A03A0100AE724F00DEE4E700FCFCFC00FCFCFC00FFFFFF00CFCF
      CF00C7C7C700C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900CACACA00CACA
      CA00C9C9C900E4E4E400E3E3E300E1E1E100C2C5C800B78A62007C461300824E
      1C00CC7B2A00AA4B1500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0098989800CECECE008E8E8F0090888000FFE2B600FFDCB200FFDC
      AF0072CED800A4FDFD0022CFFA0000C6F90000C6FA0000C3F80000C2F80000BE
      F30000B5EB0000ADE30000A8DE000DA8D90000B7EB0000ACDF008A7E7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDED00D9D9D900D0D0
      D000C5C5C500B5B5B500B6B6B600C0C0C000C8C8C800CFCFCF00D6D6D600DEDE
      DE00E3E3E300E1E1E100DFDFDF00DBDBDB00D7D7D700D3D3D300CACACA009D9D
      9D00DADADA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009D715D00FFFFFF00FEFEFD00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00FEFDFD00FEFDFC00FEFCFB00FEFCFA00FDFBF800FFFFFB00D3C2
      B900B7906A00CBA16F00A0817500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D47A1F009E3A
      03009E3B04009E390000AE704D00DEE4E700FBFBFB00FBFBFB00FFFFFF00F4F4
      F400F4F4F400F4F4F400F2F2F200F0F0F000ECECEC00EBEBEB00E7E7E700E5E5
      E500E1E1E100E6E6E600E1E1E100E1E1E100C2C5C900B38A6200A15C1900A663
      2100C8772800B0561D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0098989800D0D0D0009191920084817F008C827700908679009D88
      780041AFC600B3FFFF004FDAFF0015CEFE0000C7FA0000C4F80000C3F70000C1
      F50000BFF30000BDF10000BCF00000BAEE0000B9EC0000B0E500897E7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEBEB00E1E1E100D4D4D400C8C8C800BBBB
      BB00A8A8A800ABABAB00B4B4B400BABABA00B7B7B700A4A4A4009D9D9D00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009B715B00FFFFFF00FEFDFC00FEFDFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFDFC00FEFDFC00FEFCFB00FEFCFA00FDFBF900FDFBF700FFFEFB00CEBA
      B100A2795A009F7F6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5AF7C00BF59
      00009E3903009A330000AD6E4D00DDE3E600FBFBFB00FCFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FCFCFD00F9F9F900F6F6F600F2F2F200EFEF
      EF00ECECEC00E7E7E700E3E4E400E2E3E300C2C7CA00B2886200C8722400C777
      2700B7530600D2A07C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0096969600D2D2D2008F8F8F00929292008F9090008C8E8E008D8A
      8A005A9DAD003FBEDC0044C4DF0051CBE70059D2ED0050D6F50043D6FA003AD5
      FB0036D1F8002FCFF70029CCF60024CAF5001BC7F30000B5ED00867C7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0F0F000E2E2E200D5D5D500D7D7D700EBEBEB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C715D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B397
      8900A07F7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4AD
      7800D2781B00D06A0300CD8E4F00C8CACD00C8C6C300C9C7C500CAC7C500C9C6
      C400C7C3C100C3C2BF00C2BEBB00BEBDBA00BBB9B600BAB6B400B6B5B100B3B1
      AE00B0AEAB00ADABAA00ACA8A600A9A7A400A6A8A900B6835300C35C0100BF63
      1900D5A17800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0097979700D9D9D900BCBCBC00BFBFBF00BDBDBD00B6B6B600B5B4
      B400B4AEAD00AFA6A600AFA5A400ABA2A100A39B9900A39996009E9592009191
      920088969A007C969D006E949E006697A5005792A40061838D007F7C7C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A715D009D725F009B715D009C715D009A715D009A715D0099705B009870
      5C00986F5A00976D5B00966E5900956C5A00946B5900936A5800936C5900AB8F
      8200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C1C1C100A2A2A200A1A1A1009F9F9F009C9C9C009B9B9B009B9B
      9B0098989800949494009494940092929200919191008E8E8E008B8B8B008B8B
      8A008A8A8A008988870084828100858180008A86850092909000BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00846150008661500084604F0084604F0084604F0084604F0084604F008360
      4F0083604F0083604F00835F4E00825F4E00825F4E00815F4E00815E4D00805E
      4D00805D4E007F5D4C007F5D4D007E5C4B007E5C4C007D5B4B007E5D4D007B5B
      4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A982
      8200A1747400AE848400C4A5A500D9C6C600EFE8E800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBEE
      E400F8DFC700F4CFAA00F0BF8E00EBB17C00E6A96E00E1A16600E2A06100DC99
      5600DD9B5900E0A46C00E7BC9600F1DED000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00846150008661500084604F0084604F0084604F0084604F0084604F008360
      4F0083604F0083604F00835F4E00825F4E00825F4E00815F4E00815E4D00805E
      4D00805D4E007F5D4C007F5D4D007E5C4B00AB958A00BCAFA6008C8982008C80
      7A00C3C3C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0085615000F8E4D300F2DECC00F2DECC00F2DECC00F2DECC00F2DECC00F2DE
      CC00F2DECC00F2DFCC00F2DDCC00F2DDCB00F2DDCB00F2DECA00F2DCCA00F2DC
      C700F3DBC700F1DAC400F1D9C200F2D8C000F0D7BE00F1D6BD00F5D9BD007C5B
      4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7DBDB00A774
      7400D6A8A800F4E5E500D9BDBD00C49D9C00AD7F7B00A97B7800C1999700D3B8
      B800E6D7D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF3E000FDE3B500FDC19000F9C4
      9D00F9D0B500FBD8C800FBE0D700FCE2DB00FCE1D800FBDDD300F8D5CA00F3CC
      BC00ECBEAA00E1AA8600D9905800CE6F1B00D0731600FDDFBE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0085615000F8E4D300F2DECC00F2DECC00F2DECC00F2DECC00F2DECC00F2DE
      CC00F2DECC00F2DFCC00F2DDCC00F2DDCB00F2DDCB00F2DECA00F2DCCA00F2DC
      C700F3DBC700F1DAC400F1D9C200F2D8C000F3E3D5005C7CEF008A93A400CDC7
      C20088888700BEBEBE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0086615000FFFDF200FAF4E800FAF3E900FAF3E900FAF3E900FAF3E900FAF3
      E900FAF3E800FAF4E800FAF2E800FAF2E700FAF2E700FAF3E600FAF1E600FAF2
      E500FAF2E400F9F1E200F9F0E000F9EFDE00F8ECDB00F9EDD900F4DCC4007B5A
      4900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4D4D400AB77
      7700D9AEAE00FFFBFB00FFF7F700FFFBF800C8CDFE00627DFB00F1D6CF00D0AE
      AE00B98F8F00A36F6F00B2848400C8A4A400DBC5C500EFE4E400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDEED600FDCA9700FDDEC500FEEAE900FFF3F300FFF4
      F100FFEEEA00FFECE500FEE8DE00FEE4D900FBE0D200F9DBCC00F6D4C300F2CB
      B600EEC1A800E6B69B00E1AA8E00D89E8000CF8B6900CB660D00FDDCB800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0086615000FFFDF200FAF4E800FAF3E900FAF3E900FAF3E900FAF3E900FAF3
      E900FAF3E800FAF4E800FAF2E800FAF2E700FAF2E700FAF3E600FAF1E600FAF2
      E500FAF2E400F9F1E200F9F0E000F6ECDE005D81F2002A76FF004BADFF00E0E6
      E400CFCBC700B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0086615000FFFEF500FBF6EA00FBF5EC00FBF5EB00FBF5EB00FBF5EB00FBF5
      EC00FBF5EA00FBF6EA00FBF4EB00FBF4E900FBF4EA00FBF5E800FBF3E900FBF3
      E700FCF4E600FAF2E500FAF1E500F9F0E100F9EFE000FAF0DE00F4DEC6007D5B
      4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFCCCC00B07D
      7D00DDB4B300FFF8F700FFF4F800FFF7F500B3BAF7007A8FFA00FFFBF300FFF4
      F400FFF5F500FFF8F800F6E1E100DCC0C000C7A0A000AF808000A36E6E00BA90
      9000CFB1B100EDE0E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCD2AE00FAD6B300FFFFFF00FFFFFF00FFF6F500FFF1EE00FFEF
      EA00FFEDE600FFEBE200FFE8DD00FFE5D900FCE1D300FADCCD00F7D7C500F3CD
      B900EEC3AB00E8B79C00E3AA8C00DC9E7C00D18F6A00C2754600F3AE6400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0086615000FFFEF500FBF6EA00FBF5EC00FBF5EB00FBF5EB00FBF5EB00FBF5
      EC00FBF5EA00FBF6EA00FBF4EB00FBF4E900FBF4EA00FBF5E800FBF3E900FBF3
      E700FCF4E600FAF2E500F6EDE5005981F5002E79FF0056B4FF0068D5FF005BBD
      FF00AEAEAE009E9C9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0087635100FFFEF700FBF5EC00FCF6EC00DEC4B700DEC5B700DEC5B700DEC4
      B700DDC3B500DDC3B500DDC2B300DDC1B200DDC1B000DDBFAE00DDBEAB00DDBD
      AA00DDBCA800DDBAA500DDBAA500DFBEA900FAF1E200FAF0E100F3DFC9007C5B
      4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBC6C600B481
      8100E1B8AE00FFE7BF00FFE1B600FFE7BD00A2A6DE008D9AED00FFF5EB00FFF2
      F400FFF1F400FFF0F200FFF0F100FFF2F200FFF2F300FFF5F500FFF0F000ECD2
      D200C9A3A300C0999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFBF700F9C28C00FFFFFF00FFFEFF00FFFCFB00FFF6F300FFF3EF00FFF3
      ED00FFF3F000FFEFE900FFECE100FEE8DC00FCE2D500FADECF00F9D8C800F5D1
      BE00F1C8AF00ECBCA300E5B09100D59C7A00CA896500C7825F00E98E3100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0087635100FFFEF700FBF5EC00FCF6EC00FCF6EC00FCF6EC00FCF6EC00FCF6
      EC00FBF5EC00FBF5EC00FBF5EB00FBF5EB00FBF5EA00FBF4EA00FBF4E900FBF4
      E800FBF3E800F6EFE700567CF7002F7BFF0059B7FF006CD6FF005FC0FF003B8F
      FF003F70FB00D3D1CD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0088625100FFFFF700FCF6ED00FCF6EE00DBC0B400DBC0B400DBC0B400DBC0
      B400DBC0B300DBBFB200DBBEB100DBBDAE00DABBAC00DABAAA00DAB9A800DAB7
      A500DAB6A200DAB5A000DAB5A000DDBAA400FAF2E500FBF3E400F5E0CC007D5C
      4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7BEBE00B884
      8500E4C1C200FFFBFD00FFF6F900FFF8EC00919EED00A1A4DE00FFE4B800FFDB
      AE00FFDDB300F3D6BB00F8DFCF00FEEAE400FFEFF100FFEDF100FFEFF100FFF2
      F300E4C8C800C8A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFAEC00FFDFC600FFFBFF00FFFEFE00FFFFFF00FFFAF700FFF7F400FFFB
      FC009DBF9100FFE8E700FFEEEE00FFF4EC00FFEADF00FFE4D500FCDECF00F3D2
      C000E5C1AB00D7AF9700CFA28500D4A07F00D69D7700CC8C6A00CC650400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0088625100FFFFF700FCF6ED00FCF6EE00FCF6EE00FCF6EE00FCF6EE00FCF6
      EE00FCF6ED00FCF6ED00FCF6ED00FCF6EC00FBF5EC00FBF5EB00FBF5EA00FBF4
      EA00EAE3D8004F6CE900307AFC005AB9FF006CD6FF005EBFFF003E8EFF002C5B
      E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0089635200FFFFFA00FCF7EF00FCF7EF00DBC2B800DBC2B800DBC2B800DBC2
      B700DBC2B600DBC0B500DBBFB200DBBEB100DBBDAF00DBBCAC00DABAAA00DAB9
      A600DAB7A400DAB6A100DAB6A100DDBBA500FBF3E600FBF4E700F4E2CE007E5B
      4C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3B6B600BE8A
      8A00E7C6C700FFFAFD00FFF7FA00FFFDF7008198FC00B3BCFA00FFF8F700FFF5
      F800EFE2E100DDCCC100EED3BD00FEDBB800FFD5A800FFD4A900FFDAB700FFE3
      CD00D8B5AF00CFB1B100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDF5DB00FCE4CF00FDF0EF00FEE9EA00FFEBEB00FFDFDE00FFE5EA00FFF4
      FF0013750D00007000001C63110087946D00E0BEB700EACCBF00DAC0B100DABF
      AE00DDC2AD00E3C2A900E7BEA200E0B19000D8A07D00CE906E00C6671500FCE7
      D200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0089635200FFFFFA00FCF7EF00FCF7EF00FCF7EF00FCF7EF00FCF7EF00FCF7
      EF00FEFCF800FEFCF800FEFBF800FDF9F400FDF9F300FDF9F300FCF8F300F7F3
      ED0097938A005B7297004AABF4006DD9FF005DBEFF003D8DFF003E6AF500BBB0
      B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008A645300FFFFFA00FCF8F000FCF8F100DBC3BB00DBC4BB00DBC4BB00DBC3
      BB00DBC3B900DBC2B800DBC0B600DBBFB300DBBEB100DBBDAE00DBBCAC00DAB9
      A800DAB8A500DAB7A300DAB7A300DDBBA700FBF3E700FCF5E800F6E3D200805D
      4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFAFAF00C390
      9000EAC6B600FFE5BA00FFE1B700FFEABF007185E900C5C1E300FFF2E500FEF2
      F200C8BEBF00D8CDD000F9EDF200FFF2F600FFF2F600FFF0F100FFE8E000FFE4
      CF00CFA79C00D8BFBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDF0CB00FAECE000FBF0E500FFF1E500FFF5ED00FFE7E20090A96E00127A
      08000082040055F2830059F88C0005931C0014711100FFF7F400FBE5DA00FFEC
      DD00F5DCC700EFCEB600E6C0A500E0B19200D8A48000D0946F00C7743100F8CB
      9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008A645300FFFFFA00FCF8F000FCF8F100FCF8F100FCF8F100FCF8F100FDFA
      F600F4F1EC00B4B2B000898A8E0083878E0083878C0081838600AEACAA00E5E2
      DD008D8D8B00E2D9D20079A4B5004DB1F8003A8BFF004371FA00EAE2E400AC96
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008B655300FFFFFB00FCF8F200FCF8F200DBC6BE00DBC6BF00DBC6BF00DBC4
      BE00DBC4BC00DBC3BA00DBC1B700DBC0B500DBBEB300DBBDAF00DBBCAC00DBBB
      AA00DBBAA800DAB7A400DAB7A400DDBDA800FBF4E800FCF4E900F5E4D3007F5C
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAA9A900C793
      9300EED4D500FFFCFE00FFF8FA00FFFBED00637EF600D6CCD900FFE7C400D5BC
      9A0080716000F0CFAC00FFE9C700FFE8CF00FFE9D900FFEBE700FFF0F400FFF6
      FA00C7A2A300DFCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDE6B800F9F1EE00FAEEE400FFF5EF00F1EBD600058C040006A619003EE0
      640053F17E005FFB8D005FFE940000700000FFFCFA0074A76700005A0000F5D9
      D100F9DFCD00EECEB700E8C2A700E1B49500DAA68500D2957200C77D4C00F5AF
      6A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008B655300FFFFFB00FCF8F200FCF8F200FDF9F200FDF9F200FDF9F200DAD7
      D3007A7F8500B5A99500E9CB9900F5CD8F00F5CC8F00F5D2A100C0B5A4004D53
      5A0090909200EEEDEC00EAE1D8004B70AA003D67ED00EFE9EA00F8EDE2007F5C
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C675400FFFFFE00FDF9F300FDF9F400DBC7C200DBC7C300DBC7C300DBC6
      C200DBC5BF00DBC4BC00DBC3BA00DBC1B700DBBFB300DBBEB100DBBCAF00DBBB
      AB00DBBAA800DBB8A500DBB8A500DDBDAA00FBF4E900FCF6EA00F5E4D200805E
      4C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5A0A000CC98
      9800EFDBDC00FFFCFE00FFF8FA00FFFFF8005277FF00E9E6F900FFFBFB00D5D2
      D8004B4E50003B49530066696900AF9C8F00FAD4BF00FFDFBE00FFD5A700FFD7
      A900C0908800E7D9D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDD3A400F9F0ED00FFF1E800FCEFE100009000001BBB2F0037D4550028C6
      420015AE2A0032C7500000860000DFDEC500D0D7BA000073000002990F004C84
      3D00FFE7DA00EFD2BA00E9C6AA00E3B79900DDA98700D59A7600C9866100E98D
      3100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C675400FFFFFE00FDF9F300FDF9F400FDF9F400FDF9F400DEDBD8008283
      8700E6C69300F8CF8E00F1CC9200EFCA9300F0CF9B00F3D7A600F4CA8D00F2D0
      9C0064676D009A9B9C00959492009F9A8C00E9E5E300FCF6EA00F5E4D200805E
      4C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008F665500FFFFFF00FDFAF500FDFAF500DBC8C300DBC8C400DBC8C400DBC8
      C200DBC6C000DBC4BD00DBC3BA00DBC2B800DBC0B500DBBEB200DBBDAF00DBBB
      AC00DBBAA900DBB9A700DBB9A700DEBEAA00FBF5EA00FCF5EB00F5E4D300825D
      4C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C39B9B00D29E
      9E00F3D3BF00FFE9C800FFEBD000FFF5D600466BF800F9ECE900FFF7F200F6F1
      F300617F900087A2B6005F6F71001E6C320004681500348A3D00EBE7E200FFFB
      FF00B88B8B00EFE5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      F700FCD5AC00F8F1EB00FFF6F90031A82B000BAD180027C33E000097000059A9
      4800BBCF9F00006E000096C18300FFF7F100006B000025C63C0027C93D000067
      0000FFE8DF00F2D4BE00EBC7AF00E4BA9D00DDAC8B00D59C7800CC8C6800CB64
      0300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008F665500FFFFFF00FDFAF500FDFAF500FDFAF500F7F5F000878A8E00E6C8
      9800F4D29700EECF9800EECF9700EECE9600EDCC8E00EDC78900F1D2A200F4D5
      9E00F2CF9E004D525A00DBD8D300E5E0D700FBF5EA00FCF5EB00F5E4D300825D
      4C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008F675400FFFFFF00FDFAF600FDFBF700DBC7C300DBC7C400DBC7C400DBC7
      C300DBC6C000DBC5BE00DBC4BB00DBC2B800DBC0B500DBBFB300DBBDAF00DBBC
      AC00DBBAAA00DBB8A600DBB8A600DEBEAB00FBF5EB00FCF5EC00F5E4D400815F
      4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0939300D7A3
      A300F4E5E200FFF7F000FFF2E500FFF7D9003C63F700FFE9C500FFE1BA00FFE1
      B4007194AC0080C0CB0012952A002CB1480031B44B001793290014791800FFF4
      EF00B07F8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFA
      E700FBDEC100FCEFEB00D3DFBC0000870000009E0000009A00008CC87700FFFB
      F800FFFBF80040A73800FFFDFD00FFFFFF003D94340025BE3B0034D24E000077
      0000F5DFCE00F5D6C300ECCAB100E5BDA000DFAF8F00D7A17C00CE8E6C00C768
      1300FCE7D200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008F675400FFFFFF00FDFAF600FDFBF700FDFBF700C8C7C600B1A48F00FAD9
      A100F1D5A300F0D8A300F0D5A400F0D5A100EFD29C00EECF9600EDC98B00F1D3
      A600F5CF9000B3AB9C00C0BEBC00FDF9F300FBF5EB00FCF5EC00F5E4D400815F
      4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0091685500FFFFFF00FDFBF800FDFBF800DCC7C200DBC6C300DBC6C300DBC6
      C100DBC5C000DBC4BD00DBC3BB00DBC1B900DBC0B500DBBFB200DBBEB000DBBC
      AD00DBBAAA00DBB8A700DBB8A700DEBDAB00FBF5EC00FCF7ED00F5E5D600835E
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA8D8D00DDA8
      A800F6EAEB00FFFDFE00FFFAFB00FFFFFB003864FF00FFFFFA00FFF9FC00FFFD
      FF0095B6D2001FA3420047D870005AEC860049D36D0036B75100158F27002C82
      1F00B0797D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF4
      D800FAE6D300FEEEEA00F9ECDD00E5EACB00DADCBF00B7C3A300F0D5D300E1CA
      C300FFEEE300FFF4EB00FFF9F200FFF0F300519F43002BC544003DDC5D000075
      0000FFEAE400F4D8C500EDCEB400E7C1A400E0B29200D9A38000D0926E00C772
      3000F8CCA100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0091685500FFFFFF00FDFBF800FDFBF800FDFBF800A3A4A800DEC99E00F4DC
      AB00F3DDAF00F3DDAF00F3DDAE00F3DCAC00F1DAA800EFD39F00EECF9800EDCB
      8D00F6DAB000EFD0A2008F8F9000FDF9F300FBF5EC00FCF7ED00F5E5D600835E
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0092695700FFFFFF00FEFCF900FEFCFA00DCC6C000DCC6C000DCC6C000DCC6
      C000DCC5BF00DCC4BD00DBC3BA00DBC2B700DBC0B500DBBEB200DBBDAF00DBBC
      AD00DBBAAA00DBB9A700DBB9A700DEBDAB00FCF6ED00FCF6ED00F5E5D5008360
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8878700E1AC
      AC00F8EAE000FFF7F000FFF7F300FFFFF6003966FF00FFFFFB00FFF9FC00FFFC
      FF0099D0C00025BB4E0069FF9C005FF48E0055E47E0046CE680034B34D00118C
      2200367A2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDED
      C500F8ECE600FFF0EF007CB36D004E983F00508F41004C85410045823C006C9D
      5F00FFF8EA00FFEFE2009CCF8C00C1C0A700008400004DE8740037D557002883
      1F00FFF1F000F5DCC900EECFB700E8C2A700E1B49600DAA68400D2967000C97C
      4A00F2AF6900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0092695700FFFFFF00FEFCF900FEFCFA00FEFCFA0090929700F7DFAA00F7E6
      BC00F6E5BD00F6E8C400F5E7BF00F6E4B700F3DEAF00F1DBA800EFD39F00EECE
      9400F1D5A700F6D299008B8E9200FDF9F400FCF6ED00FCF6ED00F5E5D5008360
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00936A5600FFFFFF00FEFCFB00FEFDFB00DCC6C000DCC6C000DCC6C000DCC6
      BE00DCC4BE00DCC4BB00DCC3BA00DBC1B700DBC0B400DBBEB200DBBDAF00DBBC
      AD00DBBBAA00DBB9A700DBB9A700DEBDAA00FCF6ED00FCF6EE00F5E5D700845F
      4F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3818100E7B2
      B300FBE6CF00FFEBCB00FFE6C500FFEDBB003C65F400FFE7B200FFDCB100FFDC
      B100B7CF97002BC7590062FC910065FD98005DF28C0053E27C0044CB650031B0
      4A0011871F005EA86300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDE7
      B800F7F1EE00FFF2F50013860A0051F4860051F081001EB137000C720800B0A8
      9B00FFEDDF00FFF9F800069A040000A0050040DC620057F38400079A110054A4
      4700B9CCA100FBDFCE00EFD1BC00EBC5AC00E3B79B00DCA98900D4987500C985
      5F00E98E3400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00936A5600FFFFFF00FEFCFB00FEFDFB00FEFDFC0093969C00FBE4B400F9ED
      CC00FBF0D400FBEFCF00F8EDCB00F6E9C200F5E3B900F3DEAF00F1DAA700EFD2
      9B00F2D6A400F5D09A008D909300FDFAF500FCF6ED00FCF6EE00F5E5D700845F
      4F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00946C5700FFFFFF00FEFDFC00FEFDFD00FEFEFD00FEFEFD00FEFEFD00FEFD
      FD00FEFDFC00FEFDFB00FEFCFB00FEFCFA00FDFBF900FDFBF700FDFAF600FDFA
      F500FDF9F400FCF8F200FCF8F100FCF7EF00FCF6EE00FDF8EF00F7E6D600845F
      4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AC797900EAB4
      B400FBFCFD00FFFEFF00FFFFFF00FFFFFF00446FFF00FFFFFE00FFFCFF00FFFB
      FF00FFFBFF003BC0620046DF730060FA910064FD97005CF08A0052E07A0041C7
      61002FAC460010831D0077B97900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDD3
      A600F7EEEB00FFF2F700068B00006CFFA4005EF98D003AD15A002C7D2000CBA7
      B200AE949800AD9395008BC278002BD24B0067FF9C0063FF960013B52A000086
      0000C5D2AA00FCE1D300F1D3BD00EBC7AE00E4BA9D00DDAC8B00D69D7700CC8A
      6500CC670400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00946C5700FFFFFF00FEFDFC00FEFDFD00FEFEFD00B0B1B400DFCFA900FFF6
      DC00FCF6DD00FBF9EB00FCF5E000FBEFCE00F7EBC600F5E1B600F2DBAB00EFD4
      9F00F4D7A400E7CC9F0097979800FCF7EF00FCF6EE00FDF8EF00F7E6D600845F
      4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00956B5900FFFFFF00FEFEFD00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00FEFDFD00FEFDFC00FEFCFB00FEFCF900FDFBF800FDFBF700FDFA
      F600FDF9F400FDF9F300FCF8F100FCF7F000FCF7EF00FDF7EF00F6E6D8008561
      4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AC7A7A00EAB4
      B400FCF8EF00FFF9F100FFFAF300FDF7F4005279FE00FFFFF800FFFAFC00FFFA
      FC00FFFBFF00F0F6F20026BD570050EB7E0060FA920064FC97005BEE880050DD
      77003FC45E002CA842000D7F170091C69400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFCF300FDD8
      B300F6EEE800FFF2F8000095000029C4420053EE7E004BE771001AB12C00057D
      03000074000070856000D9C0BF0000A1000063FF9D0000A0010067B35700FFF5
      F400FFEDE300F8E1D000F1D7C000ECCAB100E6BDA100DFAF8F00D99F7B00CE8F
      6900C7671200FCE7D500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00956B5900FFFFFF00FEFEFD00FEFEFE00FEFEFE00DADADB00B0A99800FFFC
      E000FEFDF100FEFDFA00FEFEF300FCF4D600F8EECE00F5E4B900F3DDAE00F1D5
      A300FADAA000ABA19100C5C3C000FCF7F000FCF7EF00FDF7EF00F6E6D8008561
      4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00966C5800FFFFFF00FEFEFE00FFFFFF00E0CFCE00E0D0CF00E0CFCD00DFCD
      CA00DFCDCA00DFCBC800DFC9C500DFC8C200DFC7BD00DFC5BB00DFC3B800DFC1
      B400DFC0B100DFBFAC00DFBFAC00E1C2B000FCF7EF00FDF7F000F6E6D8008560
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B17F7F00ECB8
      B900FFF1D300FFEBCB00FFEAC500EFDAC700627FEC00FFE7B600FFDEB400FFDC
      B100FFDBAF00FFDAB100D1D39C001FBE510058F2850061FA920062FB95005AEC
      86004EDA74003DC05A0029A43E000D7D1700A8D2AA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF8E500FADF
      C600F6EBE700FFEEEF000088000035A329000DB2210041DD64003AD5570032D1
      4C001BBA2E003D913500FFFFFF0032AA2D0000970000D7E3C200FFF9F900FFEE
      E300F9E8D900F8E3D200F2D8C300EDCCB400E7C0A400E0B29400D9A47F00D091
      6B00C8722E00F8CEA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00966C5800FFFFFF00FEFEFE00FFFFFF00FFFFFF00FCFCFC00A5A4A800E7E0
      C200FFFFEA00FFFFF600FCFBEB00FBF5DC00F8EECB00F6E5BB00F3DDAF00F6DC
      A300E6CD9D007F838800F8F4EF00FCF8F100FCF7EF00FDF7F000F6E6D8008560
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00976D5900FFFFFF00FFFFFF00FFFFFF00DDCBC900DDCBCB00DDCAC900DDC9
      C600DDC9C600DCC7C300DCC5C000DCC3BC00DCC2B900DCC0B500DBBEB200DBBD
      AF00DBBAAA00DBB9A700DBB9A700DEBEAB00FCF7EF00FDF7F000F6E6D7008660
      4F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B9858500EFBE
      BE00FFFFFF00FFFFFF00FFFFFF00DFE7FF007495FF00FFFFFF00FFFDFF00FFFC
      FF00FFFDFF00FFFCFF00FFFDFF00A6E0B70026C356005CF68A0062FB940061F9
      930059EA84004CD771003ABD5700269F39000F7D1800BDDDBF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF3D400F9E8
      D900F5EBE400F2E4D600B9D3A100FFF8FD0055B14500009800000CB11E0010B1
      210002A61000006F0000FFF5EC00E0E8CB00FFF9F600FFF7F500FFF2E700FCED
      E000FAE9DA00F7E3D400F3DAC600F0CFB900EAC4A900E2B59600DCA68300D295
      6F00C87D4700F3B06C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00976D5900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F5009D9D
      9C00EAE3C900FFFFE900FFFCE800FBF5DA00FAEEC900FAE6B900FDE3AE00E5CD
      A10082838600E0DDD900FDF9F200FCF8F100FCF7EF00FDF7F000F6E6D7008660
      4F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00986E5B00FFFFFF00FFFFFF00FFFFFF00DDCBC900DDCBCB00DDCAC900DDC9
      C600DDC9C600DCC7C300DCC5C000DCC3BC00DCC2B900DCC0B500DBBEB200DBBD
      AF00DBBAAA00DBB9A700DBB9A700DEBEAB00FDF8F100FDF8F100F7E7D9008661
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECE1E100BF8B8B00F1C2
      C300FFFFFF00FFFFFF00FFFFFF00D1DDFF0085A3FF00FFFFFF00FFFDFF00FFFE
      FF00FFFCFE00FFFBFD00FFFBFD00FFFEFF0078D6970033D063005DF78B0064FD
      950060F8920057E882004AD46E0038B95300229C340010811C00CDE5CE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDEEC400F7EE
      EB00F5E8DF00F9E5DB00FEE8DE00FFEBDF00FFF5EF00E3E3C2007FC06B005FB3
      50007FBC6C00C4D8AF00FFF5ED00FFF5EB00FFF5EB00FFF5EB00FEF3E600FDEE
      E100FAEADB00F8E6D600F4DCC900F0D1BB00EAC5AB00E3B89A00DCA98700D497
      7000CA845D00EA8F3500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00986E5B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3
      F300A3A3A700B2AE9E00E3D8B800FFF0C300FDEABC00E2D0AA00B0A796008488
      8B00DFDDDA00FDF9F400FDF9F300FCF8F100FDF8F100FDF8F100F7E7D9008661
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099705A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFD00FEFDFC00FEFCFA00FFFDF900FEFD
      F900FFFDF900FFFDF700FEFBF700FDF8F300F9F5ED00F5F0E800E9D6C8008662
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6D8D800C4919100F3C3
      BD00FFE7BD00FFE3B900FFE5B700C4BDCD0095A0DD00FFE3B200FFDEB200FFDC
      B000FFDBB100FFDAAF00FFD9AE00FFD8AE00FFD9B2004FC56D0041DC6F005EF8
      8D0064FD96005FF58F0056E7800045D66900469F58005D695D0073707400E5E5
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDE8BA00F7F1
      F100F5E7DD00F5E4D800F7E5D600FBE9D800FFEDDC00FFEFE000FFF2E800FFF4
      ED00FFF4ED00FFF4EB00FFF2E800FFF3E900FFF4EB00FFF4EA00FEF2E700FDEF
      E200FBEBDD00FAE6D800F5DECD00F1D5BE00EBC8AE00E5BB9F00DEAC8B00D69A
      7400CC896300CC680400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099705A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FAFAFA00D3D3D400A6A7AB008B8D900087898E009B9DA000BFBEBE00F7F6
      F200FFFDF900FFFDF700FEFBF700FDF8F300F9F5ED00F5F0E800E9D6C8008662
      5000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A6F5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFDFC00FEFCFA00FFFDFB00E6DC
      D700D9CBC200E0D3CC00DACCC500D5C5BE00C8B6AD00BBA49A0097756500A78D
      8100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3D2D200C9969600F6CD
      CE00FFFFFF00FEFFFF00FFFFFF00B8CAFF00A5BBFF00FFFFFF00FBFCFF00FDFE
      FF00FFFFFF00F5F3F600FFFEFF00F4F1F400F6F0F400FFFBFC0037C664004DE8
      7B005EF88D0064FF96005CF68C00719E7F00867D8500918F9100747473007C7C
      7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDD5A900F6EF
      EE00F4E5DC00F5E3D700F7E4D500FBE8D700FEEBD900FFECD900FFECDA00FFED
      DB00FFEEDD00FFF0E200FFF1E400FFF3E800FFF4EA00FFF4EB00FEF3E800FDF0
      E100FBECDC00F9E7D600F6DFCB00F1D5BE00EDC8AF00E6BD9E00DFAF8F00D89E
      7800CE8C6700C7661000F6E5D400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A6F5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFDFC00FEFCFA00FFFDFB00E6DC
      D700D9CBC200E0D3CC00DACCC500D5C5BE00C8B6AD00BBA49A0097756500A78D
      8100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009B705B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFD00FEFDFC00FEFCFA00FFFFFF00BBA2
      9500A1807200A7897800A5836F00A37F6700B0886600936C5400A3867900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFCCCC00CF9B9B00F9D4
      D400FFFFFF00EBEBEB00FFFFFC00A4B5ED00A9BAED00FFFFFF00BEBDBD00F6F3
      F300CFCECE00ABA9A900F5F2F20063636300CAC7C700C5BDBF003D5043002EC8
      5E0054F081005FF88F008CA19300BAB5B800DAD9D900BAB9B400929395004148
      94005E63BA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF2E700FCDBBB00F6ED
      EB00F4E4DA00F5E2D500F6E3D300FAE7D400FEEBD500FFEAD500FFEDDA00FFF0
      E200FFF3EA00FFF9F200FFFBF600FFFCF900FFFCFB00FFFEFB00FEFCFA00FEFB
      F900FEFAF700FDF9F600FDF6F000F9EEE600F5E4D800EFD3BF00E4B79A00D798
      6E00CD895F00C76F2A00EAC59D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009B705B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFD00FEFDFC00FEFCFA00FFFFFF00BBA2
      9500A1807200A7897800A5836F00A37F6700B0886600936C5400A3867900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C725D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFD00FEFDFC00FEFCFA00FFFFFF00CBB7
      AD00C5AD9F00FFF5E000F9E1BB00F8D69C00C59E6E00A4877B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBC4C400D4A0A000FDDC
      DC00A4A7A70066666600FFFFFF0033312E0089898900C0C0C00015151500BEBE
      BE006C6D6D0023232300E3E1E100393A3A004B4B4B00DEDBDB00342F3400436B
      4C002BD05E0097B6A000D4CFD200FFFFFF00F7F5EC0098A2D400233CCF001B30
      C6000D17AE007C7DD100FFFFFF00FFFFFF00FFFFFF00FDEBD600FBE5CF00F5EA
      E500F3E1D600F4E2D300F8ECE200FDF9F300FFFEFF00FFFEFA00FFF9F500FFF6
      EF00FFF5ED00FFF5EC00FFF6EF00FFF9F300FFFBF800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EED4C600C8794400DFA46600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C725D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFD00FEFDFC00FEFCFA00FFFFFF00CBB7
      AD00C5AD9F00FFF5E000F9E1BB00F8D69C00C59E6E00A4877B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009E725C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FEFDFC00FEFDFB00FEFCFA00FFFFFC00CCBA
      B000BEA18B00F6DFB800F3CF9600C0986A009C7F7200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8BFBF00DAA6A600FDE2
      E200A1A3A3001D1D1D00CFCFCD006F7481002B2B2900FCFEFE00676969004F50
      5000FFFFFF003E404000938F8F00D4C9C9002C2F2F00D2BDBD00847576004E40
      4700A3E1B700C0B7BD00F3F2F200FFFFFA0095A7F100284CE2003A61EB002B47
      D5001625B80001039B00BABAE400FFFFFF00FFFFFF00FDE0C200FAEBE200F7EF
      EB00FFFFFF00FFFFFF00F6E4D600F7DBBE00FDDCB900FFE0BF00FFE5CB00FFEA
      D500FFEEDF00FFF2E600FFF5EC00FFF8F200FFFBF800FFFEFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FFFA
      F300FFFFFF00FFFFFF00D4812B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009E725C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FEFDFC00FEFDFB00FEFCFA00FFFFFC00CCBA
      B000BEA18B00F6DFB800F3CF9600C0986A009C7F7200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C725C00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFDFD00FEFDFC00FEFCFA00FEFCF900FFFEFC00D7C9
      C100B28D7200F6D39A00C89F6E009F817500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4B9B900DAA5A500FBE0
      E000FFFFFF005654540079747200B4AEDE0034353300AB949400A2888800373A
      3A00BF909000574F4F00695C5C009C7B7B003F434300B29B9B00887A7A005454
      5500FFFFFF00CCCBCB00D2D2CC00A7B6EC002B52E7004C7AFF00416AF1002C48
      D6001728B90004069F007E7ECA00FFFFFF00FFFFFF00FDD5AE00FEFFFF00FEFC
      FC00DBA98800D9986A00E9B38A00F3CCA600FDDCBA00FFE1C600FFE6CE00FFEA
      D800FFEEE000FFF2E700FFF5EC00FFF7F100FFFBF700FFFEFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FFF8
      F200FFFCF500FFFFFF00D47B2600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C725C00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFDFD00FEFDFC00FEFCFA00FEFCF900FFFEFC00D7C9
      C100B28D7200F6D39A00C89F6E009F817500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009D715D00FFFFFF00FEFEFD00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00FEFDFD00FEFDFC00FEFCFB00FEFCFA00FDFBF800FFFFFB00D3C2
      B900B7906A00CBA16F00A0817500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5D0D000AB808000B889
      8900D1A1A1005750500069626100AB95930043444400B0A4A400686666004F51
      5100D7D5D5004B4D4D0097989800959595004D4D4D00D2D3D300606161009191
      9100FFFFFF00FFFFFF00BBBEC5002A4ADD004A78FF004A7AFF003B61E9002842
      D1001523B60000019900BFBFE700FFFFFF00FFFFFF00F8CA9E00FFFFFF00B75D
      2A00C97E4E00DBA17700E8B79200F3CBA700FDDBBA00FFE1C400FFE6CD00FFEA
      D600FFEEDE00FFF2E500FFF4EB00FFF7F100FFFBF700FFFEFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FBF2E900D9822A00F6D2AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009D715D00FFFFFF00FEFEFD00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00FEFDFD00FEFDFC00FEFCFB00FEFCFA00FDFBF800FFFFFB00D3C2
      B900B7906A00CBA16F00A0817500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009B715B00FFFFFF00FEFDFC00FEFDFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFDFC00FEFDFC00FEFCFB00FEFCFA00FDFBF900FDFBF700FFFEFB00CEBA
      B100A2795A009F7F6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007E81
      8100FFFFFF004B4C4C0091919100A6A7A7004F505000B4B4B400626262005D5D
      5D008C8C8C00565656007070700058585800676767005959590066666600E8E8
      E800FFFFFF00FFFFFF00D9DEF9002A40CD00436DF5003F68F0003050DC002136
      C700070AA1006161C400FFFFFF00FFFFFF00FFFFFF00FAD3AC00FFFFFC00E6CC
      BF00CF916900D7946600E5B08400F2C7A000FDDAB500FFE1C000FFE5CC00FFEA
      D600FFEEDE00FFF1E500FFF4EB00FFF7F100FFFAF700FFFEFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF6F100E9BC9000DA84
      2E00EB9F5200FDEFDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009B715B00FFFFFF00FEFDFC00FEFDFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFDFC00FEFDFC00FEFCFB00FEFCFA00FDFBF900FDFBF700FFFEFB00CEBA
      B100A2795A009F7F6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C715D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B397
      8900A07F7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007575
      750087878700565656006E6E6E005A5A5A006A6A6A005F5F5F00696969009393
      93006F6F6F00B3B3B300A3A3A300B6B6B600E5E5E500C4C4C400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BCC1F1001B28B900253DCD001A2BBD000406
      9F005A5AC200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDEECF00FDEB
      CE00FFFFF500FFFFFF00F9F5F200FAEFE700FEF1E400FFF1E300FFF2E600FFF4
      E900FFF8EF00FFFAF500FFFDFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFC00F7E2CE00EBC09300E2A05700F09F5100F3B06E00F8D4B100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C715D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B397
      8900A07F7000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A715D009D725F009B715D009C715D009A715D009A715D0099705B009870
      5C00986F5A00976D5B00966E5900956C5A00946B5900936A5800936C5900AB8F
      8200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009E9E
      9E006E6E6E00B9B9B900AAAAAA00B5B5B500FFFFFF00D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C2EA005F61C0006767BF00BABA
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDF2E600FDE7D000FDE4CA00FDE5CA00FBDFC400F9DEC100FBDDBE00F9D9
      B700F8D5B300F7D3AE00F5D0AA00F1C9A100EFC79F00EDC59A00EEC29800EBBD
      9000ECC39B00F2D7BA00F8EADB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A715D009D725F009B715D009C715D009A715D009A715D0099705B009870
      5C00986F5A00976D5B00966E5900956C5A00946B5900936A5800936C5900AB8F
      8200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000080000000800000000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ds1: TDataSource
    DataSet = DM.cdsabastecimento
    OnStateChange = ds1StateChange
    Left = 712
    Top = 16
  end
  object dstransp: TDataSource
    DataSet = DM.cdstransporte
    Left = 604
    Top = 6
  end
  object dsposto: TDataSource
    DataSet = DM.CDSposto
    Left = 660
    Top = 6
  end
end
