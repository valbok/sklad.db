object frmRashod: TfrmRashod
  Left = 69
  Top = 117
  Width = 655
  Height = 375
  Caption = #1056#1072#1089#1093#1086#1076#1099
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
    Width = 647
    Height = 348
    Align = alClient
    BevelInner = bvLowered
    Color = 15132390
    TabOrder = 0
    object grid: TDBGrid
      Left = 2
      Top = 2
      Width = 643
      Height = 326
      Align = alClient
      DataSource = DM.dsqRashod
      FixedColor = 15792895
      PopupMenu = PopupMenu
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
      Width = 643
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
  object PopupMenu: TPopupMenu
    Left = 272
    Top = 152
    object MSWord1: TMenuItem
      Caption = #1048#1084#1087#1086#1088#1090' '#1074' MS Word'
      OnClick = MSWord1Click
    end
  end
  object EkRTF: TEkRTF
    InFile = 'reports\template\rashod.rtf'
    OutFile = 'reports/tmp/outfile.doc'
    TrueValue = 'True'
    FalseValue = 'False'
    UDFList = InvFn
    Charset = DEFAULT_CHARSET
    Lang = 0
    Options = [eoGraphicsBinary, eoDotAsColon]
    DisableControls = True
    Left = 384
    Top = 136
  end
  object InvFn: TEkUDFList
    Functions = <
      item
        Name = 'MyTotal'
        ArgMinCount = 1
        ArgMaxCount = 1
        ResultType = 1
      end>
    Left = 480
    Top = 88
  end
end
