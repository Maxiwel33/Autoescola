object Frm_Parcelas: TFrm_Parcelas
  Left = 367
  Top = 166
  BorderStyle = bsDialog
  Caption = 'Gerar Carn'#234' de Pagamento'
  ClientHeight = 560
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 560
    Align = alLeft
    BevelInner = bvLowered
    BevelWidth = 2
    Caption = 'pnl1'
    TabOrder = 0
    object dbgrd1: TDBGrid
      Left = 4
      Top = 41
      Width = 369
      Height = 515
      Align = alClient
      DataSource = dscliente
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrd1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Width = 284
          Visible = True
        end>
    end
    object pnl2: TPanel
      Left = 4
      Top = 4
      Width = 369
      Height = 37
      Align = alTop
      Caption = 'pnl2'
      TabOrder = 1
      object edt1: TEdit
        Left = 1
        Top = 1
        Width = 279
        Height = 35
        Align = alClient
        CharCase = ecUpperCase
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edt1Change
        ExplicitHeight = 27
      end
      object btn4: TBitBtn
        Left = 280
        Top = 1
        Width = 88
        Height = 35
        Hint = 'Cadastrar de Cliente'
        Align = alRight
        Caption = 'Cadastro'
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FCF9F7CEB29CA97856965C36782E00782E00782E00782E00782E00772B00772B
          00772B00772B00833D0FA16C48B4886AC5A389EADDD2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB48A688B4500A45F00BD8100C78E01E1B104E0B105E0B105E0B004
          E0B105E0B105E0B105E0B105E1B105D29E02CA9002B77800A56500883F007D36
          00AD7C51FFFFFFFFFFFFFFFFFF985902EFD93FDDAE01DCB003DBAD03DAAB02DA
          AB02DAAB02DAAB02DAAB02DAAB02DAAB02DAAC02DAAC02DBAC02DBAD02DCB003
          DEB103E0B504D8A702904A00FFFFFFFFFFFFFFFFFF8F4900F2E448DDB200DDB3
          01DBB002DBB002DAAE02DAAC02DBB002DBB002DAAD01DAAE02DAAC02DBB002DA
          AC02DAAC02DAAC02DAAC02DBB002E3BB03843B00FFFFFFFFFFFFFFFFFF8F4C00
          EEE05AEAD200E4C703DFBC02DBB601DBB501DBB801DBB501DBB501DBB501DBB5
          01DBB501DBB501DBB501DBB501DBB601DBB501DBB701D4A9018C4700FFFFFFFF
          FFFFFFFFFFAB7846E1CC44EEE043EAD200E3C802DDBC01DBB801DBB900DBB901
          DBB901DBB901DBBA01DBB901DBB901DBB801DBB801DBB901DBB901DDBD00C595
          00B28146FFFFFFFFFFFFFFFFFFDAC1A4B0770CF6F26FEDE000EAD900E3CD00DC
          C300DBC200DBC200DCC200DBC100DBC100DBC100DBC100DBC100DBC200DBC200
          DCC400E1CD00A25F00DDC5A4FFFFFFFFFFFFFFFFFFFFFFFF9C5905E1CC44F1EE
          68EEE200E7DA00E1D000DDCA00DCC800DCC800DECA00DBC700DECA00DCC800DC
          C800DECA00DCC800DECE00C69E00A56304FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EEE2D0AE7102EBE759EFEC5BEDE600E5DC00DDD200DFD100E3CF00E4D200E4D2
          00DECF00DCCF00DBCE00DBCF00DDD100D9C100AA6A00F7F0E5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE3CDA9B88307ECEA5FEFED61E6DE00E8D400B2B900
          0A719C0B6E9512838AC4C100E6D700DBD000DAD200D7C100B17300E5D0A8FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D0A8BA8002E6CF45C5
          D22D0855C6235ED93B87EC1D74E90955D90333BD085487E8D200CDA600B77800
          E8D4A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFDFBCA993C135DDF65B7FF2599FF1990FB1B92FD1E95FD1D98FF1674EF07
          4467D59B33FEFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF628CF479C8FF2098FB2298FA2499FB2499FA249A
          FB249AFB26A1FF0B4ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B81E95ABBFF279FFA2CA2FA
          2CA2FA2DA2FB2CA2F92CA2FA2DA4FB2CA2FC9097C5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DC2F560
          C2FE31ABFD31A9FB33ACFB33ABFB36ACFE36ACFE33ACFB3BB7FF4A72BFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFC8D8FA7BC6FC6BCCFF70CBFF5DC2FE43B8FB3AB2FB3CB4FA3BB4FA3DB4FB3F
          BFFF3F64ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD2CFCC8FADC175DEFF76D7FF76D3FF76D1FF75D2FE68CC
          FE67CBFD5EC8FD72DAFF2A3043FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D22B22234B637754789473BEE6
          80E2FF7BD6FF7CD7FF7BD6FE7CD7FF88EFFF231A19E1E0E0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D4D428222026
          1E1A2119142214115B7F9787E4FF83DBFE84DCFF8BECFF506C811D130ED1D0D0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD4D3D32D29272C27262C27252A24212317139AFFFF93F2FF98F9FF5977871E
          120F25201ED4D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE4E3E2322C2B312B2B2F2B292F2B292B23223E3F453B3B
          3F291C19251D192A24232B2524D1CFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B373536322F342F2E332E2C
          332C2B3129282F2828302A2A312B292E29282F2A28FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC8C93A
          333438333238333137322F37312F36322E342F2D332E2D332D2CB8B6B6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFC3C1C0413A393B37343A3434463F3F857F806F6B6B696464CE
          CDCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btn4Click
      end
    end
  end
  object pnl3: TPanel
    Left = 377
    Top = 0
    Width = 490
    Height = 560
    Align = alClient
    Caption = 'pnl3'
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitWidth = 41
    ExplicitHeight = 688
    object pnl4: TPanel
      Left = 1
      Top = 1
      Width = 488
      Height = 92
      Align = alTop
      BevelInner = bvLowered
      BevelWidth = 2
      Color = clTeal
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 437
      object lbl1: TLabel
        Left = 16
        Top = 40
        Width = 83
        Height = 16
        Caption = 'Data Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 160
        Top = 40
        Width = 95
        Height = 16
        Caption = 'Quant. Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 296
        Top = 40
        Width = 74
        Height = 16
        Caption = 'Valor Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 80
        Top = 8
        Width = 269
        Height = 23
        Caption = 'Gerar Parcela de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtvalor: TCurrencyEdit
        Left = 296
        Top = 58
        Width = 121
        Height = 24
        Margins.Left = 4
        Margins.Top = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dtpdataKeyPress
      end
      object dtpdata: TDateTimePicker
        Left = 16
        Top = 58
        Width = 113
        Height = 24
        Date = 42037.700731712960000000
        Time = 42037.700731712960000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dtpdataKeyPress
      end
      object btn5: TBitBtn
        Left = 423
        Top = 48
        Width = 57
        Height = 38
        Hint = 'Calculadora'
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFD19B6FC9843EC9843EC8833CC7813CC6803AC6803AC57E38C37B
          35C27A31C17630C1752EBE722CBD6F29B9703AFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFD19A6CF7EADBFAEFE3F8EAD9F5E6D3F8EBDBF8ECDE
          F8EAD9F2DEC0F5E4CBF5E3C8F3DFC1F2DBB6EDCF9BEDCF9BE9C586BF7C4BFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCAC79FAF0E3F0D49FD8963FCF
          8939E0BA86F8E9D5E1AB52D6923EC67C34F0D7B3F0D39BE3AD55D89B49C78038
          EAC689CB874CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEAF7CFAF0
          E3EDC679EFD4A5EFD4A5E3BE87F5E2C0EAC689EFD3A4EDD0A0DDAD6DEDCA80E3
          AD55EFD4A5DEAE69ECCA8ECB894EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE0B27DFAEFE3EEC97DF8ECDEF8ECDEE3BE87F6E5C7ECCB8FF8EADAF9F0
          E5E5C08BF2D9A7E3AD55F8EADAE9CFA8ECCB90CC8C51FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE0B27DFAF0E3F8EAD6F6E8D4F3E5D1F6E8D6F8ECDE
          F6E7D1F3E1C7F0DBBEF5E3C8F3DDBAF3DFC0F2DFC3EAC994ECCB90D19254FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1B581FAF0E3F9EADAE7C287DF
          B67BF5E5D1F8ECDCF2DEBEDEAE69E5C08BF1D9B7F1DAB8E9C280DAA357E9C489
          ECCA8ED29457FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2B781FAF0
          E3EBC374E3B060DBA55CD39B5AF6E7CCE7B660E1B267CD883FE2BC85EDCA80E6
          BA6EE2B46CC27A31EBC98DD59A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE4BA83FAF0E3F0D18DF3DFC0F3DFC0EACFA7F5E2C0ECCB8FF3DFC0F4E2
          C7D8A260F0D18DF3DFC0F3DFC0E9CCA0ECCB90D89F65FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE5BC83FAF0E3EACFA7FAF2EAFBF3ECEACFA7F8EAD6
          ECCB8FFAF2E8F5E9DAEFD6B1F2DCB5F9F0E5FAF2EAEBD3AFECCB90DBA46BFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BE84FAF0E3FAEFE3F8EAD6F8
          EBDCF8ECDEF8ECDEF6E7D2F8ECDEF1DCBCF5E3C8F3DFC1F0D7ADF0DAB5EED19E
          ECCB90DCA76EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C186FAF0
          E3F9ECDBE3BC79DBAF72F3E1CBF8EBDCF2DBB4DFAC65E7C594F3DFC1F3DFC192
          73D18D6CC1E5C5A1ECCB90DDAC73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE9C489FAEFE3E8BD6CDFAC65DEAF67D39B5AF5E3C4E7B964E7C180D598
          50EACA9D7057E31A25F21A25F23026B8ECCB90E0AF76FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE9C489FAF0E3F0D394F4E3C8F4E3C8EAD1ABF5E2C0
          ECCB8FF5E3C8F6E7D1DDAD6D7E75EE3151F82D4BF8292CD5ECCA8EE4B67DFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBC68DFAF0E3F0D394FBF4ECFC
          F5EDEAD1ABF6E7CFECCB8FFAF2EAF6EADDEFD6B1BCA0DA7A81F67380F28064B9
          ECCB90E5BA80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC98CFAF0
          E3FAEFE3F6E7CCF6E7CCF8ECDEF8ECDEF6E7D2F6E8D4F3E1C7F5E3C8F3DFC1DF
          C3BED1AEB5EED19EECCB90E8BF85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEECD90F8EADAD39B5AC8833CC7813CC6803AC6803AC57E38C37D36C37B
          35C27A31C17630C1752EC1732DC88138E9C586E8BF85FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEECD90DBA55CEAB951EAB84BE7B142E5AB39E3A42F
          E09E27DE981FDB9219DA8F15D98D14D98D14D98D14D78A14CD8431E9C085FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D090E2B46CF1D078EEC664EC
          C159EAB951E8B446E6AE3DE3A735E2A12CDF9B23DD951BDB9017D98D14D98D14
          D28A2FEAC083FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D293E8C3
          7EF8E9C0F6E4B2F4DC9BF2D283EEC86CECBE55EAB84BE7B142E5AB39E3A42FE0
          9E27DE981FDC9219D89739E9BD7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF2D495ECCB87FAECC7FAECC5F9EBC3F8E7BDF7E5B8F6E3B2F3DDA4F2D7
          94F0D38CEFD084EECD7BEFD084EDCF81E3AD55E9BB73FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF3D796EECD84FAECC7FAECC7FAECC7FAECC7F9EBC3
          F8E9C0F7E7BAF6E3B5F5E1AFF4DFAAF3DDA4F2D99DF0D697E5B259E9BB6CFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D18AF6E5C7EEC666EEC664EE
          C664EEC664EEC664EEC664EEC562EDC260EDC260ECC15DECBE5CEBBE59EABA57
          EAC27AEEC988FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DD
          A7EEC86FEEC86FEEC76DEEC76DEEC76DEEC56AEDC369ECC266ECC063EBBE60EA
          BC5DEAB959E9B656F0C983FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btn5Click
      end
      object edtParcela: TEdit
        Left = 152
        Top = 58
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dtpdataKeyPress
      end
      object dbedtID_CLIENTE: TDBEdit
        Left = 376
        Top = 13
        Width = 100
        Height = 21
        TabStop = False
        DataField = 'ID_CLIENTE'
        DataSource = dscliente
        Enabled = False
        ReadOnly = True
        TabOrder = 4
        Visible = False
      end
    end
    object pnl5: TPanel
      Left = 1
      Top = 505
      Width = 488
      Height = 54
      Align = alBottom
      BevelInner = bvRaised
      Caption = 'pnl5'
      TabOrder = 1
      object btn1: TBitBtn
        Left = 32
        Top = 8
        Width = 120
        Height = 40
        Caption = 'Gerar Parcelas'
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          9392921B18170A0806080A0E834C0F9952009650009650009650009650009650
          00965000965000965000995200834B0F16191E1513131E1C1CACABABFFFFFFFF
          FFFFFFFFFFFFFFFF191716FFFFFFFFFFFFACAFB388510DCA840CC6820CC6820C
          C6820CC6820CC6820CC6820CC6820CC6820CCA840C8B541074767BFFFFFFFFFF
          FF1E1B1BFFFFFFFFFFFFFFFFFFFFFFFF1B1A19FFFFFFFFFFFFA9ACB08B5515CD
          8C21C88821C88821C88821C88821C88821C88821C88821C88821CD8C218E5818
          727579FFFFFFFFFFFF2A2927FFFFFFFFFFFFFFFFFFFFFFFF1B1A194A46454441
          4045454A925D21D59534D09133D09133D09133D09133D09133D09133D09133D0
          9133D59534935E2148484D4541404845442A2927FFFFFFFFFFFFFFFFFFFFFFFF
          211D1C504D4C4B48474A4B4F976127DA9E44D59A42D59A42D59A42D59A42D59A
          42D59A42D59A42D59A42DA9E449761274C4D504B48474F4C4B2E2B2AFFFFFFFF
          FFFFFFFFFFFFFFFF211D1CEAEAEAE1E0E195969B956228DFA751DAA24FDAA24F
          DAA24FDAA24FDAA24FDAA24FDAA24FDAA24FDFA75198652B6F6F74E3E2E2E9E8
          E82E2B2AFFFFFFFFFFFFFFFFFFFFFFFF211D1CFFFFFFFFFFFFB0B3B699652CE4
          B05DDFAB5ADFAB5ADFAB5ADFAB5ADFAB5ADFAB5ADFAB5ADFAB5AE4B05D9B682F
          7E7F82FFFFFFFFFFFF2E2B2AFFFFFFFFFFFFFFFFFFFFFFFF262221575352524E
          4D535255A06F34EBB869E5B365E5B365E5B365E5B365E5B365E5B365E5B365E5
          B365EBB869A06F34555458524E4D565251373433FFFFFFFFFFFFFFFFFFFFFFFF
          2A27265E5B5A59565558585CA47338EDBF72E8BA6EE8BA6EE8BA6EE8BA6EE8BA
          6EE8BA6EE8BA6EE8BA6EEDBF72A573385A5A5D5A56555D5A593A3635FFFFFFFF
          FFFFFFFFFFFFFFFF2A2726ECECEBE3E3E29D9EA3A47339F2C779ECC175ECC175
          ECC175ECC175ECC175ECC175ECC175ECC175F2C779A6753C7A7B7FE5E5E4EBEB
          EA3A3635FFFFFFFFFFFFFFFFFFFFFFFF2A2726FFFFFFFFFFFFB6B7BDA6773CF6
          D082F1CA7EF1CA7EF1CA7EF1CA7EF1CA7EF1CA7EF1CA7EF1CA7EF6D082A97A3F
          87888CFFFFFFFFFFFF3A3635FFFFFFFFFFFFFFFFFFFFFFFF353230666361615E
          5C626265A67439D09B50CD984FCD984FCD984FCD984FCD984FCD984FCD984FCD
          984FD09B50A77539646567625F5D656260444140FFFFFFFFFFFFFFFFFFFFFFFF
          3935336D696769656369686BA36F2CB8720DB6710FB6710FB6710FB6710FB671
          0FB6710FB6710FB6710FB8720DA36F2D6A696D6965636C6866484442FFFFFFFF
          FFFFFFFFFFFFFFFF393533F0EEEDE7E5E4A7A8ADA6732CC88310C68212C68212
          C68212C68212C68212C68212C68212C68212C88310A9752E87888CE9E7E6EEEC
          EC484442FFFFFFFFFFFFFFFFFFFFFFFF393533FFFFFFFFFFFFBEC0C5A97632CD
          8D29CB8C2BCB8C2BCB8C2BCB8C2BCB8C2BCB8C2BCB8C2BCB8C2BCD8D29AB7834
          939599FFFFFFFFFFFF484442FFFFFFFFFFFFFFFFFFFFFFFF403F3D767271706D
          6C717176B27E3DD39638D19439D19439D19439D19439D19439D19439D19439D1
          9439D39638B27E3D737478716D6D74717054504FFFFFFFFFFFFFFFFFFFFFFFFF
          4945427E7B7779767278797AB58341DAA047D79E47D79E47D79E47D79E47D79E
          47D79E47D79E47D79E47DAA047B58341797A7C7976737C79765A5553FFFFFFFF
          FFFFFFFFFFFFFFFF494542F1F0EFE9E9E8B0B2B4B68544E0A855DDA654DDA654
          DDA654DDA654DDA654DDA654DDA654DDA654E0A855B78745939597EBEAE9F0EF
          EE5A5553FFFFFFFFFFFFFFFFFFFFFFFF494542FFFFFFFFFFFFC6C6CBBB8847E4
          AF60E1AD5FE1AD5FE1AD5FE1AD5FE1AD5FE1AD5FE1AD5FE1AD5FE4AF60BC8A4A
          A1A0A4FFFFFFFFFFFF5A5553FFFFFFFFFFFFFFFFFFFFFFFF534F4D888381827E
          7C838185C1914DE9B86AE6B568E6B568E6B568E6B568E6B568E6B568E6B568E6
          B568E9B86AC1914D858487837F7C878280666260FFFFFFFFFFFFFFFFFFFFFFFF
          5854528E8A888A858389878BC59552EDC174EABE73EABE73EABE73EABE73EABE
          73EABE73EABE73EABE73EDC174C5965289888C8A86838D89876A6663FFFFFFFF
          FFFFFFFFFFFFFFFF585452F4F3F3ECEBEBB9BBBFC59855F0C87AEDC578EDC578
          EDC578EDC578EDC578EDC578EDC578EDC578F0C87AC69956A2A2A6EDEDEDF2F1
          F263605CFFFFFFFFFFFFFFFFFFFFFFFF656260FFFFFFFFFFFFD0D1D5CA9D59F2
          CB81F0C97FF0C97FF0C97FF0C97FF0C97FF0C97FF0C97FF0C97FF2CB81CC9F5A
          AFB1B2FFFFFFFFFFFF6E6966FFFFFFFFFFFFFFFFFFFFFFFFABA9A77B78756A67
          63676769CC9C54DEA248DCA149DCA149DCA149DCA149DCA149DCA149DCA149DC
          A149DEA248CB9C54737175746F6D7F7977CFCDCCFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = btn1Click
      end
      object btn2: TBitBtn
        Left = 188
        Top = 8
        Width = 120
        Height = 40
        Caption = 'Imprimir'
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE1D6BEEEE5D8ECE3D6ECE3D6ECE3D6ECE3D6ECE3
          D6ECE3D6ECE3D6ECE3D6EEE5D8E1D6BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3D3B6F7F1E8F5EFE4F5EFE4
          F5EFE4F5EFE4F5EFE4F5EFE4F5EFE4F5EFE4F7F1E8E3D3B6FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9993949F99999C96969C9696A09A9969636AD7C39BEE
          E4DAEDE1D5EDE1D5EDE1D5EDE1D5EDE1D5EDE1D5EDE1D5EDE1D5EEE4DAD7C39B
          69636AA09A999C96969C96969F9999C4C0C1958F8FC6C4C3C3C0BFC3C0BFC7C5
          C3837D84C6A874E2CDB3E0CBAEE0CBAEE0CBAEE0CBAEE0CBAEE0CBAEE0CBAEE0
          CBAEE2CDB3C6A874837D84C7C5C3C3C0BFC3C0BFC6C4C39992929C9998CECCCA
          CAC8C6CAC8C6CDCCC9837D84BA9D6DD2B68BD0B489D0B489D0B489D0B489D0B4
          89D0B489D0B489D0B489D2B68BBA9D6D837D84CDCCC9CDC9C5D0CBC5CFCCCA9D
          9999A49FA1D5D3D2D1CFCED1CFCED2D0CFD3D2D1D2D2D3D0D1D3D0D0D2D0D0D2
          D0D0D2D0D0D2D0D0D2D0D0D2D0D0D2D0D0D2D0D1D3D2D2D3D3D2D1D4D0CEBACA
          D76E9BE3DCD7D0A49FA1AAA7A7DDDBDBD9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9
          D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7
          D9D7D7DED8D68AC3E9004BFBE9E2D9ABA8A8B2ADB0E3E2E2DFDFDFE1E2E4E3E8
          EDE2E8EFE2E7EEE2E7EEE2E7EEE2E7EEE2E7EEE2E7EEE2E7EEE2E7EEE2E7EEE2
          E7EEE2E7EEE2E7EEE2E8EFE3E8EDE7E5E3EBE6DDE5E3E2B2AEAFB7B3B3E9E8E8
          E6E8E9D6C5AFBC6B10BC6B10BB6A0FBB6A0FBB6A0FBB6A0FBB6A0FBB6A0FBB6A
          0FBB6A0FBB6A0FBB6A0FBB6A0FBB6A0FBC6B10BC6B10D6C5AFE6E8E9E9E8E8B8
          B5B5BCB9BAEFEEEDEEF2F5BA7B3EE1A63CE1A942E1A842E1A842E1A842E1A842
          E1A842E1A842E1A842E1A842E1A842E1A842E1A842E1A842E1A942E1A63CBA7B
          3EEEF2F5EFEEEDBFBBBCCAC2C2F4F4F3F4F8FCC58A4BE8BB5AE6B859E6B759E6
          B759E6B759E6B759E6B759E6B759E6B759E6B759E6B759E6B759E6B759E6B759
          E6B859E8BB5AC58A4BF4F8FCF4F3F2C9C7C6CDC8C9F8F9F9F8FCFFCD9753EFC9
          71EEC670EEC771EEC771EEC771EEC771EEC771EEC771EEC771EEC771EEC771EE
          C771EEC771EEC771EEC670EFC971CD9753F8FCFFF8F8F8CECBCCD2D0D0FDFDFD
          FCFFFFD7A55CF3D485EDC977E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68E9BF
          68E9BF68E9BF68E9BF68E9BF68E9BF68EDC977F3D485D7A55CFCFFFFFDFDFDD4
          D1D0D8D5D8FFFFFFFFFFFFDEB164F8DF93DCA852B18549CA9E60C99C5EC99C5E
          C99C5EC99C5EC99C5EC99C5EC99C5EC99C5ECA9E60B18549DCA852F8DF93DEB1
          64FFFFFFFFFFFFDCD8DBDEDCDBFFFFFFFFFFFFE8C070F9E196E0AC54B99D6BD9
          C094D7BD91D7BD91D7BD91D7BD91D7BD91D7BD91D7BD91D7BD91D9C094B99D6B
          E0AC54F9E196E8C070FFFFFFFFFFFFE3DFDFE3DFE1B1ADAEB0AFB4D8A859D8A8
          59C9924BC4AB7FE1CCB1DFCAADDFCAADDFCAADDFCAADDFCAADDFCAADDFCAADDF
          CAADE1CCB1C4AB7FC9924BD8A859D8A859B0AFB4B1ADAEE4E0E1FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFCBB892E9DDCEE7DACAE7DACAE7DACAE7DACAE7DA
          CAE7DACAE7DACAE7DACAE9DDCECBB892FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0BD98EEE1D5ECDFD1ECDFD1
          ECDFD1ECDFD1ECDFD1ECDFD1ECDFD1ECDFD1EEE1D5D0BD98FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5C4A4F1
          E6DCEFE4D8EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8F1E6DCD5C4A4
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFDACAAEF4EBE2F2E9DEF2E9DEF2E9DEF2E9DEF2E9DEF2E9DEF2E9DEF2
          E9DEF4EBE2DACAAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFDED0B8F7EFE8F5EDE4F5EDE4F5EDE4F5EDE4F5ED
          E4F5EDE4F5EDE4F5EDE4F7EFE8DED0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D6C1FAF5EDF8F3EAF8F3EA
          F8F3EAF8F3EAF8F3EAF8F3EAF8F3EAF8F3EAFAF5EDE2D6C1FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5DAC9FF
          FBF4FDF9F1FDF9F1FDF9F1FDF9F1FDF9F1FDF9F1FDF9F1FDF9F1FFFBF4E5DAC9
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE3D8C6F0E9DEEFE8DBEFE8DBEFE8DBEFE8DBEFE8DBEFE8DBEFE8DBEF
          E8DBF0E9DEE3D8C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = btn2Click
      end
      object btn3: TBitBtn
        Left = 344
        Top = 6
        Width = 120
        Height = 40
        Caption = 'Fachar'
        DoubleBuffered = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF995F
          33D7961FDFAE5CEBCD98FBF5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA96A38D7971FD2901CD2901CD2901CD2901CDFAF5CECD09EFAF2
          E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDDBFA5C0A28A8D90968C4E1AD8991FD2901CD2901CD2901CD2901C
          D2901CD2901CD2901CD59627E5BC6FD1AC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFBA7B45864B1F0B101B6F3702D9991FD2901DD2
          901DD2901DD2901DD2901DD2901DD2901DD2901DD5951DA4581FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF834F894E200A0F1B743A
          02DA9920D3901ED3901ED3901ED3901ED3901ED3901ED3901ED3901ED6941DA7
          5D23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8FDFFFFFFFFFFFFC38750
          8D5122090F1B783D02DB9921D4911FD4911FD4911FD4911FD4911FD4911FD491
          1FD4911FD7951EAA6125FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1513CDFF
          FFFFFFFFFFD0924E8D5525090F1B7B4102DB9A23D49220D49220D49220D49220
          D49220D49220D49220D49220D7961FAD6528FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF1513CD1B1BE4FFFFFFD99F58925826090E1B804606DC9B25D69522D5
          9423D59423D59423D59423D59423D59423D59423D79722B0682CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF1513CD242CF81519E8805066A1621F090E198649
          0AD7911FC48727D79623D59525D59525D59525D59525D59525D59525D79924B3
          6B2D1F2CEB1F2CEB222DEB222CEB212CEB212BEB222CEC2532F42331F61925F7
          3624820D110E884B0BEAD095C4CBDCC07917D79929D79728D79728D79728D797
          28D79728D99B27B7702F6D76EF263DF42A3FF42A3FF42A3EF4293DF4293CF427
          3AF32739F32839F5202FF80B098F905106EAC875DEC391D49425D7992CD79A2C
          D79A2CD79A2CD79A2CD79A2CDA9E2CB974316F78EF2A44F42D46F42D45F42C45
          F42C44F42C42F42C42F42B41F4293EF42F48F65C6FFF4F2B7DE8B84DDFAD4DE0
          B054DDA745D99E32D99B2FD99C30D99C31D99C31DCA031BC7833707BF22A45F4
          2C48F42C47F42C46F42C45F42C46F32F48F42C45F43852F595A7FF1B1ACF9658
          19E7BB5AE0B256E0B256E0B357E1B45ADEAC4BD9A036D99F36DAA037DCA437C1
          7D357480F484A0FA849EF9849EF9839CF9849CF98BA0FA2E4BF43D5BF691A7FF
          2620D60B0D119A5E1DE8BC65E2B45DE2B45DE2B45DE2B45DE2B65EE3B45EDFAB
          4BDDA33BDFA73EC480363A3AED4D50EF4B4EEF4A4EEF4A4EEF4B50EF363BEF44
          67F794ACFE6245B7A56B2C070C149E6524E9C16CE4B965E4B965E4B965E4B965
          E4B965E4B965E4BA67E4B660DFAA46C88439FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF292BEF8DA1F92527FAEAB862AB7132060B16A46A27ECC475E6BC6DE6
          BC6DE6BC6DE6BC6DE6BC6DE6BC6DE6BC6DE6BC6FE8C071CA8937FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF2B27F11B17F1FFFFFFE5B15EAB7536060A16AA6F
          2BEDC97BE8C274E8C274E8C274E8C274E8C274E8C274E8C274E8C274EAC679CD
          8C3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1812F1FFFFFFFFFFFFE0AE67
          AF7838050A15AF752EEFCD84EAC67DEAC67DEAC67DEAC67DEAC67DEAC67DEAC6
          7DEAC67DEDCA83D0903CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE1B06BB17B3A040A15B27A32F1D18FEDCA86EDCA86EDCA86EDCA86
          EDCA86EDCA86EDCA86EDCA86EFCE8DD3943DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE3B46CB37E3B040914B88037F4D797EFD08FEF
          D08FEFD08FEFD08FEFD08FEFD08FEFD08FEFD08FF1D496D6993FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6B86EB8823E040A14C690
          3FFFE4A9F8DE9FF6DA9CF3D79AF2D799F2D799F2D799F2D799F2D799F4DBA0D8
          9C41FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BB71
          B7833F04091426211C847458907B5DC8B182F4DCA6FEE8B0FAE4ADF9E2ABF7DF
          A9F6DFA7F7E2AFDBA045FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE9BD73D09B4870512E75552F6D4F2C6B4D2B6749296245275C4024
          B28B4FBF9655EDCA7BF0D38FF4D99BDFA748FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEAC175E6B352EAB755EBB855EBB855EBB855EB
          B855EBB855EAB755E8B351E6B150E3AD4EE3AC4DE3AC4DE4B050}
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = btn3Click
      end
    end
    object dbgrd2: TDBGrid
      Left = 1
      Top = 93
      Width = 488
      Height = 339
      Align = alClient
      DataSource = ds1
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrd2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_PARCELA'
          Title.Caption = 'N'#186' PARCELA'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 84
          Visible = True
        end>
    end
    object pnl6: TPanel
      Left = 1
      Top = 448
      Width = 488
      Height = 57
      Align = alBottom
      Color = 8240895
      ParentBackground = False
      TabOrder = 3
      object dbtxttotal: TDBText
        Left = 175
        Top = 10
        Width = 133
        Height = 32
        AutoSize = True
        DataField = 'total'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 13
        Top = 12
        Width = 162
        Height = 29
        Caption = 'Saldo Devedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnl7: TPanel
      Left = 1
      Top = 432
      Width = 488
      Height = 16
      Align = alBottom
      Caption = 'pnl7'
      TabOrder = 4
      Visible = False
      object img1: TImage
        Left = 336
        Top = 24
        Width = 105
        Height = 105
      end
    end
  end
  object dscliente: TDataSource
    DataSet = DM.cdscliente
    Left = 88
    Top = 184
  end
  object ds1: TDataSource
    DataSet = DM.CDSparcela
    Left = 465
    Top = 232
  end
end
