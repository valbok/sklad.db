object frmClientsEdit: TfrmClientsEdit
  Left = 192
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1083#1080#1077#1085#1090#1099
  ClientHeight = 204
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
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 48
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 216
    Height = 204
    Align = alClient
    BevelInner = bvLowered
    Color = 15132390
    TabOrder = 0
    object sbClose: TSpeedButton
      Left = 8
      Top = 154
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
    object Navigator: TDBNavigator
      Left = 2
      Top = 184
      Width = 212
      Height = 18
      DataSource = DM.dsqClients
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object pnl1: TPanel
      Left = 8
      Top = 8
      Width = 201
      Height = 145
      BevelInner = bvLowered
      Color = 15724527
      TabOrder = 1
      object Label5: TLabel
        Left = 8
        Top = 80
        Width = 70
        Height = 13
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      end
      object Label4: TLabel
        Left = 8
        Top = 56
        Width = 34
        Height = 13
        Caption = #1040#1076#1088#1077#1089':'
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 48
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085':'
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 30
        Height = 13
        Caption = #1060#1048#1054':'
      end
      object memComment: TDBMemo
        Left = 8
        Top = 96
        Width = 177
        Height = 41
        Ctl3D = False
        DataField = 'Comment'
        DataSource = DM.dsqClients
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object eAddress: TDBEdit
        Left = 48
        Top = 56
        Width = 137
        Height = 19
        Ctl3D = False
        DataField = 'address'
        DataSource = DM.dsqClients
        ParentCtl3D = False
        TabOrder = 2
      end
      object ePhone: TDBEdit
        Left = 80
        Top = 32
        Width = 105
        Height = 19
        Ctl3D = False
        DataField = 'Phone'
        DataSource = DM.dsqClients
        ParentCtl3D = False
        TabOrder = 1
      end
      object eName: TDBEdit
        Left = 40
        Top = 8
        Width = 145
        Height = 19
        Ctl3D = False
        DataField = 'Name'
        DataSource = DM.dsqClients
        ParentCtl3D = False
        TabOrder = 0
      end
    end
  end
end
