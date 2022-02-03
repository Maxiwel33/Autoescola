object frm_senha: Tfrm_senha
  Left = 518
  Top = 322
  Caption = 'Usu'#225'rio/Senha'
  ClientHeight = 282
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 286
    Height = 33
    Align = alTop
    Caption = 'N'#227'o Entregue sua senha a ningu'#233'm...'
    TabOrder = 0
    ExplicitWidth = 343
  end
  object pgc1: TPageControl
    Left = 0
    Top = 33
    Width = 286
    Height = 208
    ActivePage = ts1
    Align = alTop
    TabOrder = 1
    object ts1: TTabSheet
      Caption = 'Usu'#225'rio'
      ExplicitHeight = 177
      object lbl1: TLabel
        Left = 8
        Top = 16
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = dbedtNOME
      end
      object lbl2: TLabel
        Left = 8
        Top = 56
        Width = 46
        Height = 13
        Caption = 'USUARIO'
        FocusControl = dbedtUSUARIO
      end
      object lbl3: TLabel
        Left = 8
        Top = 96
        Width = 33
        Height = 13
        Caption = 'SENHA'
        FocusControl = dbedtSENHA
      end
      object lbl4: TLabel
        Left = 8
        Top = 136
        Width = 28
        Height = 13
        Caption = 'NIVEL'
        FocusControl = dbedtNIVEL
      end
      object lbl5: TLabel
        Left = 60
        Top = 154
        Width = 180
        Height = 13
        Caption = '1 -Iniciante 2 -Intermediario 3- S'#234'nior'
      end
      object dbedtNOME: TDBEdit
        Left = 8
        Top = 32
        Width = 265
        Height = 21
        DataField = 'NOME'
        DataSource = ds1
        TabOrder = 0
      end
      object dbedtUSUARIO: TDBEdit
        Left = 8
        Top = 72
        Width = 169
        Height = 21
        DataField = 'USUARIO'
        DataSource = ds1
        TabOrder = 1
      end
      object dbedtSENHA: TDBEdit
        Left = 8
        Top = 112
        Width = 169
        Height = 21
        DataField = 'SENHA'
        DataSource = ds1
        PasswordChar = '*'
        TabOrder = 2
      end
      object dbedtNIVEL: TDBEdit
        Left = 8
        Top = 152
        Width = 46
        Height = 21
        DataField = 'NIVEL'
        DataSource = ds1
        TabOrder = 3
      end
      object btn6: TBitBtn
        Left = 192
        Top = 70
        Width = 75
        Height = 67
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
        Layout = blGlyphTop
        ParentDoubleBuffered = False
        TabOrder = 4
      end
    end
    object ts2: TTabSheet
      Caption = 'Op'#231#245'es'
      ImageIndex = 1
      object dbgrd1: TDBGrid
        Left = 0
        Top = 0
        Width = 278
        Height = 180
        Align = alClient
        DataSource = ds1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 241
    Width = 286
    Height = 41
    Align = alClient
    Color = clTeal
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 16
    ExplicitTop = 248
    ExplicitWidth = 185
    object btn1: TBitBtn
      Left = 6
      Top = 8
      Width = 55
      Height = 25
      Caption = 'Novo'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 61
      Top = 8
      Width = 55
      Height = 25
      Caption = 'Salvar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 116
      Top = 8
      Width = 55
      Height = 25
      Caption = 'Excluir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 172
      Top = 8
      Width = 55
      Height = 25
      Caption = 'Cancela'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btn4Click
    end
    object btn5: TBitBtn
      Left = 227
      Top = 8
      Width = 55
      Height = 25
      Caption = 'Altera'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = btn5Click
    end
  end
  object ds1: TDataSource
    DataSet = DM.CDSlogin
    Left = 112
    Top = 72
  end
end
