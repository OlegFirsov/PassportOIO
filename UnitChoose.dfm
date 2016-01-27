object FormChoose: TFormChoose
  Left = 241
  Top = 267
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1080' '#1086#1090#1095#1077#1090#1085#1086#1075#1086' '#1075#1086#1076#1072
  ClientHeight = 252
  ClientWidth = 754
  Color = clBtnFace
  Constraints.MaxHeight = 286
  Constraints.MaxWidth = 760
  Constraints.MinHeight = 284
  Constraints.MinWidth = 760
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 207
    Top = 72
    Width = 75
    Height = 13
    Caption = #1042#1099#1073#1086#1088' '#1088#1072#1081#1086#1085#1072':'
  end
  object Label4: TLabel
    Left = 393
    Top = 72
    Width = 88
    Height = 13
    Caption = #1042#1099#1073#1086#1088' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
  end
  object Label5: TLabel
    Left = 16
    Top = 72
    Width = 77
    Height = 13
    Caption = #1042#1099#1073#1086#1088' '#1088#1077#1075#1080#1086#1085#1072
  end
  object Label6: TLabel
    Left = 576
    Top = 72
    Width = 59
    Height = 13
    Caption = #1042#1099#1073#1086#1088' '#1075#1086#1076#1072
  end
  object lblRegion: TLabel
    Left = 120
    Top = 80
    Width = 3
    Height = 13
  end
  object lblYear: TLabel
    Left = 528
    Top = 80
    Width = 3
    Height = 13
  end
  object cbRajon: TComboBox
    Left = 207
    Top = 99
    Width = 162
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    OnChange = cbRajonChange
  end
  object cbHoz: TComboBox
    Left = 393
    Top = 99
    Width = 152
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    OnChange = cbHozChange
  end
  object cbRegion: TComboBox
    Left = 16
    Top = 99
    Width = 169
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = cbRegionChange
  end
  object cbYear: TComboBox
    Left = 576
    Top = 99
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    Items.Strings = (
      '2014'
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023'
      '2024'
      '2025'
      '2026'
      '2027'
      '2028'
      '2029'
      '2030'
      '2031'
      '2032'
      '2033')
  end
  object btnChoose: TButton
    Left = 352
    Top = 168
    Width = 65
    Height = 25
    Caption = #1042#1074#1086#1076
    TabOrder = 4
    OnClick = btnChooseClick
  end
end
