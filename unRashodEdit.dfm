object frmRashodEdit: TfrmRashodEdit
  Left = 192
  Top = 119
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1072#1089#1093#1086#1076#1099
  ClientHeight = 313
  ClientWidth = 216
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 216
    Height = 313
    Align = alClient
    BevelInner = bvLowered
    Color = 15132390
    TabOrder = 0
    object sbClose: TSpeedButton
      Left = 8
      Top = 266
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
    object pnl1: TPanel
      Left = 8
      Top = 8
      Width = 201
      Height = 257
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
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 23
        Height = 13
        Caption = #1052'/'#1082':'
      end
      object Label3: TLabel
        Left = 8
        Top = 80
        Width = 23
        Height = 13
        Caption = #1052'/'#1087':'
      end
      object Bevel1: TBevel
        Left = 8
        Top = 248
        Width = 185
        Height = 9
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label5: TLabel
        Left = 8
        Top = 32
        Width = 29
        Height = 13
        Caption = #1044#1072#1090#1072':'
      end
      object Label4: TLabel
        Left = 8
        Top = 104
        Width = 46
        Height = 13
        Caption = #1055#1088#1086#1089#1090#1086#1077':'
      end
      object Label6: TLabel
        Left = 8
        Top = 128
        Width = 41
        Height = 13
        Caption = #1041#1102#1075#1077#1083#1100':'
      end
      object Label7: TLabel
        Left = 8
        Top = 200
        Width = 22
        Height = 13
        Caption = #1042#1082#1083':'
      end
      object Label8: TLabel
        Left = 8
        Top = 224
        Width = 26
        Height = 13
        Caption = #1046#1077#1083':'
      end
      object Label9: TLabel
        Left = 8
        Top = 152
        Width = 51
        Height = 13
        Caption = #1041#1102#1075#1077#1083#1100' A:'
      end
      object Label10: TLabel
        Left = 8
        Top = 176
        Width = 51
        Height = 13
        Caption = #1041#1102#1075#1077#1083#1100' C:'
      end
      object eMK: TDBEdit
        Left = 104
        Top = 56
        Width = 89
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'mk'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 2
      end
      object emp: TDBEdit
        Left = 104
        Top = 80
        Width = 89
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'mp'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 3
      end
      object eTheDate: TDBEdit
        Left = 88
        Top = 32
        Width = 105
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'thedate'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 1
      end
      object cbClient: TDBLookupComboBox
        Left = 48
        Top = 8
        Width = 145
        Height = 19
        Ctl3D = False
        DataField = 'client_id'
        DataSource = DM.dsqRashod
        KeyField = 'id'
        ListField = 'Name'
        ListSource = DM.dsqClients
        ParentCtl3D = False
        TabOrder = 0
      end
      object eProstoe: TDBEdit
        Left = 104
        Top = 104
        Width = 89
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'prostoe'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 4
      end
      object eBugel: TDBEdit
        Left = 104
        Top = 128
        Width = 89
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'bugel'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 5
      end
      object eVkl: TDBEdit
        Left = 104
        Top = 200
        Width = 89
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'vkl'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 8
      end
      object eGel: TDBEdit
        Left = 104
        Top = 224
        Width = 89
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'gel'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 9
      end
      object eBugelA: TDBEdit
        Left = 104
        Top = 152
        Width = 89
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'bugelA'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 6
      end
      object eBugelC: TDBEdit
        Left = 104
        Top = 176
        Width = 89
        Height = 19
        Color = clWhite
        Ctl3D = False
        DataField = 'bugelC'
        DataSource = DM.dsqRashod
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    object Navigator: TDBNavigator
      Left = 2
      Top = 293
      Width = 212
      Height = 18
      DataSource = DM.dsqRashod
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
end
