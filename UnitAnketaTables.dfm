object FormAnketaTables: TFormAnketaTables
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1072#1085#1082#1077#1090#1099' '#1080' '#1090#1072#1073#1083#1080#1094
  ClientHeight = 683
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 886
    Height = 683
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1040#1085#1082#1077#1090#1072
      OnShow = TabSheet1Show
      object Label1: TLabel
        Left = 96
        Top = 22
        Width = 582
        Height = 14
        Caption = 
          ' '#1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1099#1081' '#1087#1072#1089#1087#1086#1088#1090' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1087#1086' '#1080#1089#1082#1091#1089#1089#1090#1074#1077#1085#1085#1086#1084#1091' '#1086#1089#1077#1084#1077#1085#1077#1085 +
          #1080#1102' '#1089'/'#1093' '#1078#1080#1074#1086#1090#1085#1099#1093' '#1079#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 3
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object lblRegionA: TLabel
        Left = 61
        Top = 3
        Width = 50
        Height = 13
        Caption = 'lblRegionA'
      end
      object Label2: TLabel
        Left = 288
        Top = 3
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRajonA: TLabel
        Left = 328
        Top = 3
        Width = 45
        Height = 13
        Caption = 'lblRajonA'
      end
      object Label4: TLabel
        Left = 536
        Top = 3
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblHozA: TLabel
        Left = 612
        Top = 3
        Width = 35
        Height = 13
        Caption = 'lblHozA'
      end
      object lblYearA: TLabel
        Left = 704
        Top = 22
        Width = 49
        Height = 14
        Caption = 'lblYearA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 776
        Top = 22
        Width = 27
        Height = 14
        Caption = #1075#1086#1076'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 668
        Top = 59
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label43: TLabel
        Left = 592
        Top = 59
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object Label44: TLabel
        Left = 384
        Top = 59
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label45: TLabel
        Left = 344
        Top = 59
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object Label46: TLabel
        Left = 117
        Top = 59
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label47: TLabel
        Left = 72
        Top = 59
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label26: TLabel
        Left = 368
        Top = 53
        Width = 154
        Height = 14
        Caption = #1052#1086#1083#1086#1095#1085#1099#1077' '#1083#1072#1073#1086#1088#1072#1090#1086#1088#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 51
        Top = 82
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object Label32: TLabel
        Left = 131
        Top = 82
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label34: TLabel
        Left = 244
        Top = 82
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object Label36: TLabel
        Left = 309
        Top = 82
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label38: TLabel
        Left = 435
        Top = 82
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object Label40: TLabel
        Left = 531
        Top = 82
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label83: TLabel
        Left = 646
        Top = 82
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object Label94: TLabel
        Left = 683
        Top = 82
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object sgAnketa: TStringGrid
        Left = 16
        Top = 42
        Width = 833
        Height = 538
        RowCount = 28
        FixedRows = 0
        TabOrder = 0
        OnDrawCell = sgAnketaDrawCell
        OnKeyPress = sgAnketaKeyPress
        OnSetEditText = sgAnketaSetEditText
        RowHeights = (
          24
          24
          22
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
      object btnsave: TButton
        Left = 344
        Top = 586
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnsaveClick
      end
      object btnExcelAnketa: TButton
        Left = 448
        Top = 586
        Width = 89
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExcelAnketaClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 1'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object lblHoz1: TLabel
        Left = 620
        Top = 11
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label7: TLabel
        Left = 544
        Top = 11
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon1: TLabel
        Left = 336
        Top = 11
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label9: TLabel
        Left = 296
        Top = 11
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion1: TLabel
        Left = 69
        Top = 11
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label11: TLabel
        Left = 24
        Top = 11
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label6: TLabel
        Left = 209
        Top = 40
        Width = 281
        Height = 14
        Caption = ' '#1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1072#1103' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' '#1088#1077#1075#1080#1086#1085#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 24
        Top = 60
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object Label10: TLabel
        Left = 209
        Top = 60
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object Label78: TLabel
        Left = 400
        Top = 60
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object Label79: TLabel
        Left = 611
        Top = 60
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object Label80: TLabel
        Left = 800
        Top = 60
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 1'
      end
      object lblYear1: TLabel
        Left = 648
        Top = 60
        Width = 38
        Height = 13
        Caption = 'lblYear1'
      end
      object lblKodregion1: TLabel
        Left = 104
        Top = 60
        Width = 64
        Height = 13
        Caption = 'lblKodregion1'
      end
      object lblKodrajon1: TLabel
        Left = 274
        Top = 60
        Width = 59
        Height = 13
        Caption = 'lblKodrajon1'
      end
      object lblKodhoz1: TLabel
        Left = 496
        Top = 60
        Width = 51
        Height = 13
        Caption = 'lblKodhoz1'
      end
      object sgTabl1: TStringGrid
        Left = 24
        Top = 96
        Width = 827
        Height = 473
        TabOrder = 0
        OnDrawCell = sgTabl1DrawCell
        OnKeyPress = sgTabl1KeyPress
        OnSetEditText = sgTabl1SetEditText
      end
      object btnSaveTabl1: TButton
        Left = 336
        Top = 575
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl1Click
      end
      object btnExcelTabl1: TButton
        Left = 541
        Top = 575
        Width = 89
        Height = 26
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExcelTabl1Click
      end
      object btnDeleteTabl1: TButton
        Left = 440
        Top = 575
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 2'
      ImageIndex = 2
      OnShow = TabSheet3Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz2: TLabel
        Left = 628
        Top = 19
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label13: TLabel
        Left = 552
        Top = 19
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon2: TLabel
        Left = 344
        Top = 19
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label15: TLabel
        Left = 304
        Top = 19
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion2: TLabel
        Left = 69
        Top = 19
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label17: TLabel
        Left = 24
        Top = 19
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label12: TLabel
        Left = 808
        Top = 68
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 2'
      end
      object lblYear2: TLabel
        Left = 656
        Top = 68
        Width = 38
        Height = 13
        Caption = 'lblYear1'
      end
      object Label16: TLabel
        Left = 619
        Top = 68
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblKodhoz2: TLabel
        Left = 504
        Top = 68
        Width = 51
        Height = 13
        Caption = 'lblKodhoz1'
      end
      object Label82: TLabel
        Left = 408
        Top = 68
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodrajon2: TLabel
        Left = 282
        Top = 68
        Width = 59
        Height = 13
        Caption = 'lblKodrajon1'
      end
      object Label84: TLabel
        Left = 217
        Top = 68
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodregion2: TLabel
        Left = 104
        Top = 68
        Width = 64
        Height = 13
        Caption = 'lblKodregion1'
      end
      object Label86: TLabel
        Left = 24
        Top = 68
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object Label87: TLabel
        Left = 265
        Top = 48
        Width = 246
        Height = 14
        Caption = ' '#1050#1072#1095#1077#1089#1090#1074#1077#1085#1085#1099#1081' '#1089#1086#1089#1090#1072#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1077#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sgTabl2: TStringGrid
        Left = 24
        Top = 104
        Width = 835
        Height = 473
        TabOrder = 0
        OnKeyPress = sgTabl2KeyPress
        OnSetEditText = sgTabl2SetEditText
      end
      object btnExcelTabl2: TButton
        Left = 529
        Top = 583
        Width = 89
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 1
        OnClick = btnExcelTabl2Click
      end
      object btnSaveTabl2: TButton
        Left = 344
        Top = 583
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 2
        OnClick = btnSaveTabl2Click
      end
      object btnDeleteTabl2: TButton
        Left = 436
        Top = 583
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl2Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 3'
      ImageIndex = 3
      OnShow = TabSheet4Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz3: TLabel
        Left = 636
        Top = 11
        Width = 34
        Height = 13
        Caption = 'lblHoz3'
      end
      object Label19: TLabel
        Left = 560
        Top = 11
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon3: TLabel
        Left = 352
        Top = 11
        Width = 44
        Height = 13
        Caption = 'lblRajon3'
      end
      object Label21: TLabel
        Left = 312
        Top = 11
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion3: TLabel
        Left = 69
        Top = 11
        Width = 49
        Height = 13
        Caption = 'lblRegion3'
      end
      object Label23: TLabel
        Left = 16
        Top = 11
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label14: TLabel
        Left = 273
        Top = 46
        Width = 246
        Height = 14
        Caption = ' '#1050#1072#1095#1077#1089#1090#1074#1077#1085#1085#1099#1081' '#1089#1086#1089#1090#1072#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1077#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label81: TLabel
        Left = 16
        Top = 76
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object lblKodregion3: TLabel
        Left = 96
        Top = 76
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label85: TLabel
        Left = 225
        Top = 76
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodrajon3: TLabel
        Left = 290
        Top = 76
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label89: TLabel
        Left = 416
        Top = 76
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodhoz3: TLabel
        Left = 512
        Top = 76
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label91: TLabel
        Left = 627
        Top = 76
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblYear3: TLabel
        Left = 664
        Top = 76
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label93: TLabel
        Left = 816
        Top = 76
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 3'
      end
      object sgTabl3: TStringGrid
        Left = 16
        Top = 108
        Width = 851
        Height = 473
        TabOrder = 0
        OnKeyPress = sgTabl3KeyPress
        OnSetEditText = sgTabl3SetEditText
      end
      object btnSaveTabl3: TButton
        Left = 344
        Top = 587
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl3Click
      end
      object btnExceTabll3: TButton
        Left = 549
        Top = 587
        Width = 97
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExceTabll3Click
      end
      object btnDeleteTabl3: TButton
        Left = 444
        Top = 587
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl3Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 4'
      ImageIndex = 4
      OnShow = TabSheet5Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz4: TLabel
        Left = 644
        Top = 11
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label25: TLabel
        Left = 568
        Top = 11
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon4: TLabel
        Left = 360
        Top = 11
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label27: TLabel
        Left = 320
        Top = 11
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion4: TLabel
        Left = 69
        Top = 11
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label29: TLabel
        Left = 24
        Top = 11
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label18: TLabel
        Left = 803
        Top = 74
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 4'
      end
      object lblYear4: TLabel
        Left = 675
        Top = 74
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label22: TLabel
        Left = 638
        Top = 74
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblKodhoz4: TLabel
        Left = 523
        Top = 74
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label88: TLabel
        Left = 427
        Top = 74
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodrajon4: TLabel
        Left = 301
        Top = 74
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label92: TLabel
        Left = 236
        Top = 74
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodregion4: TLabel
        Left = 107
        Top = 74
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label95: TLabel
        Left = 24
        Top = 74
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object Label96: TLabel
        Left = 281
        Top = 46
        Width = 322
        Height = 14
        Caption = #1048#1089#1089#1083#1077#1076#1086#1074#1072#1085#1086' '#1074' '#1080#1084#1084#1091#1085#1086#1075#1077#1085#1077#1090#1080#1095#1077#1089#1082#1080#1093' '#1083#1072#1073#1086#1088#1072#1090#1086#1088#1080#1103#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sgTabl4: TStringGrid
        Left = 24
        Top = 120
        Width = 830
        Height = 450
        TabOrder = 0
        OnDrawCell = sgTabl4DrawCell
        OnKeyPress = sgTabl4KeyPress
        OnSetEditText = sgTabl4SetEditText
      end
      object btnSaveTabl4: TButton
        Left = 344
        Top = 576
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl4Click
      end
      object btnExceTabll4: TButton
        Left = 539
        Top = 576
        Width = 89
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExceTabll4Click
      end
      object btnDeleteTabl4: TButton
        Left = 442
        Top = 576
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl4Click
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 5'
      ImageIndex = 5
      OnShow = TabSheet6Show
      object lblHoz5: TLabel
        Left = 628
        Top = 19
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label31: TLabel
        Left = 552
        Top = 19
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon5: TLabel
        Left = 352
        Top = 19
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label33: TLabel
        Left = 312
        Top = 19
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion5: TLabel
        Left = 77
        Top = 19
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label35: TLabel
        Left = 27
        Top = 19
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label20: TLabel
        Left = 360
        Top = 45
        Width = 154
        Height = 14
        Caption = #1052#1086#1083#1086#1095#1085#1099#1077' '#1083#1072#1073#1086#1088#1072#1090#1086#1088#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 27
        Top = 74
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object lblKodregion5: TLabel
        Left = 107
        Top = 74
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label28: TLabel
        Left = 236
        Top = 74
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodrajon5: TLabel
        Left = 301
        Top = 74
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label90: TLabel
        Left = 427
        Top = 74
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodhoz5: TLabel
        Left = 523
        Top = 74
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label97: TLabel
        Left = 638
        Top = 74
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblYear5: TLabel
        Left = 675
        Top = 74
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label99: TLabel
        Left = 803
        Top = 74
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 5'
      end
      object sgTabl5: TStringGrid
        Left = 27
        Top = 104
        Width = 827
        Height = 465
        TabOrder = 0
        OnDrawCell = sgTabl5DrawCell
        OnKeyPress = sgTabl5KeyPress
        OnSetEditText = sgTabl5SetEditText
      end
      object btnSaveTabl5: TButton
        Left = 339
        Top = 575
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl5Click
      end
      object btnExceTabll5: TButton
        Left = 536
        Top = 575
        Width = 94
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExceTabll5Click
      end
      object btnDeleteTabl5: TButton
        Left = 439
        Top = 575
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl5Click
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 6'
      ImageIndex = 6
      OnShow = TabSheet7Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz6: TLabel
        Left = 644
        Top = 19
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label37: TLabel
        Left = 568
        Top = 19
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon6: TLabel
        Left = 360
        Top = 19
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label39: TLabel
        Left = 320
        Top = 19
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion6: TLabel
        Left = 93
        Top = 19
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label41: TLabel
        Left = 48
        Top = 19
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label100: TLabel
        Left = 321
        Top = 53
        Width = 253
        Height = 14
        Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080' '#1080#1089#1082#1091#1089#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1086#1089#1077#1084#1077#1085#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label101: TLabel
        Left = 43
        Top = 82
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object lblKodregion6: TLabel
        Left = 123
        Top = 82
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label103: TLabel
        Left = 236
        Top = 82
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodrajon6: TLabel
        Left = 301
        Top = 82
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label105: TLabel
        Left = 427
        Top = 82
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodhoz6: TLabel
        Left = 523
        Top = 82
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label107: TLabel
        Left = 638
        Top = 82
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblYear6: TLabel
        Left = 675
        Top = 82
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label109: TLabel
        Left = 803
        Top = 82
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 6'
      end
      object sgTabl6: TStringGrid
        Left = 43
        Top = 176
        Width = 811
        Height = 393
        TabOrder = 0
        OnDrawCell = sgTabl6DrawCell
        OnKeyPress = sgTabl6KeyPress
        OnSetEditText = sgTabl6SetEditText
      end
      object Memo1: TMemo
        Left = 43
        Top = 120
        Width = 152
        Height = 56
        Alignment = taCenter
        Color = clBtnFace
        Lines.Strings = (
          #1055#1086#1082#1072#1079#1072#1090#1077#1083#1100)
        ReadOnly = True
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 195
        Top = 155
        Width = 102
        Height = 21
        Alignment = taCenter
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 2
        Text = #1082#1086#1088#1086#1074
      end
      object Edit2: TEdit
        Left = 498
        Top = 155
        Width = 102
        Height = 21
        Alignment = taCenter
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 3
        Text = #1090#1077#1083#1086#1082
      end
      object Edit3: TEdit
        Left = 397
        Top = 155
        Width = 102
        Height = 21
        Alignment = taCenter
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 4
        Text = #1082#1086#1088#1086#1074
      end
      object Edit4: TEdit
        Left = 296
        Top = 155
        Width = 102
        Height = 21
        Alignment = taCenter
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 5
        Text = #1090#1077#1083#1086#1082
      end
      object Edit5: TEdit
        Left = 599
        Top = 155
        Width = 102
        Height = 21
        Alignment = taCenter
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 6
        Text = #1082#1086#1088#1086#1074
      end
      object Edit6: TEdit
        Left = 700
        Top = 155
        Width = 102
        Height = 21
        Alignment = taCenter
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 7
        Text = #1090#1077#1083#1086#1082
      end
      object Memo2: TMemo
        Left = 195
        Top = 120
        Width = 203
        Height = 35
        Alignment = taCenter
        Color = clBtnFace
        Lines.Strings = (
          #1048#1089#1082#1091#1089#1089#1090#1074#1077#1085#1085#1086
          #1086#1089#1077#1084#1077#1085#1077#1085#1086)
        ReadOnly = True
        TabOrder = 8
      end
      object Memo3: TMemo
        Left = 397
        Top = 120
        Width = 203
        Height = 35
        Alignment = taCenter
        Color = clBtnFace
        Lines.Strings = (
          #1074' '#1090'.'#1095'. '#1087#1088#1086#1074#1077#1088#1103#1077#1084#1099#1084#1080
          #1087#1086' '#1082#1072#1095#1077#1089#1090#1074#1091' '#1087#1086#1090#1086#1084#1089#1090#1074#1072)
        ReadOnly = True
        TabOrder = 9
      end
      object Memo4: TMemo
        Left = 599
        Top = 120
        Width = 203
        Height = 35
        Alignment = taCenter
        Color = clBtnFace
        Lines.Strings = (
          #1074' '#1090'.'#1095'.  '#1091#1083#1091#1095#1096#1072#1090#1077#1083#1103#1084#1080)
        ReadOnly = True
        TabOrder = 10
      end
      object btnSaveTabl6: TButton
        Left = 344
        Top = 584
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 11
        OnClick = btnSaveTabl6Click
      end
      object btnExcelTabll6: TButton
        Left = 537
        Top = 583
        Width = 95
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 12
        OnClick = btnExcelTabll6Click
      end
      object btnDeleteTabl6: TButton
        Left = 440
        Top = 583
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 13
        OnClick = btnDeleteTabl6Click
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 7'
      ImageIndex = 7
      OnShow = TabSheet8Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz7: TLabel
        Left = 637
        Top = 27
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label49: TLabel
        Left = 561
        Top = 27
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon7: TLabel
        Left = 344
        Top = 27
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label51: TLabel
        Left = 304
        Top = 27
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion7: TLabel
        Left = 69
        Top = 27
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label53: TLabel
        Left = 19
        Top = 27
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label48: TLabel
        Left = 244
        Top = 61
        Width = 448
        Height = 14
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1073#1099#1082#1086#1074'-'#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1077#1081' '#1087#1086' '#1082#1072#1095#1077#1089#1090#1074#1091' '#1087#1086#1090#1086#1084#1089#1090#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 19
        Top = 98
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object lblKodregion7: TLabel
        Left = 99
        Top = 98
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label102: TLabel
        Left = 244
        Top = 98
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodrajon7: TLabel
        Left = 309
        Top = 98
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label106: TLabel
        Left = 435
        Top = 98
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodhoz7: TLabel
        Left = 531
        Top = 98
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label110: TLabel
        Left = 646
        Top = 98
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblYear7: TLabel
        Left = 683
        Top = 98
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label112: TLabel
        Left = 811
        Top = 98
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 7'
      end
      object sgTabl7: TStringGrid
        Left = 19
        Top = 117
        Width = 843
        Height = 444
        TabOrder = 0
        OnDrawCell = sgTabl7DrawCell
        OnKeyPress = sgTabl7KeyPress
        OnSetEditText = sgTabl7SetEditText
      end
      object btnSaveTabl7: TButton
        Left = 352
        Top = 576
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl7Click
      end
      object btnExceTabll7: TButton
        Left = 542
        Top = 576
        Width = 89
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExceTabll7Click
      end
      object btnDeleteTabl7: TButton
        Left = 448
        Top = 576
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl7Click
      end
    end
    object TabSheet9: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 8'
      ImageIndex = 8
      OnShow = TabSheet9Show
      ExplicitLeft = 8
      ExplicitTop = 28
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz8: TLabel
        Left = 628
        Top = 16
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label55: TLabel
        Left = 552
        Top = 16
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon8: TLabel
        Left = 344
        Top = 16
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label57: TLabel
        Left = 304
        Top = 16
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion8: TLabel
        Left = 77
        Top = 16
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label59: TLabel
        Left = 21
        Top = 16
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label52: TLabel
        Left = 328
        Top = 61
        Width = 181
        Height = 14
        Caption = #1055#1086#1076#1082#1086#1085#1090#1088#1086#1083#1100#1085#1086#1077' '#1087#1086#1075#1086#1083#1086#1074#1100#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label104: TLabel
        Left = 21
        Top = 87
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object lblKodregion8: TLabel
        Left = 99
        Top = 87
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label111: TLabel
        Left = 252
        Top = 87
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodrajon8: TLabel
        Left = 317
        Top = 87
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label114: TLabel
        Left = 443
        Top = 87
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodhoz8: TLabel
        Left = 539
        Top = 87
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label116: TLabel
        Left = 654
        Top = 87
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblYear8: TLabel
        Left = 691
        Top = 87
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label118: TLabel
        Left = 806
        Top = 87
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 8'
      end
      object sgTabl8: TStringGrid
        Left = 21
        Top = 117
        Width = 836
        Height = 441
        TabOrder = 0
        OnDrawCell = sgTabl8DrawCell
        OnKeyPress = sgTabl8KeyPress
        OnSetEditText = sgTabl8SetEditText
      end
      object btnSaveTabl8: TButton
        Left = 344
        Top = 583
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl8Click
      end
      object btnExceTabll8: TButton
        Left = 539
        Top = 583
        Width = 94
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExceTabll8Click
      end
      object btnDeleteTabl8: TButton
        Left = 443
        Top = 583
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl8Click
      end
    end
    object TabSheet10: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 9'
      ImageIndex = 9
      OnShow = TabSheet10Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz9: TLabel
        Left = 628
        Top = 11
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label61: TLabel
        Left = 552
        Top = 11
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon9: TLabel
        Left = 344
        Top = 11
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label63: TLabel
        Left = 304
        Top = 11
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion9: TLabel
        Left = 77
        Top = 11
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label65: TLabel
        Left = 27
        Top = 11
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label54: TLabel
        Left = 443
        Top = 58
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object Label56: TLabel
        Left = 806
        Top = 58
        Width = 51
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 9'
      end
      object lblYear9: TLabel
        Left = 691
        Top = 58
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label108: TLabel
        Left = 654
        Top = 58
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblKodhoz9: TLabel
        Left = 539
        Top = 58
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object lblKodrajon9: TLabel
        Left = 317
        Top = 58
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label117: TLabel
        Left = 252
        Top = 58
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodregion9: TLabel
        Left = 107
        Top = 58
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label120: TLabel
        Left = 27
        Top = 58
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object Label121: TLabel
        Left = 209
        Top = 30
        Width = 463
        Height = 14
        Caption = 
          #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1080#1089#1082#1091#1089#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1086#1089#1077#1084#1077#1085#1077#1085#1080#1103' '#1089'/'#1093' '#1078#1080#1074#1086#1090#1085#1099#1093 +
          ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sgTabl9: TStringGrid
        Left = 27
        Top = 77
        Width = 830
        Height = 532
        TabOrder = 0
        OnDrawCell = sgTabl9DrawCell
        OnKeyPress = sgTabl9KeyPress
        OnSetEditText = sgTabl9SetEditText
      end
      object btnSaveTabl9: TButton
        Left = 336
        Top = 627
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl9Click
      end
      object btnExceTabll9: TButton
        Left = 528
        Top = 627
        Width = 94
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExceTabll9Click
      end
      object btnDeleteTabl9: TButton
        Left = 432
        Top = 627
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl9Click
      end
    end
    object TabSheet13: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 9'#1072
      ImageIndex = 12
      OnShow = TabSheet13Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label320: TLabel
        Left = 794
        Top = 90
        Width = 57
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 9'#1072
      end
      object lblYear9a: TLabel
        Left = 719
        Top = 90
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label322: TLabel
        Left = 674
        Top = 90
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblKodhoz9a: TLabel
        Left = 567
        Top = 90
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label324: TLabel
        Left = 471
        Top = 90
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodrajon9a: TLabel
        Left = 351
        Top = 90
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label326: TLabel
        Left = 286
        Top = 90
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodregion9a: TLabel
        Left = 119
        Top = 90
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label328: TLabel
        Left = 35
        Top = 90
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object Label329: TLabel
        Left = 217
        Top = 54
        Width = 443
        Height = 14
        Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080' '#1088#1072#1073#1086#1090' '#1093#1086#1079#1088#1072#1089#1095#1077#1090#1085#1099#1093' '#1087#1091#1085#1082#1090#1086#1074' '#1080#1089#1082#1091#1089#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1086#1089#1077#1084#1077#1085#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblHoz9a: TLabel
        Left = 632
        Top = 19
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label331: TLabel
        Left = 556
        Top = 19
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon9a: TLabel
        Left = 348
        Top = 19
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label333: TLabel
        Left = 308
        Top = 19
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion9a: TLabel
        Left = 80
        Top = 19
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label335: TLabel
        Left = 35
        Top = 19
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object sgTabl9a: TStringGrid
        Left = 35
        Top = 192
        Width = 816
        Height = 185
        TabOrder = 0
        OnKeyPress = sgTabl9aKeyPress
        OnSetEditText = sgTabl9aSetEditText
      end
      object Memo9: TMemo
        Left = 35
        Top = 137
        Width = 102
        Height = 56
        Color = clBtnFace
        Lines.Strings = (
          '    '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          '  '#1093#1086#1079#1088#1072#1089#1095#1077#1090#1085#1099#1093
          '      '#1087#1091#1085#1082#1090#1086#1074)
        ReadOnly = True
        TabOrder = 1
      end
      object Edit13: TEdit
        Left = 136
        Top = 172
        Width = 102
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 2
        Text = #1082#1086#1088#1086#1074' '#1080' '#1090#1077#1083#1086#1082','#1075#1086#1083'.'
      end
      object Memo10: TMemo
        Left = 136
        Top = 137
        Width = 304
        Height = 36
        Color = clBtnFace
        Lines.Strings = (
          '                  '#1048#1089#1082#1091#1089#1089#1090#1074#1077#1085#1085#1086'  '#1086#1089#1077#1084#1077#1085#1077#1085#1086' '#1074' '#1051#1055#1061
          '')
        ReadOnly = True
        TabOrder = 3
      end
      object Edit14: TEdit
        Left = 237
        Top = 172
        Width = 102
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 4
        Text = '  '#1089#1074#1080#1085#1086#1084#1072#1090#1086#1082','#1075#1086#1083'.'
      end
      object Edit15: TEdit
        Left = 338
        Top = 172
        Width = 102
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 5
        Text = '   '#1086#1074#1094#1077#1084#1072#1090#1086#1082','#1075#1086#1083'.'
      end
      object Memo11: TMemo
        Left = 439
        Top = 137
        Width = 102
        Height = 56
        Color = clBtnFace
        Lines.Strings = (
          '   '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          '     '#1090#1077#1093#1085#1080#1082#1086#1074)
        ReadOnly = True
        TabOrder = 6
      end
      object Edit16: TEdit
        Left = 742
        Top = 172
        Width = 102
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 7
        Text = '       '#1086#1074#1094#1077#1084#1072#1090#1086#1082
      end
      object Edit17: TEdit
        Left = 641
        Top = 172
        Width = 102
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 8
        Text = '      '#1089#1074#1080#1085#1086#1084#1072#1090#1086#1082
      end
      object Edit18: TEdit
        Left = 540
        Top = 172
        Width = 102
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 9
        Text = '    '#1082#1086#1088#1086#1074' '#1080' '#1090#1077#1083#1086#1082
      end
      object Memo12: TMemo
        Left = 540
        Top = 137
        Width = 304
        Height = 36
        Color = clBtnFace
        Lines.Strings = (
          '                          '#1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1091#1089#1083#1091#1075' '#1079#1072' '#1086#1076#1085#1086
          '                     '#1087#1083#1086#1076#1086#1090#1074#1086#1088#1085#1086#1077' '#1086#1089#1077#1084#1077#1085#1077#1085#1080#1077', '#1088#1091#1073'.')
        ReadOnly = True
        TabOrder = 10
      end
      object btnSaveTabl9a: TButton
        Left = 351
        Top = 432
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 11
        OnClick = btnSaveTabl9aClick
      end
      object btnExcelTabl9a: TButton
        Left = 547
        Top = 432
        Width = 95
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 12
        OnClick = btnExcelTabl9aClick
      end
      object btnDeleteTabl9a: TButton
        Left = 450
        Top = 432
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 13
        OnClick = btnDeleteTabl9aClick
      end
    end
    object TabSheet11: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 10'
      ImageIndex = 10
      OnShow = TabSheet11Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz10: TLabel
        Left = 631
        Top = 11
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label67: TLabel
        Left = 555
        Top = 11
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon10: TLabel
        Left = 347
        Top = 11
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label69: TLabel
        Left = 307
        Top = 11
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion10: TLabel
        Left = 64
        Top = 11
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label71: TLabel
        Left = 19
        Top = 11
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label58: TLabel
        Left = 808
        Top = 66
        Width = 57
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 10'
      end
      object lblYear10: TLabel
        Left = 699
        Top = 66
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object Label62: TLabel
        Left = 662
        Top = 66
        Width = 19
        Height = 13
        Caption = #1043#1086#1076
      end
      object lblKodhoz10: TLabel
        Left = 547
        Top = 66
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label113: TLabel
        Left = 451
        Top = 66
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodrajon10: TLabel
        Left = 325
        Top = 66
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label119: TLabel
        Left = 260
        Top = 66
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodregion10: TLabel
        Left = 99
        Top = 66
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label123: TLabel
        Left = 19
        Top = 66
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object Label124: TLabel
        Left = 363
        Top = 34
        Width = 155
        Height = 14
        Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080' '#1088#1072#1073#1086#1090#1099' '#1054#1048#1054
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sgTabl10: TStringGrid
        Left = 19
        Top = 96
        Width = 846
        Height = 457
        TabOrder = 0
        OnKeyPress = sgTabl10KeyPress
        OnSetEditText = sgTabl10SetEditText
      end
      object btnSaveTabl10: TButton
        Left = 357
        Top = 576
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl10Click
      end
      object btnExceTabll10: TButton
        Left = 547
        Top = 576
        Width = 89
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExceTabll10Click
      end
      object btnDeleteTabl10: TButton
        Left = 454
        Top = 576
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl10Click
      end
    end
    object TabSheet12: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072' 11'
      ImageIndex = 11
      OnShow = TabSheet12Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHoz11: TLabel
        Left = 644
        Top = 19
        Width = 28
        Height = 13
        Caption = 'lblHoz'
      end
      object Label73: TLabel
        Left = 568
        Top = 19
        Width = 70
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object lblRajon11: TLabel
        Left = 368
        Top = 19
        Width = 38
        Height = 13
        Caption = 'lblRajon'
      end
      object Label75: TLabel
        Left = 328
        Top = 19
        Width = 34
        Height = 13
        Caption = #1056#1072#1081#1086#1085':'
      end
      object lblRegion11: TLabel
        Left = 77
        Top = 19
        Width = 43
        Height = 13
        Caption = 'lblRegion'
      end
      object Label77: TLabel
        Left = 32
        Top = 19
        Width = 39
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085':'
      end
      object Label60: TLabel
        Left = 800
        Top = 74
        Width = 57
        Height = 13
        Caption = #1058#1072#1073#1083#1080#1094#1072' 11'
      end
      object lblYear11: TLabel
        Left = 707
        Top = 74
        Width = 38
        Height = 13
        Caption = 'lblYear3'
      end
      object lblKodhoz11: TLabel
        Left = 555
        Top = 74
        Width = 51
        Height = 13
        Caption = 'lblKodhoz3'
      end
      object Label68: TLabel
        Left = 459
        Top = 74
        Width = 78
        Height = 13
        Caption = ' '#1050#1086#1076' '#1093#1086#1079#1103#1081#1089#1090#1074#1072
      end
      object lblKodrajon11: TLabel
        Left = 333
        Top = 74
        Width = 59
        Height = 13
        Caption = 'lblKodrajon3'
      end
      object Label115: TLabel
        Left = 268
        Top = 74
        Width = 59
        Height = 13
        Caption = #1050#1086#1076' '#1088#1072#1081#1086#1085#1072
      end
      object lblKodregion11: TLabel
        Left = 107
        Top = 74
        Width = 64
        Height = 13
        Caption = 'lblKodregion3'
      end
      object Label125: TLabel
        Left = 27
        Top = 74
        Width = 64
        Height = 13
        Caption = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      end
      object Label126: TLabel
        Left = 347
        Top = 45
        Width = 175
        Height = 14
        Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077' '#1054#1048#1054
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sgTabl11: TStringGrid
        Left = 27
        Top = 104
        Width = 830
        Height = 473
        TabOrder = 0
        OnDrawCell = sgTabl11DrawCell
        OnKeyPress = sgTabl11KeyPress
        OnSetEditText = sgTabl11SetEditText
      end
      object btnSaveTabl11: TButton
        Left = 347
        Top = 583
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = btnSaveTabl11Click
      end
      object btnExcelTabl11: TButton
        Left = 536
        Top = 583
        Width = 89
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        TabOrder = 2
        OnClick = btnExcelTabl11Click
      end
      object btnDeleteTabl11: TButton
        Left = 440
        Top = 583
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTabl11Click
      end
    end
  end
end
