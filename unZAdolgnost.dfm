object frmZadolgnost: TfrmZadolgnost
  Left = 195
  Top = 97
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1079#1072#1076#1086#1083#1078#1085#1086#1089#1090#1080
  ClientHeight = 216
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 216
    Align = alClient
    BevelInner = bvLowered
    Color = 15132390
    TabOrder = 0
    object sbClose: TSpeedButton
      Left = 8
      Top = 186
      Width = 201
      Height = 22
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000
        0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF
        0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF000000FFFFFFFF
        FFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000FF0000FF0000FF000000FFFFFFFFFFFF0000000000FF0000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF00
        00000000000000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF00
        00FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000FF0000FF0000FF0000FF0000FF000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FF0000FF0000FFFF
        FFFFFFFFFF0000FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000
        00FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF0000FF0000FF000000FFFFFFFFFFFFFFFFFF0000FF
        0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbCloseClick
    end
    object Label6: TLabel
      Left = 216
      Top = 96
      Width = 41
      Height = 13
      Caption = #1041#1102#1075#1077#1083#1100':'
    end
    object Label7: TLabel
      Left = 216
      Top = 168
      Width = 22
      Height = 13
      Caption = #1042#1082#1083':'
    end
    object Label8: TLabel
      Left = 216
      Top = 192
      Width = 26
      Height = 13
      Caption = #1046#1077#1083':'
    end
    object Label9: TLabel
      Left = 216
      Top = 24
      Width = 23
      Height = 13
      Caption = #1052'/'#1082':'
    end
    object Label10: TLabel
      Left = 216
      Top = 48
      Width = 23
      Height = 13
      Caption = #1052'/'#1087':'
    end
    object Label11: TLabel
      Left = 216
      Top = 72
      Width = 46
      Height = 13
      Caption = #1055#1088#1086#1089#1090#1086#1077':'
    end
    object Label12: TLabel
      Left = 264
      Top = 8
      Width = 62
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Label13: TLabel
      Left = 337
      Top = 8
      Width = 41
      Height = 13
      Caption = #1044#1077#1085#1100#1075#1080':'
    end
    object Label14: TLabel
      Left = 216
      Top = 120
      Width = 51
      Height = 13
      Caption = #1041#1102#1075#1077#1083#1100' '#1040':'
    end
    object Label15: TLabel
      Left = 216
      Top = 144
      Width = 51
      Height = 13
      Caption = #1041#1102#1075#1077#1083#1100' C:'
    end
    object pnl1: TPanel
      Left = 8
      Top = 8
      Width = 201
      Height = 177
      BevelInner = bvLowered
      Color = 15724527
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 30
        Height = 13
        Caption = #1060#1048#1054':'
      end
      object Label3: TLabel
        Left = 8
        Top = 56
        Width = 52
        Height = 13
        Caption = #1053#1072' '#1089#1091#1084#1084#1091':'
      end
      object Bevel1: TBevel
        Left = 8
        Top = 129
        Width = 185
        Height = 9
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label5: TLabel
        Left = 8
        Top = 32
        Width = 101
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1077#1076#1080#1085#1080#1094':'
      end
      object Label4: TLabel
        Left = 8
        Top = 80
        Width = 47
        Height = 13
        Caption = #1053#1072' '#1089#1095#1077#1090#1091':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 104
        Width = 45
        Height = 13
        Caption = #1054#1089#1090#1072#1090#1086#1082':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object sbSet: TSpeedButton
        Left = 8
        Top = 144
        Width = 187
        Height = 22
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1095#1105#1090
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000004040409F9F9F404040000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000404040A0A0A0C0
          C0C0BFBFBF808080808080404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000404040A0A0A0C0C0C0C0C0C0C0C0C0BFBFBF8080808080808080808080
          80404040000000FFFFFF000000404040A0A0A0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0BFBFBF8080808080808080808080808080808080802020209F9F9FC0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBF8080808080808080808080
          808080808080804040407F7F7FCFCFCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0BFBFBF808080808080808080808080808080808080404040202020CFCFCF
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBF8080808080808080808080
          80808080808080404040FFFFFF7F7F7FCFCFCFC0C0C0C0C0C0C0C0C0C0C0C0DF
          DFDFEFEFEFAFAFAF808080808080808080808080808080000000FFFFFF202020
          CFCFCFC0C0C0CFCFCFEFEFEFDFDFDFCFCFCF6060609F9F9FDFDFDFCFCFCF8080
          80808080606060000000FFFFFFFFFFFF7F7F7FDFDFDFEFEFEFC0C0C060606030
          3030606060C0C0C0C0C0C0C0C0C0DFDFDF909090404040FFFFFFFFFFFFFFFFFF
          202020AFAFAFB0B0B0909090909090C0C0C0909090606060303030606060B0B0
          B0A0A0A0202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020707070B0B0B0C0
          C0C0303030606060B0B0B0707070202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF202020707070A0A0A0707070202020FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbSetClick
      end
      object eName: TEdit
        Left = 40
        Top = 8
        Width = 153
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object eCitems: TEdit
        Left = 112
        Top = 32
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object eCMoney: TEdit
        Left = 112
        Top = 56
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object eOnAccount: TEdit
        Left = 88
        Top = 80
        Width = 105
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object eOstatok: TEdit
        Left = 88
        Top = 104
        Width = 105
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
    end
    object eBugel: TEdit
      Left = 272
      Top = 96
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object Evkl: TEdit
      Left = 272
      Top = 168
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object eGel: TEdit
      Left = 272
      Top = 192
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object eMp: TEdit
      Left = 272
      Top = 48
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object eProstoe: TEdit
      Left = 272
      Top = 72
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object eMk: TEdit
      Left = 272
      Top = 24
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object eBugelA: TEdit
      Left = 272
      Top = 120
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object eBugelCC: TEdit
      Left = 272
      Top = 144
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object emkc: TEdit
      Left = 340
      Top = 24
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object empc: TEdit
      Left = 340
      Top = 48
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
    object eProstoec: TEdit
      Left = 340
      Top = 72
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
    object eBugelc: TEdit
      Left = 340
      Top = 96
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 12
    end
    object eBugelCa: TEdit
      Left = 340
      Top = 120
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 13
    end
    object eBugelCCC: TEdit
      Left = 340
      Top = 144
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 14
    end
    object eVklc: TEdit
      Left = 340
      Top = 168
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 15
    end
    object eGelc: TEdit
      Left = 340
      Top = 192
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 16
    end
  end
end
