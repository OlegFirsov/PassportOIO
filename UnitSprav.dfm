object FormSprav: TFormSprav
  Left = 239
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 380
  ClientWidth = 692
  Color = clBtnFace
  Constraints.MaxHeight = 414
  Constraints.MaxWidth = 700
  Constraints.MinHeight = 412
  Constraints.MinWidth = 698
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridSprav: TDBGrid
    Left = 0
    Top = 56
    Width = 689
    Height = 281
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridSpravDrawColumnCell
    OnKeyDown = DBGridSpravKeyDown
  end
  object DBNavigatorSprav: TDBNavigator
    Left = 216
    Top = 344
    Width = 224
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 49
    TabOrder = 2
    object SpdBtnPrint: TSpeedButton
      Left = 8
      Top = 12
      Width = 35
      Height = 35
      Hint = #1055#1077#1095#1072#1090#1100
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9C2C1C1C2C2C1D0D0
        D0FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6CCCCCCEFEFEFF0F0F0EFEFEFFEFEFEFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAEEEEEEB9B9B7E4E1DED3D1CFBABA
        BCACACADEBEBEBFFFFFFFDFDFD9A9A9B9B9A9C767678B5B5B5D1D1D1C7C7C7FA
        FAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEFAFAFAF2F2F2E8E8E8E0E0E0AFADACDFDCD9CCCAC8CBC9C7C8C8
        C8C4C4C6AEAEAFB3B3B38F8F8FA3A3A4A4A3A4C0C0C0FEFEFEFFFFFFF1F1F1B5
        B5B5EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
        FAFAFAF3F3F3E8E8E8DDDDDDDCDCDCABAAA9DBD9D6CCC9C8C6C4C3C9C7C6E1E0
        DFD4D3D3C9C9CA9C9B9E838285909091ABABABEEEEECF3F3F2F9F9F8FFFFFFFF
        FFFFC8C8C8D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFA
        F2F2F2E8E8E8DFDFDFE4E4E4AFAFAED7D5D2CBC9C7C6C4C3C1BEBDCAC8C7E5E4
        E3E7E6E4E1E0DFCFCFCF8686888D8E8EDBDBD8E2E2E0E7E7E6EFEFEEF7F7F6FD
        FDFDFFFFFFEDEDEDB9B9B9F3F3F3FFFFFFFEFEFEFFFFFFFFFFFFFEFEFEF6F6F6
        EFEFEFE7E7E7ECECECBDBDBCD0CECBCCC9C8C5C2C1C1BFBEBDBBBBD8D7D6E4E3
        E1E4E3E2E7E6E5EBEAE9CBCACAA5A6A4B8B9B6D5D5D3DEDEDDE5E5E3EDEDEBF4
        F4F4FCFCFCFFFFFFFFFFFFC4C4C4D9D9D9FFFFFFFEFEFEFFFFFFFDFDFDF6F6F6
        EEEEEEF0F0F0CFCFCFC4C3C1CDCBCAC3C1C0C0BDBDBAB8B8CDCBCAE2E1E0E2E1
        DFE3E3E1E5E4E3E6E6E5EDEDEBE5E5E3C0C1BFB5B6B3CDCDCADDDDDAE3E3E1EA
        EAE9F2F2F1FAFAFAFFFFFFFFFFFFEAEAEACACACAFFFFFFFFFFFFFDFDFDF6F6F6
        F2F2F2DFDFDFBCBABACFCDCCC2BFBFBFBDBCB9B6B7C4C3C3DFDEDCE0DFDDE1E0
        DFE3E2E0E4E3E2E6E5E4E7E7E5EAEAE9EFEEEDDDDDDCC2C2C0C7C7C4D8D8D6E1
        E1DFE8E8E7F0F0EFF8F8F7FFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFDFDFDF5F5F5
        FAFAFABDBDBDD4D2D1C0BEBEBEBBBBB7B5B6BFBDBDDBDAD8DEDDDBDEDEDCE0DF
        DEE2E1DFE5E4E3EDECEBEFEEEDEEEDECEBEAEAEEEEEDEDEDECD8D8D7CBCBC9D4
        D4D1DFDFDDE6E6E5F2F2F1F0F0F0BDBDBE939396F1F1F1FFFFFFFDFDFDF5F5F5
        F9F9F9BEBEBECBC8C8BCBABAB7B4B5BBB9B9D6D6D4DCDBD9DCDCDADEDDDBDFDE
        DDE5E4E3E3E2E1B1B0AFADACABC9C8C7E8E7E6F3F2F1EFEEEDF1F0F0EBEAEAD9
        D9D7D3D3D0DEDEDCD6D6D59E9E9F979697AFAFAFFFFFFFFFFFFFFDFDFDF5F5F5
        F9F9F9BDBDBDC6C3C4B5B3B4B8B6B7D4D3D1DAD9D7DAD9D7DCDBD9DDDCDBE3E2
        E0E0DFDE6F6E6E3A38394E4C4C5E5C5C797777B1B0B0E8E8E7F5F4F4F0F0EFF2
        F2F1EBEBEAD0CFCE7D7C7E78787A7A7A7AEEEEEEFFFFFFFFFFFFFDFDFDF5F5F5
        F9F9F9BBBBBBBCB9BAB5B3B4D2D0CFDAD9D7D8D7D5D9D8D6DBDAD8DFDEDCE3E2
        E169696A1D1C1F2F2E313B3A3B4B4949565454595757777575C3C2C1F5F5F4F2
        F2F1F3F3F2F1F1F0C9C9C95F5E61929294B0B0B1DBDBDBFFFFFFFDFDFDF5F5F5
        F8F8F8BABABAB9B7B9CFCECDDADAD7D8D7D5D8D7D5D8D8D6DBDAD8E5E4E28786
        8626252829272A2726292B2A2C333234403F40514F505957575C5A5A9C9B9AEF
        EEEDF4F4F3F3F3F2FAFAF9EFEFEFDBDBDBC6C6C7B5B5B6F9F9F9FDFDFDF5F5F5
        F7F7F7BEBDBDD6D4D3DBDAD8D8D7D5D8D7D5D8D7D5D9D8D6E3E2E0A4A3A24442
        43403E403836382F2D302322251E1D202C2B2D3736384644455654545755558A
        8888EDECEBF4F3F3F3F3F2F8F7F7FAFAFAEFEEEED3D3D4E9E9EAFDFDFDF6F6F6
        F8F8F8C7C7C7E9E8E6E1E0DED8D7D5D8D7D5DDDCDADBDAD8A8A7A55F5D5C5855
        56514F4F4745463735377474758787882726291F1E212F2E313B3A3C4C4A4B50
        4E4E9E9D9CF8F7F6F3F2F2F4F4F3F6F5F5F9F9F9FAFAF9F6F5F6FDFDFDF7F7F7
        F2F2F2EDEDEDC2C1C1C1C1BFE4E3E1E2E1DFB2B1B0BDBCBDA6A4A4706D6C6360
        5F605D5C5755554B494A555355A7A6A7C1C0C16363652726282A292C33323437
        35377C7B7BF7F7F6F3F2F2F5F5F4F5F5F4F6F6F6F9F9F8FDFDFDFEFEFEF9F9F9
        F4F4F4EFEFEFF4F4F4E8E8E8B2B2B2AAAAA9646366E0E0E1EBE9EBCECDCD9795
        946C6A68615E5E5D5B5A504E4E3E3C3D646364BCBBBC646465201F2227262927
        2628B9B8B8F9F8F8EFEFECE3E5E4F1F2F2F7F6F6F7F6F6FDFDFDFFFFFFFCFCFC
        F9F9F9F4F4F4EEEEEEF9F9F996969667676AA6A5A6FFFEFEEEEDEEE9E8E9E3E3
        E4C3C1C28C89896865645F5C5C5A57574A48484341424140423433351F1E2167
        6769F5F4F3F0F0EFDADBD0CDD1CFEDF1EFF7F6F6FAFAFAFFFFFFFFFFFFFFFFFF
        FDFDFDF9F9F9FCFCFCD9D9D9858586706F71F1F1F2FFFFFFF9F9F9F1F1F1E9E9
        E9E6E5E6DDDCDEB8B6B7827F7F6461605D5A5A5653534D4B4C3E3C3D474547D8
        D7D6F3F3F2F0EFEECACBC8D9D9D9F8F7F6F7F5F5FEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF8D8D8F9A9898C1C0C0FFFFFFFFFFFFFFFFFFFCFDFCF5F5
        F5EDECEDE6E5E6E2E1E3D6D5D6ACAAAA7B78786A67675A5757555353C0BFBEF4
        F3F2E8E8E7DEDEDDEEEDEDF1F1F0F3F3F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD6D6D68583869A9897F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEF8F8F8F0F0F0E9E7E9E2E1E2E2E0E2BFBEBF4A4849676464C6C5C4F3F2F1EA
        E9E8DBDCDAE4E4E3EFEEEEF0F0EFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF858486888786C3C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBFCFBF4F4F4ECEBECF1F0F087868907060B909091F5F5F3D9D9D7DB
        DBDAE7E7E6ECECEBEDEDEDFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F7F77E7D7E8D8C8CF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFEFBFBFBE6E5E6333135838283EBEAE9E7E6E5DDDDDCDB
        DCDBE7E6E5ECECEBF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3E2E2C4C5C5F8F9F9F4F3F4FBFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9493953B3A3EF4F3F2E8E7E4E4E4E2E7E6E5E8
        E8E6EAEAE9FAF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF2F2F2ABAAAAD1D2D3EFEFF0F3F2F2FAFAFAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFAF9F95B595ABCBCBEFFFFFFFDFCFCF1F1F0EAEAE8F0
        EFEEFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBADACAD919191CCCDCEEBEBECF1F0F1FAFA
        FAFFFFFFFFFFFFFFFFFFB8B7B65D5B5DFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E28E8C8E898989C7C7C8E7E7
        E8F0EFF0FCFCFCFCFBFB646262C7C7C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1A3A2A29797
        97C2C2C3E1E0E1999898605E60FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCE7E7E7E9E9E9AFAEAFD0D0D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtnPrintClick
    end
    object SpdBtnSearch: TSpeedButton
      Left = 88
      Top = 12
      Width = 35
      Height = 35
      Hint = #1055#1086#1080#1089#1082' '#1080#1083#1080' '#1092#1080#1083#1100#1090#1088
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFBFBFBD0D0D0CFCFCFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB1B1B1CFCECEDAD9D9A9A9A9EDEDEDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFB9B9B9D6D6D6FFFFFFFFFEFEFFFEFEB6B6B6C9C9C9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC4C4C4CCCCCCFFFFFFFDF3EBFDF1E3FCEED9FFFDFCDDDCDCA9A9A9F3F3F3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF
        CFBFBFBFFFFFFFFEF4EDFCEFE3F9D4A7F1B778F9C787F6EEEDFBF7F8ADADAFD0
        D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9B7B7
        B7FFFFFFFEF4F0FCF0DFF3CBA0F1C698F2C38EE9AD76EFB475E5DAD6FFF9F9D4
        D1D3ACACACF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4ADADADFFFF
        FFFEF4F0FDF2E4F6CDA5F2C490F2C695F1C698F1C59CEEBB80E7A770F5BA77F3
        E9E6F5F1F1A9A9A9CBCBCBD8D8D8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECA7A7A7FFFFFFFCF9
        F9FDF3EBF7D2ADF1C591F2C695F2C695F2C695F2C695F2C899F1C593E9AE77E6
        A86EF9CE94EAE2E2636262101010878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5A6A6A6FFFFFFFDF9F9FEF4
        EDF8DAB3F2C490F2C695F2C695F2C695F2C695F2C695F2C695F2C695F1C99CF2
        C490D7966C5F59585B5B5B717272636363E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCA7A7A7FCFCFCFFFCFCFEF4F0F7DA
        C0F2C490F2C695F2C695F2C695F1C599F2C899F2C899F2C899F1C698F3CB9CE4
        B181615D5C575758C68959D08C52E9B681F0CCAAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACACF9F2EEFAECE2F5D7B5F9D6A7F1C5
        96F2C695F2C695F1C698F2C899ECB886E6B07AE3AC79E9B47FF1C593EEBE8A60
        5B5B5D5D5D9C9C9CD08D55EBA04EEFA14FF5E5D9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB4B4B4F2E9E0F3DAC0F4B666F4B063F0B376F3C2
        8FF2C695F2C899EFBE87D29B6CB1AFAEC7C5C5CFCECDBDBCBBD29B6CBC88676A
        6969BE8860C48D61EFB771F6BB6BF9E2CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBDBDBDEFD9C8F2D7C7EFA55CEEAB65EFAB69F0B275F0BE
        89F1C698F0BE86BB967FC7C5C4F1F1F0FBFCFBFCFBFBF7F7F7E2E1E0B1B0AE9E
        9D9CCF9464F4BF7CF7BA6AF6DDC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCACACAEED1ADF3E0D6EBA058EEA55DEFAA67EFB071F0B87BF0BE
        89F2C695CFA88DD6CFCCF8F3EEFCF3E6FEFAF2FEFAF2FCEFDCF6EFE4ECE8E7BC
        BCBCF2C081F8BF75F5D7B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD9D9D9F0C390F9EBE5ECA35DEEA45DEFAA67EFB071F0B87BF0BE86F1C5
        93EFBE87D5C2B3EEE1D2F7DAB2F9E4C4FCF2DCFCF0DFFAE5C5F7DAAAEFD7BDDC
        DCDCEEAF62EDC8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EBEBEBEBB882FCF3EFEEAB65EDA35AEFAA67EFB071F0B87BF2BE85F3C693F3CB
        9CF0C08AD7D0CEEECBA2F5D199F7DAB2F9E0BFF9E5BFF8DDB3F5D3A0F1C78FDC
        DBDAB8B6B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FFFFFFEFB070ECA159EFAA67EFB071F0BA7BF1BE86F3C693F3CB9CF2CD
        9DF1C593D3CDCAEDC899F6D3A4F7DBB0F7DBB0F6D5A6F6D29DF4CB8FF1C180D7
        D5D3BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D4D4D4F0C098ECA159EFAD67EFB071F0B87BF1BE86F3C693F3CB9CF2CB9DF3CB
        A0F3CB9CD5C2B3EFE2D3FCFDF5FBEAD2F8E1BCF6D4A1F1C486F0BE7BE9BC84D5
        D3D2BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F5D3B1EDA35AEEA966EFB071F0B87BF1BE86F3C693F3CB9CF2CB9DF3CBA0F3CB
        A0F3CDA3E6C2A4CCC5C0FEFAF2FFFFFFFCF2DCF5D3A1EDB771EFBA73D4B7A4C6
        C5C4E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FAE8D6F0B77EEFB071F0B87BF1BE86F3C693F3CB9CF3CBA0F3CBA0F3CDA0F5CE
        A1F3CCA5F5CFA6D1BFB4BFB4ABF2DDC2FDF9F1F5D199DEAE7CCBB19FC3C1C0C5
        C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFDFBFAEBDCF2CEA6F2C490F2CB9DF3CBA0F3CBA0F5CCA1F5CEA1F3CC
        A5F5CFA6F5CFA6F2D4B3DEC6B3BAAFA9B3B1B1B6B4B3B6B5B4B3B3B3CFCECEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFAECDDF2CFA7F3CBA0F3CCA5F3CCA5F3D1A5F5CF
        A6F5D2A6F7D2AAF7D4AAF7D7BAFADFB8F4C184DABEB0E4E4E4FCFCFCFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFAF8E1C6F1CD9EF5CFA6F5D2A6F7D2
        AAF7D4AAF6D2ABF7DAB4F9DFBBF3BD81FAE0C2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF3E9F3D4AEF3D1A5F6D4
        ABF6D4ABF7DAB4FAE0BAF2C187F8D5B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDF8E5D2F3CD
        A4F7DAB4F8DDC4F3C68DF8CD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7
        F2F6D9B5F1BF84F7CB99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtnSearchClick
    end
    object lblSearch: TLabel
      Left = 128
      Top = 8
      Width = 3
      Height = 13
    end
    object SpdBtnAdd: TSpeedButton
      Left = 360
      Top = 12
      Width = 35
      Height = 35
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1082#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDF2F3F2EAECEAEAECEAEAECEAEAECEAF1F2F1FCFCFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E8
        E494AE9985A28A86A48B86A48B85A28A92AC96DFE4DFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5C6
        B71A94441B97471C98481C98481B97471A9544A8BDABFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3C3
        B5138333158736158738158738148636138534A6BAA8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3C3
        B511742613772A13782B13782B13772A127628A7BAA9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6C6
        B84FAE6953B16D53B26D53B26D54B16D50B06AAABEACFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3C6
        B60DAD3F0DAF400DAF400DAF400DAE400DAE3FA7BEAAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3C6
        B60CAB3D0CAD3E0CAD3E0CAD3E0CAC3E0CAC3EA7BEAAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3C6
        B60CAC3E0CAE3F0CAE3F0CAE3F0CAE3F0CAE3FA7BEAAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6C9
        B90CAD3E0DAF3F0DAF3F0DAF3F0CAE3F0CAF3FAAC1ADFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF9F9F9E9ECE9E8EBE8E8EBE8E8EBE8E8EBE8E8EBE8E8EBE8EEF0EEA3BA
        A60CAD3F0DB0400DAF400DAF400DAF3F0CAF4098B29CEEF0EEE8EBE8E8EBE8E8
        EBE8E8EBE8E8EBE8E8EBE8E8EBE8F7F8F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        E8EBE87F9C824D75504B75504C77524D78524D79524D7A524D7A52507A563778
        450CAD3F0DB0400DAF400DAF400DAF400DAF40337B43517C584D7A544D7A544D
        7A524D7A524D78524B77514B755177987BC6D2C7FFFFFFFFFFFFFFFFFFFFFFFF
        CAD3CA075A15036115046517046919046D1B05711D05741F0577210678220784
        280DAE3F0DB0400DB0400DB0400DAF400DAE3F07892B067C23067B2305792205
        762105731F056F1D046B1C04681A03621781AA89FFFFFFFFFFFFFFFFFFFFFFFF
        CCD5CC0E5A1800580F005C11016013026415026817026B18036E1A026F1A047D
        220DAE3F0DB1400DB1400DB0400DB0400DAF3F05812503721C03721D036F1B02
        6D1A026A18016617026215015F13075E1785AA8BFFFFFFFFFFFFFFFFFFFFFFFF
        CCD5CC1B612513631F146621146922146D2414702614732715762916772A1282
        2E0DAE3F0DB1400DB1400DB1400DB0400DAF4015873116792B15792B15762A15
        7429147127156E26146B2514692415632186AB8CFFFFFFFFFFFFFFFFFFFFFFFF
        CDD7CE43A05D47AE6646AE6446B16646B46746B66847B86947BA6A49BD6C39B9
        600BAF3E0BB13F0CB1400DB1400CB0400FB04140BB6549BB6C47B96946B76846
        B56746B26746B06545AD6448AC65389F568BBD99FFFFFFFFFFFFFFFFFFFFFFFF
        CCD7CD118F37049731059932059C3306A03506A43607A7380BAA3C0EAE4012B1
        4316B34713B34610B3430CB2400AAF3E0BAE3E07AC3A06A93806A73705A43605
        A034049D3304993103962F03932E0A8E3187BD96FFFFFFFFFFFFFFFFFFFFFFFF
        CCD7CD1996400E9E3C0F9F3D0FA23F10A54010A84213AC4519B04A1EB45024B7
        5426B9542ABB582DBC592BBB5823B85218B24811B0440EAD420EAA410FA84110
        A5400FA23E0E9F3D0D9C3B0D9A3A12933C89BF99FFFFFFFFFFFFFFFFFFFFFFFF
        CDD8CF33B46B2DC06F2DBE6E2EBF6F2FC07030C37135C5753AC87940CB7F3FC8
        7829BA562DBB5933BE5E38BF623DC06640BF6853CD864FCF883DC87B2FC3722B
        C16E2CC06E2DBF6E2CBE6D2BBD6C2EB76A93CCABFFFFFFFFFFFFFFFFFFFFFFFF
        CED9D034B46D2EC0712EBF702EC0712FC17233C37438C6783EC87D44CA8242C9
        7C2CBA5931BD5C36BF613AC0643EC06743C0695ED08F6BD69C6BD59B62D2954E
        CB8737C4772ABE6E29BD6C2CBD6E2FB76C95CEACFFFFFFFFFFFFFFFFFFFFFFFF
        D3DDD42DB0672CBD6E2CBC6D2DBD6E2EBF6F34C17439C4783FC57C47CE8545CC
        802FBA5B34BE5E39C0633EC16642C06945C06B62D3926CD99F6BD39A70D49D74
        D5A071D39D5ECC9041C27C2DBB6D28B56898D5B2FFFFFFFFFFFFFFFFFFFFFFFF
        F5F7F591B78D8FB98D8FB98D8FB98D8FB98D90BA8E91BA8F93BC919CBF9B90B5
        9A31BA5C37BE613CC06541C16845C06B4AC16F8EB29695B58E8EB3868EB2858E
        B2858FB28690B28690B38689B08183AE7DE6F6EDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCCB
        BD34B95D3ABD633EBE6643BF6948C06D4DC272B1C2B3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5C7
        B837B75E3CBA6441BB6746BD6A4ABE6E50C173ACC0AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6C7
        B839B45F3EB86442B96748BA6B4DBC6F52BF74ACC0AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6C7
        B83BB25F40B56445B6674AB86C4FBA7054BD75ACC0AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6C6
        B83CAD5E41B06246B2664BB46A50B66E56B974ACBFAFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6C7
        B843AF6548B26A4DB46E51B57157B8755DBB7BADC0AFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7C7
        B955BC805ABF845EC08662C18A67C48E6DC893ADC0B1FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCD
        C155BA7E5ABC815EBC8463BF8867C18B6DC591B5C6B8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3D1
        C056B17357AE725BB0755FB27862B47C68B982BACAB8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtnAddClick
    end
    object SpdBtnEdit: TSpeedButton
      Left = 416
      Top = 12
      Width = 35
      Height = 35
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFCFCF8F7F6EDEAE6E5E1DBF3F2EFF9F9F8FDFDFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFDFDFDF7F5F4D7D2C9D2CDC6E3E2DFC2BCAFDED9D2F6F5F3FBFAFAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDF6F5F3D7D2CAD1CEC7FFFFFFFFFFFFFFFFFFD0CCC5C6BFB3EDEBE7F8F7F6FD
        FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F5
        F3DBD7CFCBC5BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEBEABAB2A6DBD6CEF3
        F2EFFAFAF9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F5F3DFDA
        D3C4BDB2FFFFFFFFFFFFFFFFFFFCF7F0EEDCCDEFE7E6FCFBFEFEFFFFC7C1BAC3
        BBAFEBE8E4F7F6F4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F5F3E1DDD7BFB8
        AAFFFFFFFFFFFFFFFFFFF8E8D1F0CD99E5B77ADAAC77E2CFC0F2EEF1FFFFFFE1
        E1DFB4AD9FD9D4CCF1EFECFAF9F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F5F3E3DFDABCB5A6FEFF
        FFFFFFFFFFFFFFF9ECDBECBE80EBBB7BECC083EABC7BDFAA67DAB58EE6DAD6FC
        FAFEFAFCFEBCB7AEC0B8ABE7E4DFF4F3F0FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F5F3E5E1DCB8B1A1F9F9FAFFFF
        FFFFFFFFFBF3E7EDC287EBBC7CECBE80ECBE80ECBF81EDC284E7B570D9A76AD8
        BEA6EEE7E9FFFFFFD8D7D4AEA698D6D0C8EEEBE8F8F7F6FEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F5F3E5E2DDBAB2A3F4F4F3FFFFFFFFFF
        FFFDF9F2EEC68FEBBB7AECBE80ECBE80ECBE80ECBE80ECBE80ECC083ECBF7FE1
        AC67D5AA78DECCC2FAF7FBF5F6F9B3AEA3BDB5A8E6E2DDF5F4F2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEF6F5F3E5E1DCBAB1A2EDECEBFFFFFFFFFFFFFEFC
        F8F0CC9BEBBB79ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ED
        C284EABA76DBA664D2AF8EE8DDDDFFFEFFD0CDCAB2AA9CE9E6E1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6F5F3E5E1DCBBB2A2E6E5E2FFFFFFFFFFFFFEFEFDF2D3
        A6EBBA79ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80EC
        BE80ECBF82ECC182E5B26BD2A168D5BDABF8F3F9D8D4D7D6D1C8FFFFFFFFFFFF
        FFFFFFFEFEFEF7F6F4E5E1DCBDB4A5E0E0DDFFFFFFF3F0F3F3EFEFF2D4AEEBBA
        79ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80EC
        BE80ECBE80ECBE80ECC083ECC181E0B172D7A46BBCA282EEECE8FFFFFFFFFFFF
        FFFFFFF7F6F4E5E2DCBFB6A7D6D5CFFCF7ECE4C8A9DEC09CE3B585EBB678ECBE
        80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80EC
        BE80ECBE80ECBE80EDC184EFCB97EABA71C3914CEBE7E2FFFFFFFFFFFFFFFFFF
        F8F7F5E5E2DCC1B8AAD0CCC6FBF7E8E6B583DFA670E4A96EE8A96EEBB379ECBC
        7FECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80EC
        BE80ECBE80ECBF83EFCA96EBBB76C9914AE8E3DDFFFFFFFFFFFFFEFEFEF8F7F6
        E6E3DDC3BBADC6C2B7FDFCF3E4B07BDC9D68E2A56EE7AA72EBAE76EBB379ECBB
        7EECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80EC
        BE80ECBF82EFCA95ECBF7DCB9042E2DCD3FFFFFFFFFFFFFFFFFFFAF9F8E7E4DE
        C5BEB2BDB6ABFEFEFDE8B986DB9B64E1A56FE7AB73EBAF76EBB379EBB67BECBC
        7FECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80ECBE80EC
        BE81EFC994ECC283D2923EDBD2C5FFFFFFFFFFFFFFFFFFFFFFFFF0EFEBD0C9C0
        B8B0A0FFFFFFEDC498DB9B63E1A56FE7AA72EAAE75EBB278EBB77BECBB7FECBF
        81ECBF81ECBF81ECBE81ECBE81ECBE80ECBE80ECBE7FECBE7FECBE7FECBE80EF
        C993EDC589D6943FD6C9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE9E6BEB5A7
        FEFFFFF1D2AEDC9C62E1A46EE7AB73EBAE76EBB379ECB87FECBD83EDC287EDC3
        8AEEC58CEEC68EEEC58EEEC68FEEC68FEEC78EEEC58CEDC288EDC285EFC993EE
        C78EDA983FD0BEA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E4DEDBDAD6
        F8E7CEDD9F66E0A36DE6AA73EAAF78EBB47BECB980EDBF85EDC389EEC58CEEC6
        8EEEC68FEEC790EFC993EFCA94EFCA95F0CC98F0CD9AF0CD9BF2D6A9F3D9AEE6
        AD5ECBB497FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE9E5C4B39A
        E9AF7BDFA16CE6AA74EAAF78EBB47CECB980EDBF86EDC38AEEC68DEEC58EEEC6
        8FEFC891EFC993EFC994EFCA95F0CC98F0CD9AF0CD9BF2D4A8F4DBB3EAB973C9
        AD8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE7E2D7A672
        E4A56FE5AA74EAAF78ECB47DECB981EDBF86EEC48BEEC68EEEC68FEEC790EFC8
        92EFCA94EFCA95EFCB97F0CC99F0CD9BF0CD9BF2D5A7F4DDB5ECC07DC7A57AFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F3D6B792
        EBB37CECB67EECB67FECB982EDBF87EEC48CEEC58EEEC68FEFC891EFC994EFC9
        94EFCA96F0CC98F0CD9AF0CD9BF0CE9CF2D4A7F4DEB7EDC586C9A26EFAFAF9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E4E1DBD4BFA4E9BD88EEC68CEEC58EEEC68FEFC891EFC993EFCA94EFCA95EFCB
        97F0CC99F0CD9BF0CE9CF0CF9DF2D4A7F4DEB9EECA8FCA9B62F5F4F2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF0EEEAD7C3A5EECA90EFCD95EFC994EFCA94EFCA96F0CC98F0CD
        9BF0CD9BF0CF9DF0CF9EF2D4A6F5DFBAF0CF99D09D5CF1EEEAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE5E0D8E0C499EFCF95F0CE9BF0CC9BF0CD9BF0CF
        9DF0CF9EF1D09FF2D4A6F5E0BAF1D3A1D49C54E9E5DEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDACCB9EFCC96F1D39FF1D1A0F1D0
        A0F1D1A1F1D3A5F5E0BAF2D7A8DA9E53E4DCD1FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE9E5DFC8A3F0D39BF2D5
        A6F2D4A8F5E0BCF3DAAFDFA255DDD1C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED4C6EECE
        9EF4E2B6F3DEAFE4A552D6C5B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5
        F4D1BFA6C7A274D1C3B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtnEditClick
    end
    object SpdBtnDelete: TSpeedButton
      Left = 472
      Top = 12
      Width = 35
      Height = 35
      Hint = #1059#1076#1072#1083#1077#1085#1080#1077
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFA
        FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCDCA0A0BFEDEDF0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCE399
        99BFE9E9EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD0D0DE1E1EB30303AF7575A0EDEDF0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7DE4D4D9403
        03BC4444B1EFEFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCFCFDD1F1FAE0505B60707B60202A873739EEDEDF0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7DE4A4A920000B308
        08B40202B84545AFEFEFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCFCFDD1E1EAB0000B20705AC0A08AD0000B20303A476769EEDED
        F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7DE4B4B910000B00000AF0D
        0AAD0302AC0000B54545ADEFEFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0DD1E1EAA0000B00000A50914BB0C1BC00000A50000AF0505A07676
        9DEDEDF0FFFFFFFFFFFFFFFFFFFFFFFFD7D7DE4E4E8F0000AC0000AC0000A610
        25C80308B00000A70000B24A4AACEFEFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C9C9DB3939AC0000AE0000A2000AB4013EF60445FB0514BC0000A20000AD0505
        9E77779DEDEDF0FFFFFFFFFFFFD7D7DE4E4E8F0000A90000A90000A20622CD03
        4DFF0134E80003A90000A50000B07575B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B6B6D32424AC0000A20009B10036F30040FF003FFE0F47F9101CBA00009F0000
        AA05059C77779DEDEDF0D9D9E04F4F8E0000A60000A701009F172DCC0A4AFF00
        40FE0045FF002EE50002A60000A75A5AB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BBBBE42A2AAC000DAF0034F00039FE0037F90037F90139FC1E4DF71C24B90000
        9C0000A706069864648E4C4C8A0000A30000A401009D2839CC144CFE0039FB00
        3AF9003AFA003DFF0030E20004A46161C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B7B7E2232CB70046ED004DFA0034F50030F60032F60031F60233F93057F4272C
        B60000990000A300009600009C0000A002019A3845CB1F4EFB0032F70034F600
        34F60033F6003CF60052FC0039DE5A5CC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D8DFF8547FF0004DF6004BF20045F2002FF2002BF3002DF3002CF2022EF63F60
        F23236B600009600009F00009C0302984852CA2951F8002BF4002EF3002FF300
        2DF30037F3004AF3004BF3004FF88EA4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF2F5FE4779F30045EF0047EF0042EF002BEF0027EF0029EF0027EF0328
        F24E69F23D3FB6000092030296595FCB3355F60024F00029EF002AF00028F000
        32F00046F00047F00046F0799FF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4F6FE4776F10040EB0040EB003CEB0025EC0022EC0024EC0022
        EC0323EE5C72F14E4EB66468C93D5AF5001DEC0024EC0025EC0023EC002DEC00
        42EC0043ED0042EC799CF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F6FE507AEE144DEA0A47E9033CE90022E8001CE8001C
        E8001BE8011CEA7B8BF35268F10016E90020E90021E9001FE90029E9003EE900
        3FE9003EE9799AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF2F5FE7D9DFA4E77F23F6EEB3359EA253BE91730
        E80B25E7011CE60016E60017E6001BE5001CE6001CE6001EE60037E6003DE600
        3DED7697F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F4F86C84D35073F1475AEA4253E93C4E
        E93447E8293DE71B30E50D24E4041BE30017E20017E20017E20020E30136E666
        7DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEE25557903B48D74C5AEE4251E73C4B
        E63746E53242E52D3EE42738E41E30E31225E1061AE00015DF0014E60313B97D
        7D9EEEEEF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD8D8DF52528800008304058E333CCC4753E73F4C
        E43946E33341E22E3CE22836E12231E01D2CE01626DF0B1CDF0008B600008908
        087F79799BEDEDF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD7D7DF51518600008400008600007B494BB6555FE6404B
        E03C47E03641DF303BDD2935DD2431DC1E2ADB1422DB3B46DF1F1F9A00007E00
        008A07077E79799BEDEDF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD7D7DF51518500007E0000800000794E50B1757CE64952DD444D
        DC3E47DB3840D93643DA323ED9252FD6212BD61824D4202BD8545BD91D1E9300
        007A00008506067A79799BECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCFCFCDDDDE452528500007A00007B0000734E4FAB7C81E54F56DA4C52D8474D
        D74147D53A46D63B55DC4B60DE2D37D3212AD01D27CF121CCD1822D25258D41B
        1C8D0000760000800707777C7C9DF0F0F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EFEFF28989AC00007600007600006F4F4FA88286E2575CD75359D54F54D4494E
        D2434DD43C53D93C54DA5368DE4457DA2831CD1E25C91920C90E16C6141DCC4C
        51CD18198700007200007B0E0E78BBBBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BEBED42A2A8800007100006A5050A4888BE05F63D55B5FD2565BD25155CF4B53
        D14558D83E53D83E52D85466DC4A5EDB3A4CD4232AC61A1FC2141BC10A11BF10
        17C4494EC818188300006D0000766363A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BABADB29298D0000695151A18E90DF676AD36265D15D61CF585BCD5359CF4D5C
        D84858D74152D58C96E67A84E24C5CD83E51D62F3FCF1E23BF161BBB1016BA04
        0AB70E13BE4C50C418187E00006E6060ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BBBBD92A2A875254A99497E16F70D16A6CCF6567CD5F61CB5A5FCD5560D74F5C
        D74A57D5939AE6FFFFFFF3F4FC6A73DC414FD33343D12531CA181DB81115B40B
        0FB30004B01012B84E55C8191A876161A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BBBBD95F60AD9AA0E9767DDF7174D26C6DCB6768C96164CC5C65D75660D6515B
        D49298E4FFFFFFFFFFFFFFFFFFEBECFA5F68D83641CE2734CC1B26C41417B10D
        0FAD0609AA0006B5101FCA4750CA6060ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F1F2FABEC0ED7F84DF787DDD7379DB6E70CD696ACB6369D65D64D6585FD49397
        E3FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFEBECFA595FD42932C81D27C7161EBE0F
        11A9070DB2020EC0000ABE0915C3B2B5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBBBDED7A7DDB7578DA7073D76A6ED56569D65F63D4979AE3FDFD
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEBF95155D01F24C3181EC211
        17BC0910BD030ABC060DBCABADE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB9BAEB7677D87173D76C6DD66668D49C9CE2FDFDFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAF94B4DCC1A1CBE13
        15BD0B0EBB080AB8ABACE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB8B8E97373D56E6ED4A0A0E2FDFDFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EAF84747C914
        14B91111B8ACACE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0E6A1A1E1FDFDFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9F84C
        4CC7A8A8E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFAE9E9F8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD
        CDEFF8F8FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtnDeleteClick
    end
    object cbSearch: TComboBox
      Left = 128
      Top = 24
      Width = 185
      Height = 21
      Style = csDropDownList
      Sorted = True
      TabOrder = 0
      OnSelect = cbSearchSelect
    end
  end
end
