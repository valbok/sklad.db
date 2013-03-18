object frmCosts: TfrmCosts
  Left = 95
  Top = 111
  Width = 639
  Height = 375
  Caption = #1062#1077#1085#1099
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
    Width = 631
    Height = 348
    Align = alClient
    BevelInner = bvLowered
    Color = 15132390
    TabOrder = 0
    object grid: TDBGrid
      Left = 2
      Top = 2
      Width = 627
      Height = 326
      Align = alClient
      DataSource = DM.dsqCosts
      FixedColor = 15792895
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Navigator: TDBNavigator
      Left = 2
      Top = 328
      Width = 627
      Height = 18
      DataSource = DM.dsqCosts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
end
