object Frm_pagamentodecontas: TFrm_pagamentodecontas
  Left = 319
  Top = 147
  BorderStyle = bsDialog
  Caption = 'Pagamentos de Contas'
  ClientHeight = 545
  ClientWidth = 826
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
    Top = 57
    Width = 826
    Height = 57
    Align = alTop
    Color = 13104126
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 55
    ExplicitWidth = 959
    object lbl3: TLabel
      Left = 693
      Top = 8
      Width = 127
      Height = 13
      Caption = 'Pagamento em Atrazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 693
      Top = 32
      Width = 107
      Height = 13
      Caption = 'Pagamento em Dia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnl3: TPanel
      Left = 1
      Top = 1
      Width = 664
      Height = 55
      Align = alLeft
      Color = 6377522
      ParentBackground = False
      TabOrder = 0
      object lbl1: TLabel
        Left = 8
        Top = 21
        Width = 49
        Height = 23
        Caption = 'Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 215
        Top = 21
        Width = 39
        Height = 23
        Caption = 'Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dtp1: TDateTimePicker
        Left = 64
        Top = 16
        Width = 145
        Height = 33
        Date = 42072.425266701400000000
        Time = 42072.425266701400000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dtp2: TDateTimePicker
        Left = 260
        Top = 16
        Width = 153
        Height = 33
        Date = 42072.425294675920000000
        Time = 42072.425294675920000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object btn1: TBitBtn
        Left = 416
        Top = 8
        Width = 113
        Height = 42
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
        TabOrder = 2
        OnClick = btn1Click
      end
      object btn5: TBitBtn
        Left = 536
        Top = 8
        Width = 121
        Height = 42
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
        TabOrder = 3
      end
    end
    object pnl6: TPanel
      Left = 668
      Top = 5
      Width = 20
      Height = 21
      Color = clRed
      ParentBackground = False
      TabOrder = 1
    end
    object pnl7: TPanel
      Left = 668
      Top = 31
      Width = 20
      Height = 21
      Color = clBlack
      ParentBackground = False
      TabOrder = 2
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 114
    Width = 826
    Height = 176
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object dbgrd1: TDBGrid
      Left = 4
      Top = 4
      Width = 818
      Height = 168
      Align = alClient
      Color = 16698311
      DataSource = dscontapagar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
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
          FieldName = 'ID_FORNECEDOR'
          Title.Caption = 'FORNECEDOR'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGAR_DATACONTA'
          Title.Caption = 'DATA CONTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGAR_REFERENTE'
          Title.Caption = 'REFERENTE'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGAR_DOCUMENTO'
          Title.Caption = 'DOCUMENTO'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGAR_DATAVENCIMENTO'
          Title.Caption = 'DATA VENCIMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGAR_VALORCONTA'
          Title.Caption = 'VALOR CONTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGAR_TOTAL'
          Title.Caption = 'TOTAL'
          Width = 90
          Visible = True
        end>
    end
  end
  object dbgrd2: TDBGrid
    Left = 0
    Top = 346
    Width = 826
    Height = 144
    Align = alClient
    DataSource = dscontaspagas
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAPAG'
        Title.Caption = 'DATA CONTA'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENC'
        Title.Caption = 'DATA PAGAMENTO'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIAS'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUROS'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MULTA'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'COM JUROS'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL'
        Title.Caption = 'COM DESCONTO'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'VALOR DESCONTO'
        Width = 100
        Visible = True
      end>
  end
  object pnl4: TPanel
    Left = 0
    Top = 490
    Width = 826
    Height = 55
    Align = alBottom
    TabOrder = 3
  end
  object pnl5: TPanel
    Left = 0
    Top = 290
    Width = 826
    Height = 56
    Align = alTop
    Color = clTeal
    ParentBackground = False
    TabOrder = 4
    object dbedtDATAVENC: TDBEdit
      Left = 65
      Top = 21
      Width = 20
      Height = 21
      DataField = 'DATAVENC'
      DataSource = dscontaspagas
      TabOrder = 4
    end
    object dbedtDATAPAG: TDBEdit
      Left = 108
      Top = 14
      Width = 20
      Height = 21
      DataField = 'DATAPAG'
      DataSource = dscontaspagas
      TabOrder = 3
    end
    object btn2: TBitBtn
      Left = 20
      Top = 6
      Width = 170
      Height = 45
      Caption = 'Pagamento de Conta'
      DoubleBuffered = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF84BB7C2F9D30309F36499331C0843CC9843EC8833CC781
        3CC6803AC6803AC57E38C37B35C27A31C17630C1752EBE722CBD6F29B9703AFF
        FFFFFFFFFFFFFFFFE1EFE08EC28855AD552FA13738B9583ABD5F33AA4448A343
        82B56DDDDEBEF8EBDBF8ECDEF8EAD9F2DEC0F5E4CBF5E3C8F3DFC1F2DBB6EDCF
        9BEDCF9BE9C586BF7C4BFFFFFFBCDBB9319C3035B14F36B9593DBF633BB85935
        B35239B95C39BC5D37B4522F9A30ADC893F8E9D5E1AB52D6923EC67C34F0D7B3
        F0D39BE3AD55D89B49C78038EAC689CB874CD8EAD653B0533CBE6136BB5F42B8
        5B75BC7256C16E33B75832A03932A74039BE6338BB5D2E982DCED7B1EAC689EF
        D3A4EDD0A0DDAD6DEDCA80E3AD55EFD4A5DEAE69ECCA8ECB894E59AB514CC46F
        25B75031B14C88BE7F9AC99452C46F36BD5E2F9C32EEC97D32AB4439C06137B9
        57419935F8EAD6F8EADAF9F0E5E5C08BF2D9A7E3AD55F8EADAE9CFA8ECCB90CC
        8C515BB35A71D2906FD18D4BAE4FFFFFFFAED8AA4BC06C36BD5E2F9D35F8EAD6
        F6E8D439BF6338BE61399F39F6E7D1F3E1C7F0DBBEF5E3C8F3DDBAF3DFC0F2DF
        C3EAC994ECCB90D1925481BD7D6BB06371B2697EBC7AFFFFFFADD7A84BC06E35
        BF642F9E34F9EADA49AC4E38C06638BF65369E3AF8EAD6DEAE69E5C08BF1D9B7
        F1DAB8E9C280DAA357E9C489ECCA8ED29457FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF96C58B51C87633BF642E9D342D9B3036BB5E39C16936B95A58A348F8EAD6E1
        B267CD883FE2BC85EDCA80E6BA6EE2B46CC27A31EBC98DD59A5FFFFFFFFFFFFF
        FAFCF987BD7E49A34336A94437BD6236BC6337BD6139C66C38C57035BC5D3095
        28E3E0C3ECCB8FF3DFC0F4E2C7D8A260F0D18DF3DFC0F3DFC0E9CCA0ECCB90D8
        9F65FFFFFFC8E1C52A952934B65435C7723CC97739C06836C06536BC6434B254
        35A13964A958EEE6CDF8EAD6ECCB8FFAF2E8F5E9DAEFD6B1F2DCB5F9F0E5FAF2
        EAEBD3AFECCB90DBA46BE3F0E255AD5054D08826C3683CC16963BC6A52C97D34
        C76E40A240FAEFE3F8EAD6F8EBDCF8ECDEF8ECDEF6E7D2F8ECDEF1DCBCF5E3C8
        F3DFC1F0D7ADF0DAB5EED19EECCB90DCA76E9ACA9697DFAD89E1B653CA8470B4
        68FFFFFF44C67430C8732EA13BF5E3C4F5E3C4F5E3C4F3E1CBF8EBDCF2DBB4DF
        AC65E7C594F3DFC1F3DFC19273D18D6CC1E5C5A1ECCB90DDAC738AC285A8E5C5
        80DDAE75D093FFFFFFFFFFFF52CB8534CB782FA33CF5E3C41F94212195282B99
        2F91BA74E7B964E7C180D59850EACA9D7057E31A25F21A25F23026B8ECCB90E0
        AF76B1D7AE96D8A58BE5BF7BDCAA5AA850FFFFFF9BE4BD80E6B8369F3B3B9023
        5CDA9A6CE9BB4BC56FB2C78BECCB8FF5E3C8F6E7D1DDAD6D7E75EE3151F82D4B
        F8292CD5ECCA8EE4B67DF7FBF753A94EB7F0DA91ECCD71D7A046B1557BDBA78A
        E5C05AC07170D2979EF2D98FE4BB419C37EEE4C8ECCB8FFAF2EAF6EADDEFD6B1
        BCA0DA7A81F67380F28064B9ECCB90E5BA80FFFFFFEBF4EA53A84A9EDBB2A2EE
        D299F0D27EDFB37ADDAC84E4BE88E8C06FD29A2C9728E1E1C8F8ECDEF6E7D2F6
        E8D4F3E1C7F5E3C8F3DFC1DFC3BED1AEB5EED19EECCB90E8BF85FFFFFFFFFFFF
        F8FCF89ACA9382C17D81C27FA3EED397F3DB5BC075599733758324B98239C680
        3AC6803AC57E38C37D36C37B35C27A31C17630C1752EC1732DC88138E9C586E8
        BF85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83BD7B66BA6970C37B5C9D3EEAB951
        EAB84BE7B142E5AB39E3A42FE09E27DE981FDB9219DA8F15D98D14D98D14D98D
        14D78A14CD8431E9C085FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
        D090E2B46CF1D078EEC664ECC159EAB951E8B446E6AE3DE3A735E2A12CDF9B23
        DD951BDB9017D98D14D98D14D28A2FEAC083FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF1D293E8C37EF8E9C0F6E4B2F4DC9BF2D283EEC86CECBE55EA
        B84BE7B142E5AB39E3A42FE09E27DE981FDC9219D89739E9BD7AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D495ECCB87FAECC7FAECC5F9EBC3F8E7
        BDF7E5B8F6E3B2F3DDA4F2D794F0D38CEFD084EECD7BEFD084EDCF81E3AD55E9
        BB73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D796EECD84FAECC7
        FAECC7FAECC7FAECC7F9EBC3F8E9C0F7E7BAF6E3B5F5E1AFF4DFAAF3DDA4F2D9
        9DF0D697E5B259E9BB6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
        D18AF6E5C7EEC666EEC664EEC664EEC664EEC664EEC664EEC562EDC260EDC260
        ECC15DECBE5CEBBE59EABA57EAC27AEEC988FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6DDA7EEC86FEEC86FEEC76DEEC76DEEC76DEEC56AED
        C369ECC266ECC063EBBE60EABC5DEAB959E9B656F0C983FFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 203
      Top = 6
      Width = 170
      Height = 45
      Caption = 'Calcular Dias'
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
      TabOrder = 1
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 385
      Top = 6
      Width = 170
      Height = 45
      Caption = 'Salvar'
      DoubleBuffered = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000AF611CAB5916
        AB5916AF611CB26E2DB06B2AB06B2AB06B2AB06B2AB06B2AB06B2AB06B2AB06B
        2AB06B2AB06B2AB06B2AB06B2AB06B2AB06B2AB26E2DAF611CAC5B18AB5915AC
        5B18AF611CEEC86DE59A147F8495DCE0E4D6D9DED6D9DED6D9DED6D9DED6D9DE
        D6D9DED6D9DED6D9DED6D9DED6D9DED6D9DED6D9DED6D9DED6D9DEDCE0E47F84
        95E69D19DE9A22AC5B18BC7228ECC979E39916908F9DDEDDDCDBDAD8DEDCDBDE
        DEDCDFDEDDE0DFDDE0E0DEE1E0DFE2E1DFE2E2E0E3E2E1E4E3E1E5E3E2E5E3E2
        E1E0DEE0DEDD908F9DE49C1DE0A028B6681CBD762DEECD80E49B1E9594A1E4E5
        E3AFA4A69A898E91818787777F7F717576676D6D5F6664575F5D4F5655484E4E
        4249473A433C32395F555BE9E9E89594A1E59E25E2A231BA6B20BF7730EFCF85
        E59E259999A5E5E6E4E7E8E6E7E8E6E7E8E6E7E8E6E7E8E6E7E8E6E7E8E6E7E8
        E6E7E8E6E7E8E6E7E8E6E7E8E6E7E8E6E7E8E6E7E8E69999A5E7A12BE4A738BC
        6C22C37A31F0D18CE6A32B9F9DAAECEAE9DCDADAD9D8D7DAD6D7D8D7D6D8D5D6
        D7D4D4D6D4D3D6D2D3D4D2D1D4D1D1D3D1D0D2D0CFD0CDCED3D2D1EDECEA9F9D
        AAE7A631E5AB3EBE7026C57F35F1D390E7A732A4A2AFF0F0EEB2A8AA97878B8F
        7F8485757D7D6F7374646B6C5D6362555D5B4D5453464C4C3F47453841392F36
        62565DF4F5F3A4A2AFE9AA39E6AE46C07327C78335F0D394E9AB38A8A7B4F0F1
        F0F0F1F0F4F5F3F5F7F5F6F8F6F7F9F7F8F9F8F9FBF8FAFBFAFBFDFAFCFEFCFD
        FEFDFEFFFDFEFFFDF8F9F8F2F2F1A8A7B4EAAE3EE8B34BC37729C98539F2D598
        EBAE3EACAAB8F6F5F5F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7
        F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7F8F7F7ACAAB8ECB143EAB650C6
        7B2CCB8939F3D79DECB244B2AFBDF9FAF8C7C0C2B3A9ABAEA3A6A79D9FA0999B
        9B9194968B908F858B898185847A8080737B78707670686D928B8EFDFEFCB2AF
        BDEDB549EBBA56C87D2ECD8D3DF4D8A0EEB549B6B7C2FAF9F9F7F6F6F9F9F9FA
        F9F9FAFAFAFBFBFBFCFBFBFCFBFBFCFCFCFDFDFCFEFDFDFEFDFDFEFEFDFEFEFD
        FBFBFBFAFAFAB6B7C2EEB74FEDBB5BCA8531D09040F3DAA5EEBA50A6A6B5FFFF
        FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFE
        FFFFFEFFFFFEFFFFFEFFFFFFFFFFA6A6B5EFBC56EEBF61CD8833D29442F5DCAA
        F0BF5CB8926991796B977B67977B65977B65977B65977B65977B65977B65977B
        65977B65977B65977B65977B65977B65977B6791796BB89269F0C163F0C268CF
        8A35D49644F6DDACEEBE63F2C367FAC864A58973B8A28AB6A088B6A088B6A088
        B6A088B6A088B6A088B6A088B6A088B6A088B6A088B8A28AA58973FAC864F2C3
        67EFC068F1C46CD28F37D69A47F7E0AFEFC367F0C56CF6C867A29EAAD8D8D9D4
        D3D5D4D3D5D4D3D5D4D3D5D4D3D5D4D3D5D5D4D5D7D6D7D7D7D8D7D7D7D8D9DA
        A29EABF6C867F0C56CF0C56CF3C970D4933AD99D49F7E1B3F0C66CF0C771F7CA
        6BACA9B4DBD9D8D8D6D5D8D6D5D8D6D5D8D6D5D8D6D5D8D6D5DBD9D9BAB7B9BA
        B8BCB9B6BBD1D0D0AFADB5F7CA6BF0C771F0C771F2CC76D8973CDBA04CF8E4B5
        F1C870F1C975F7CC6FB3AEBAE0DFDEDDDCDBDDDCDBDDDCDBDDDCDBDDDCDBDDDC
        DBE5E6E7654F3DA68257A57F51938F95B8B5BFF7CC6FF1C975F1C975F3CE7ADA
        9B3FDEA64EF9E5B8F1CB74F2CD79F7CE73B8B4BFE4E3E2E1E0DFE1E0DFE1E0DF
        E1E0DFE1E0DFE1E0DFE7E9EBA38052FFD97FFFD67A918F9BC0BDC5F7CE73F2CD
        79F2CD79F4D17EDC9F42E0A951FAE4BAF3CD79F4CE7DF9D077BCB9C4E8E7E6E5
        E4E3E5E4E3E5E4E3E5E4E3E5E4E3E5E4E3EBECF09F7E54FBD580FDD47A96949C
        C3C0CBF9D077F4CE7DF4CE7DF6D382DFA144E2AB52FBE7BCF4D17DF5D281F9D3
        7BC2BEC9ECECEBE9E9E8E9E9E8E9E9E8E9E9E8E9E9E8E9E9E8EFF2F5A28156FF
        DB86FFDA819996A0C9C5D0F9D37BF5D281F5D282F8D98BE0A243E4AF54F9E8BE
        F4D37DF5D483F8D47DC8C5CDF0F0EFEDEDECEDEDECEDEDECEDEDECEDEDECEDED
        ECF5F7F983694ADCB871DAB36A9E9BA1CCCAD4F8D47DF5D584F7D98BE7B453E4
        AB5AE6B359FBEED1F6D98DF5D480F9D57CCBC8D0F4F4F3F1F1F0F1F1F0F1F1F0
        F1F1F0F1F1F0F1F1F0F7F8F69D9AA0A09EA59C9AA1D5D3D4CECBD3F9D67CF8DA
        8DE8B656E5AB51FFFFFFE6AC49FBEDCCFCEED2FBE9C0FFEBBDDBDDEBFBFFFFF9
        FDFFF9FDFFF9FDFFF9FDFFF9FDFFF9FDFFFAFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        DBDEECFFEDC5ECBE66E6AE52FFFFFFFFFFFFE5A942E7B14CEBBB5CEBBA5CEBBB
        5BE7BB69E7BB69EABF6BEABE6BEABE6BEABE6BEABE6BEABE6BEABE6BEABE6BEA
        BE6BEABF6BE7BB69E0AF5DEAB853EAB65EFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btn4Click
    end
    object btn6: TBitBtn
      Left = 568
      Top = 6
      Width = 170
      Height = 45
      Caption = 'Fechar'
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
      TabOrder = 5
      OnClick = btn6Click
    end
  end
  object pnl8: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 57
    Align = alTop
    Caption = 'PAGAMENTO DE CONTAS'
    Color = 6377522
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object dscontapagar: TDataSource
    DataSet = DM.CDScontaspagar
    Left = 128
    Top = 145
  end
  object dscontaspagas: TDataSource
    DataSet = DM.CDScontaspagas
    Left = 504
    Top = 384
  end
end
