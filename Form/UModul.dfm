object FrmModul: TFrmModul
  Left = 250
  Top = 167
  Width = 1003
  Height = 442
  Caption = 'Modul'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 53
    Width = 995
    Height = 355
    Align = alClient
    TabOrder = 0
    TabStop = False
    object e1: TcxTextEdit
      Left = 81
      Top = 10
      Style.HotTrack = False
      TabOrder = 0
      Text = 'e1'
      Width = 121
    end
    object m1: TcxMemo
      Left = 81
      Top = 38
      Lines.Strings = (
        'm1')
      Style.HotTrack = False
      TabOrder = 1
      Height = 89
      Width = 391
    end
    object cmb1: TcxComboBox
      Left = 81
      Top = 133
      Properties.Items.Strings = (
        'Top'
        'Detail')
      Style.HotTrack = False
      TabOrder = 2
      Text = 'cmb1'
      Width = 121
    end
    object grid1: TcxGrid
      Left = 10
      Top = 192
      Width = 436
      Height = 200
      TabOrder = 6
      object grid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object grid1Level1: TcxGridLevel
        GridView = grid1DBTableView1
      end
    end
    object btn1: TcxButton
      Left = 10
      Top = 161
      Width = 86
      Height = 25
      Caption = 'Baru'
      TabOrder = 3
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEAEAEAEBEBEBFCFCFC84B094247240186A
        3624724084B094FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3C5C5C5A4A4A4A0A0A0AA
        AAAAA6A6A6547E63278B5263B98C94D2B163B98C278B5280AD91FFFFFFFFFFFF
        E5E5E5A8A8A8CECECEEDEDEDF4F4F4F5F5F5F4F4F4216F3E61B98A5FB986FFFF
        FF5FB88666BB8E1F6F3CFFFFFFFFFFFFAFAFAFDEDEDEF3F3F3DBDBDBD2D2D2DB
        DBDBD6D6D6307A4B9BD4B5FFFFFFFFFFFFFFFFFF94D2B1186A36FFFFFFFFFFFF
        B2B2B2F0F0F0DEDEDED4D4D4D2D2D2DBDBDBD6D6D647885F8FD3B091D6B0FFFF
        FF64BB8B66BB8E1F6F3CFFFFFFFFFFFFB4B4B4F2F2F2E2E2E2D8D8D8D5D5D5DC
        DCDCD8D8D887A69360AA8094D4B3B9E6D069BA8E2C8E5680AD91FFFFFFFFFFFF
        B6B6B6F3F3F3E7E7E7DDDDDDD9D9D9E0E0E0DBDBDBC3C3C389A5945C95714E8D
        6544845C99BDA6FFFFFFFFFFFFFFFFFFB7B7B7F4F4F4EAEAEAE1E1E1DDDDDDE3
        E3E3DEDEDEC9C9C9BCBCBCBEBEBEE2E2E2A5A5A5FFFFFFFFFFFFFFFFFFFFFFFF
        B9B9B9F5F5F5EEEEEEE6E6E6E2E2E2E6E6E6E1E1E1CDCDCDC1C1C1C1C1C1E3E3
        E3A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFBABABAF6F6F6EBEBEBDEDEDED6D6D6D5
        D5D5D1D1D1C2C2C2BBBBBBBFBFBFE5E5E5AAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
        BCBCBCF7F7F7E7E7E7EFEFEFF6F6F6FBFBFBFAFAFAF0F0F0DEDEDEC2C2C2E6E6
        E6ABABABFFFFFFFFFFFFFFFFFFFFFFFFBEBEBEF8F8F8FEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBFBFBEAEAEAADADADFFFFFFFFFFFFFFFFFFFFFFFF
        CBCBCBE1E1E1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBCFCF
        CFC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4C6C6C6D0D0D0E8E8E8F3F3F3FD
        FDFDFCFCFCEDEDEDE0E0E0C1C1C1C0C0C0F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFDFDE8E8E8CFCFCFC3C3C3B7B7B7B7B7B7C2C2C2CCCCCCE9E9E9FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
    end
    object btn2: TcxButton
      Left = 102
      Top = 161
      Width = 85
      Height = 25
      Caption = 'Batal'
      TabOrder = 4
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECDFAF9F9FEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8F8FEC5C5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D1D0FB4E4BF2413FEDF9F9FEFFFFFFFFFFFFFFFFFFFFFFFFF8F8FE2624E4302E
        EAC6C5F8FFFFFFFFFFFFFFFFFFD3D2FC5755F56260FA5754F64240EDF9F9FEFF
        FFFFFFFFFFF8F8FE2D2CE6403EF14B49F6302EEAC6C5F8FFFFFFFFFFFFE3E2FD
        5A57F66461FA706FFF5855F64341EEF9F9FEF9F9FE3633E94644F26261FF4947
        F42E2CE9DAD9FAFFFFFFFFFFFFFFFFFFE3E3FD5A58F66562FA7370FF5957F644
        42EE3F3DEC4F4CF46766FF4F4DF53533EBDBDAFBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE3E3FD5B59F66663FA7371FF726FFF6F6DFF6D6BFF5654F73E3CEEDCDC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3FD5C5AF77875FF58
        55FF5653FF716FFF4745F0DEDDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFAFF5D5AF67C78FF5D5AFF5A57FF7573FF4643EFF9F9FEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFF6764F96F6CFB7F7DFF7D
        7AFF7B78FF7876FF5D5BF74845EFF9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FBFAFF6F6CFC7673FD8581FF7572FC6361F85F5CF76C69FA7A78FF5F5CF74946
        EFF9F9FEFFFFFFFFFFFFFFFFFFFBFBFF7471FE7C79FE8986FF7B78FD6B68FBE5
        E4FEE4E3FE605DF86D6BFA7C79FF605EF74A47F0FBFBFFFFFFFFFFFFFFEEEEFF
        7976FF807DFF807DFE7370FDE6E6FEFFFFFFFFFFFFE4E4FE615EF86E6CFB7D7B
        FF615EF8B0AEF8FEFEFFFFFFFFFFFFFFEEEEFF7976FF7875FEE7E7FFFFFFFFFF
        FFFFFFFFFFFFFFFFE4E4FE6360F86967F98E8CF7E3E2FDFFFFFFFFFFFFFFFFFF
        FFFFFFEEEEFFE8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4FEB8B7
        FCD6D6FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
    end
    object btn3: TcxButton
      Left = 193
      Top = 161
      Width = 92
      Height = 25
      Caption = 'Simpan'
      TabOrder = 5
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC98A61C28357D38A67E18E6FDC8C6BDA8A6CD789
        6DCD8A6BAA6C43A55E2DFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEAEAEAC58254EF
        CEB9DDFFFF86EEC7A1F4D7A1F6D78BEEC7E0FFFFDDA184AA693DFFFFFFF3F3F3
        C5C5C5A4A4A4A0A0A0AAAAAAC27E50EFB599EAF3E850BE836EC99770C99853BE
        83E4F4E9DD9B7AA96839E5E5E5A8A8A8CECECEEDEDEDF4F4F4F5F5F5C38053EA
        B596F3F3EAEDF1E6EFF1E6EFF0E6EDF1E5F3F5EDD59B78AF6F43AFAFAFDEDEDE
        F3F3F3DBDBDBD2D2D2DBDBDBC98A60E6B491E2A680E1A680DEA27CDCA07ADB9E
        78D99D76D49972BA7D56B2B2B2F0F0F0DEDEDED4D4D4D2D2D2DBDBDBCA8C64EA
        B798DDA47DDDA57FDBA27BD99F79D99F78D89E77D89D77BE835CB4B4B4F2F2F2
        E2E2E2D8D8D8D5D5D5DCDCDCC8875CEFBEA0FDFCFAFEFCFBFEFDFDFEFDFCFDFB
        FAFDFCFBDDA784C07E52B6B6B6F3F3F3E7E7E7DDDDDDD9D9D9E0E0E0C7855AEF
        BF9DFFFFFFCC926DFFFFFFFFFFFFFFFBF7FFF8F1E4AE8BC78960B7B7B7F4F4F4
        EAEAEAE1E1E1DDDDDDE3E3E3CC8C64F3CDAFFFFFFFE3C7B2FFFFFFFFFFFFFFFF
        FFFFFFFFEABEA0C9885FB9B9B9F5F5F5EEEEEEE6E6E6E2E2E2E6E6E6D4966DD4
        9D7AD09770D6A381CD8D67CD8F68D09974D19872C88A61EDDCD0BABABAF6F6F6
        EBEBEBDEDEDED6D6D6D5D5D5D1D1D1C2C2C2BBBBBBBFBFBFE5E5E5AAAAAAFFFF
        FFFFFFFFFFFFFFFFFFFFBCBCBCF7F7F7E7E7E7EFEFEFF6F6F6FBFBFBFAFAFAF0
        F0F0DEDEDEC2C2C2E6E6E6ABABABFFFFFFFFFFFFFFFFFFFFFFFFBEBEBEF8F8F8
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEAEAEAADADADFFFF
        FFFFFFFFFFFFFFFFFFFFCBCBCBE1E1E1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFBFBFBCFCFCFC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4C6C6C6
        D0D0D0E8E8E8F3F3F3FDFDFDFCFCFCEDEDEDE0E0E0C1C1C1C0C0C0F6F6F6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8CFCFCFC3C3C3B7B7B7B7B7B7C2
        C2C2CCCCCCE9E9E9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
    end
    object btn4: TcxButton
      Left = 869
      Top = 320
      Width = 116
      Height = 25
      Caption = 'Hapus User'
      TabOrder = 8
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEAEAEAEBEBEBFCFCFC94AFE3235BC10542
        BB1F59C086A6DDFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3C5C5C5A4A4A4A0A0A0AA
        AAAAA6A6A65675AB2664C82076E60578EA0163DD074EBD86A6DDFFFFFFFFFFFF
        E5E5E5A8A8A8CECECEEDEDEDF4F4F4F5F5F5F4F4F41C57BE629CF4177EFF0075
        F80075EE0367E11E58C0FFFFFFFFFFFFAFAFAFDEDEDEF3F3F3DBDBDBD2D2D2DB
        DBDBD6D6D60541BBADCDFEFFFFFFFFFFFFFFFFFF177EEF0542BBFFFFFFFFFFFF
        B2B2B2F0F0F0DEDEDED4D4D4D2D2D2DBDBDBD6D6D61B53B98CB4F64C91FF1176
        FF2085FF3F89EB245BC1FFFFFFFFFFFFB4B4B4F2F2F2E2E2E2D8D8D8D5D5D5DC
        DCDCD8D8D8738EC13A74D08CB4F7B7D6FE71A7F52E6CCC94AEE1FFFFFFFFFFFF
        B6B6B6F3F3F3E7E7E7DDDDDDD9D9D9E0E0E0DBDBDBC3C3C36F8ABD2159BE0542
        BB154EB688A7DEFFFFFFFFFFFFFFFFFFB7B7B7F4F4F4EAEAEAE1E1E1DDDDDDE3
        E3E3DEDEDEC9C9C9BCBCBCBEBEBEE2E2E2A5A5A5FFFFFFFFFFFFFFFFFFFFFFFF
        B9B9B9F5F5F5EEEEEEE6E6E6E2E2E2E6E6E6E1E1E1CDCDCDC1C1C1C1C1C1E3E3
        E3A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFBABABAF6F6F6EBEBEBDEDEDED6D6D6D5
        D5D5D1D1D1C2C2C2BBBBBBBFBFBFE5E5E5AAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
        BCBCBCF7F7F7E7E7E7EFEFEFF6F6F6FBFBFBFAFAFAF0F0F0DEDEDEC2C2C2E6E6
        E6ABABABFFFFFFFFFFFFFFFFFFFFFFFFBEBEBEF8F8F8FEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBFBFBEAEAEAADADADFFFFFFFFFFFFFFFFFFFFFFFF
        CBCBCBE1E1E1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBCFCF
        CFC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4C6C6C6D0D0D0E8E8E8F3F3F3FD
        FDFDFCFCFCEDEDEDE0E0E0C1C1C1C0C0C0F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFDFDE8E8E8CFCFCFC3C3C3B7B7B7B7B7B7C2C2C2CCCCCCE9E9E9FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
    end
    object btn5: TcxButton
      Left = 756
      Top = 320
      Width = 107
      Height = 25
      Caption = 'Ubah Data'
      TabOrder = 7
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF1842592A61884B89BD6FA8CCE3EDF5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D668493C7F990C9F940
        84C9266AADD8E6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F3F3F3C5C5C54288A9E0F2FF5399D81979BD4897C43D83BCA7B5C2F4F4F4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5A8A8A8CECECE9BB9CE79B5D58FB6D154
        C9E45ADFF577D0ED4A96D788939DE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF
        DEDEDEF3F3F3DBDBDB95B7C974B8D6C1F6FD62DFF75CE2F878D3F04796DA8892
        9CFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2F0F0F0DEDEDED4D4D4D2D2D298BDCF76
        CBE7C7F7FD5DDCF559E1F77AD4F14694D8D6E7F7FFFFFFFFFFFFFFFFFFB4B4B4
        F2F2F2E2E2E2D8D8D8D5D5D5DCDCDCA3CCD978D3EEC7F7FD5EDCF55AE2F779D6
        F250A1E2DCE9F6FFFFFFFFFFFFB6B6B6F3F3F3E7E7E7DDDDDDD9D9D9E0E0E0DB
        DBDB96BFCD7BD4EEC3F6FD6BDDF66CCAED62A2D768A2D5E5EFF7FFFFFFB7B7B7
        F4F4F4EAEAEAE1E1E1DDDDDDE3E3E3DEDEDEC9C9C988B9C97FD4EDB1E3F98ABF
        E7ADD3F6C3E0FC6AA1D4FFFFFFB9B9B9F5F5F5EEEEEEE6E6E6E2E2E2E6E6E6E1
        E1E1CDCDCDC1C1C188BDCE76BDE7B3D2F0E5F3FFABD2EF5895CCFFFFFFBABABA
        F6F6F6EBEBEBDEDEDED6D6D6D5D5D5D1D1D1C2C2C2BBBBBBBFBFBFAAD4E357A4
        D884B0DB459CD0B0D8EEFFFFFFBCBCBCF7F7F7E7E7E7EFEFEFF6F6F6FBFBFBFA
        FAFAF0F0F0DEDEDEC2C2C2E6E6E6ABABABFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE
        F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEAEAEAADAD
        ADFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBE1E1E1FEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFBFBFBCFCFCFC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4
        C6C6C6D0D0D0E8E8E8F3F3F3FDFDFDFCFCFCEDEDEDE0E0E0C1C1C1C0C0C0F6F6
        F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8CFCFCFC3C3C3B7B7B7B7
        B7B7C2C2C2CCCCCCE9E9E9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
    end
    object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytmdxlytcntrl1Item1: TdxLayoutItem
          CaptionOptions.Text = 'Nama Modul'
          Control = e1
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item2: TdxLayoutItem
          CaptionOptions.Text = 'Deskripsi'
          CaptionOptions.AlignVert = tavTop
          Control = m1
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item3: TdxLayoutItem
          CaptionOptions.Text = 'Level'
          Control = cmb1
          ControlOptions.ShowBorder = False
        end
        object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlytmdxlytcntrl1Item5: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btn1
            ControlOptions.ShowBorder = False
          end
          object dxlytmdxlytcntrl1Item6: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btn2
            ControlOptions.ShowBorder = False
          end
          object dxlytmdxlytcntrl1Item7: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btn3
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytmdxlytcntrl1Item4: TdxLayoutItem
          AlignHorz = ahClient
          AlignVert = avClient
          Control = grid1
          ControlOptions.ShowBorder = False
        end
        object dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlytmdxlytcntrl1Item9: TdxLayoutItem
            AlignHorz = ahRight
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btn5
            ControlOptions.ShowBorder = False
          end
          object dxlytmdxlytcntrl1Item8: TdxLayoutItem
            AlignHorz = ahRight
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btn4
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 995
      Height = 52
      Align = alTop
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005B00
        0000320802000000BCAF305C0000000467414D410000AFC837058AE900000019
        74455874536F6674776172650041646F626520496D616765526561647971C965
        3C000000D5494441547801EDD0410DC35010C4D07C2881560A65530C85134291
        0F23198457B276CEEF7C7EF7D549E024220D662228B844ACC14E0405978835D8
        89A0E012B1063B11145C22D6602782824BC41AEC4450708958839D080A2E116B
        B01341C125620D762228B844ACC14E0405978835D889A0E012B1063B11145C22
        D6602782824BC41AEC4450708958839D080A2E116BB01341C125620D762228B8
        44ACC13EFFE7CBAF09243289FD4426B19FC824F61399C47E2293D84F6412FB89
        4C623F9149EC273289FD4426B19FC824F61399C47E2293D87F0183A5431F8515
        83E00000000049454E44AE426082}
      Stretch = True
    end
    object lbl1: TLabel
      Left = 59
      Top = 36
      Width = 148
      Height = 16
      Caption = 'Tambah Modul Aplikasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 59
      Top = 14
      Width = 130
      Height = 25
      Alignment = taCenter
      Caption = 'DATA AMIL'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object img2: TImage
      Left = 9
      Top = 4
      Width = 49
      Height = 47
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000048
        00000048080600000055EDB347000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
        80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
        0B0A00000B0A01BF436653000012C949444154785EDDDC07AC5EE57DC77107B7
        B4B424A449E980B40D2949139A5448AD2AD2548A148190B05496D97B2FB3CCDE
        1BB3F7DE180CD866EFBD317B833198653608230B435283F1E9FFF3E8FC5F1D1F
        BFD777F88A9B5B4B7F9DFBBEEF19CFF33DBFFFEF19E739FE4E55552306FAEF83
        0F3EE8D3A1E79D77DED2B1E3EF224645AC10313262C5FAE0A9DF7CF3CD1FE6CD
        9BF787B973E73E2DE2F3137BEFBDF7AB7D3A793F775A669965FA770440038DF7
        DF7F7FC4C2E2C0030FFCF521871C72F3A1871E5A1D7BECB1D599679E595D72C9
        25D565975D564D9E3CB9BAE69A6BAAABAEBAAABAFCF2CBAB8B2EBAA83AEDB4D3
        AAC30F3FBCDA7DF7DDAB3163C67CB2FDF6DB9FB5F5D65BFFAAB7EBF4E7F7FED6
        75C0705CA8A782EDB3CF3ECB1D70C00177069CEAD4534FAD264C98504D9C38B1
        40B9FAEAAB0B986BAFBDB6BAEEBAEBAAEBAFBFBE6C7DF6FB95575E59009E72CA
        29D51E7BEC5105A06AF3CD37BF60E38D375EA23F207ADA77C801EDB9E79E5B05
        A0D9E3C68DABC68F1F5FC04C9A34A904000909A88464EB73AAE9E28B2FAECE3F
        FFFCA23890410A40F76FB0C106231715D29002DA75D75D4F0940D549279D545D
        7AE9A52575AEB8E28A05824AC0004F2418C700433D001F7CF0C155C02E29172A
        AA02D098610B68C71D771C1F80AA134F3CB10A532E15BDF0C20B3B71C1051774
        BEE33754C28F6CED77CE39E754279F7C7275F4D147171F0AFFEAC0897357DB6C
        B30D4033D65D77DDC51705D29028280A3F4E25548ED136439A9C7BEEB9D5D967
        9F5D9D71C619C5937C06C6773E1F77DC711D30522AFCABDA6BAFBD2AC09DB7F6
        2180AA75D65967AB6105688B2DB6D841050E3AE8A0525141118CF7861B6E28E9
        C574A515FFF15DFA0D50D472D8618715AF0166DF7DF7ADA429383BECB043514E
        5C83071540A3478F9EB6D65A6B0DD88BBE55056DB4D1466B46533C575A31E107
        1E78A07AE59557AA175F7CB1BAF7DE7B4B6BC5A8790B4877DF7D77F5CE3BEF54
        1F7DF45109CDBF54DA7FFFFD0B98E8FB5463C78EAD76D96597A29C6DB7DDB6DA
        72CB2DAB4D37DDB48A6B55EBAFBF7EB5F6DA6B5701E8BF07AAA26F1550DCF92F
        28461A518DB4E1254C36E3ACB3CEAAEEB9E79E02E6C30F3F2C01CE5B6FBD553C
        4600A34967C6E0ECB4D34ED576DB6D57528B7A00DA70C30DA55701B4C61A6B8C
        1B1680F6DB6FBFC543057B456B335D9A88A38E3AAAC0D13A3DFAE8A355F4B64B
        249CDC02269504D5ECB6DB6E1D38CDD4DA64934D4A6A8539A77A009A322C0065
        219F7AEAA995C078F6D967AB77DF7DB744FC562201B5215111DF891E73510C28
        91AEC573B6DA6AAB4E5A81B3DE7AEB75D4B3E69A6B02F4C9B002F4C4134F8C06
        E8F9E79F2FA924BA416AAA08202A03463AF19B4CA9CD36DBAC788EB46AC209EF
        01A75A7DF5D5E70C3740BB4E9932A598336F9931634607D27BEFBDB7809A9A3E
        24C58061C63A8369C809A7955A09C839173A0EFCA31A6A84824E04E8A5975EAA
        DE7CF3CD052065BA754BB9279F7CB2A8886AF80DE5645A259CDA983B704241B3
        8615A0C71F7F7CB2149B3A756AF5C61B6F7420754BB73624DEF4F4D34F171551
        4DDB73C0A97D476A654C1F6E80A624A0E9D3A7CF07A9A7746B83D24FE2375493
        CD797A4EED3B4D40B70D3740D313D06BAFBD5625247ED4F624E6DDF4A504253D
        134CDD192C29D5050E50A70F2B408F3DF6D86C805E7EF9E56ADAB4691548AFBF
        FE7A572535D3AE0DAA09465AE94F45FA96E109136FA4D88047F5DF6A4F3AEFA2
        4A004405861A09A99D6ED4F4F6DB6F775AB9EC0EA4AAD26BA8C6C0D7FE9F7EFA
        69016ECEA801E8B7C34A414D4054D486946A6A1A781B1458994E5AB3575F7DB5
        807EE185174A37C10DA801FD3EB6039E5D1C2A05CD510195A1A236240A486F6A
        C24A8F4A5800F021035CE7D13317F6BBE9A69B12D0B903558FE3860AD0AC1C6A
        E82CAA9CD0ECA79AA8812ABAC1CABE937DF4C6134C6E29CF8C41ADA0158723A0
        E961D4D533CF3C532A4849098A9A804A58CDF44B58A92A50DB809E7BEEB902B5
        36E9098B0267C814143DE9FB018A416BB9FB2AD584948A6AC36AABCA316D408E
        35D116EA9919B1ECB00414C385F10005A8A2A285416AC3A2284161E0B40151A2
        315AC0193D73E6CC018DBF9A5087C48302D05880B46654D484D44CB9A63FB541
        F9AD0DC7E7638E39069C31E00C6740BF0388511B7C3621515342CAB403A30DCB
        3E52338DD9DF662BCD38269CE10CE807D917B24D4806A1CD0A03D40EA07CD76C
        B97895319CD6CDBCF6B00724C703CC9B1494A99690DA6A4A45A5DFB4D3CA715A
        AD1C92E841FFBF0014067D1640828A9A4A4A48E94DED7E8EEF536DB7DD765B19
        C3E93D1B823CF8E083039E1CEBD6E20D89492B48001A05CE238F3C5220A592DA
        A0C00223C3E70C8F8D6EBFFDF6925A661DCD157DF2C9277FDC80E2015E8FDDF3
        E61D0A404B0498DF27A054531B54A69E6D0640F6F770F1A1871E2A430B73D69F
        7DF65915EB86AAD9B367FF7C51FB3F79FCA02BA8AF806A1FBA19A06E909AA032
        05535DD2281734E84B199B51CED75F7F1DF5A93C777B2626F5F71A0C48430A28
        2AB783B9E9871F7EB840F2772AA9B96DC2BAF9E69B3B4F5ECDFBF02306FDC517
        5F14387C286ED23C4F5AE3B1D0C47802B2E4A2801A7440F140AF4F2956FBD0B2
        01620E40CD68AB0AA03BEEB8A32CACCA156796C0DC75D75DA5C9975EFE492F0B
        21F2A1A2676801EAFD98E4FFE540210D3AA0781CDC6740759A8DA79636A054D0
        9D77DE59D2299FD9DBFAACBFE318C38E3973E614406079666FA547F3E9EBCE3B
        EF3C27CA353662A9FE821A7240A18A1F47533D35D4308FE1AAB4D649F30D8445
        5526E833A8C860D47C0F4FE23DFE7DF5D55765BD905523567DE8513741798E1F
        D0DE8B18D51F48830E281EEC7555D0CA2BAF3CA2199106BF88C29E1D8B10FE57
        65CC277BD6A5A3277D2C8301438094E1374B654062D0D24A68EE4DBB1E79E491
        65150850568138772E8FC967FB71CD09114BC5F1BA1BBD467F20F53AC3D61BA0
        F87D9588DB727586E52C9EB95BE961B9CAADB7DE5ADD72CB2D9D65780929B71E
        3F83C5A7B45A82491B87593BD45C5CD55C2E03D409279CD00116659811F1EB6F
        1D502C4DE90A31BE5F25E2294B57A480BB6D75873B6E7DA1E5309E9852858552
        14D25CAF089034F39D9EF5E79F7F5E7DF9E597D5AC59B38A3F598D0636404058
        466CE508686E0040F6D3F2B9B67244CC8918DB1B240A6A6740FB73AAAC570545
        41E6DB273E2F1B718302AA0010FC031895B03ED1822985562143062D9194B15F
        42B28FF462CA1F7FFC71797AC17FB464D6373A8FE340B74CCFC2D0E38F3FBE4C
        7F38AF6B83685196B0EE3196E3E49AA3C951BE257B0235A880E2A21D40F1F7D2
        11D31584C7481F85F3373530632BCBA49494034F93AD2FC3AC2DA4D2290449AB
        E5B9583D94286945499AFD5CFCE99CD6310293EB1B81F23DD3A7A62C83725873
        0D9EF245BC10B15C3748830A288CB10328FEBE9851BAB30AE46E2BA0EFACF151
        60BFF95E9F455AE9C358DAA205E221471C714449114A0008188353531CC00194
        AB5F6D750B4CD85BB906BCA6DFF91DEFBC3A9A3E67E85F59F1A64C113303D27F
        B5210D2AA0F09702282EB67CC45C955350051100A988B4C8A5BFFA3C16234821
        3EC44732F54060CA7CC5624E4F3A54DADDCFA5C109C956D780EA98392F8B3E50
        598946296E80D4CDB28005A41B01106F8CED94F097EF648035A88022D7CB0963
        BBAF0B2A00790B0699509A953352B7B690CA98270F51596905A80AA99CDF0C58
        7D06D05AEA5CEBD884E46F29068AC5A2CE9165B0F559B9DC3CDE041035EB1AF8
        1C9DCDDF0C0AA0969377A83B795CE82917732799ADA01066DCAE8C49300A8A89
        AE7227499E6FE813658598B474F49DCA59EC690B78826A9E57ABA72BE03B8D41
        96C1F1D24DD9A83217A59F7EFAE9C51B7D1F3131EAB0585349036AC57A0214BD
        D6EFC545E66A51A826830A784ADE755B95A320A9A565A21205F59BFD6FBCF1C6
        02D6393C0F5329C64B6554D20495664D35E0E83E382F13CEF73B2885629C5BEA
        DB57F39F70EB55FB73C30397EB0FA4AECD7C0F80160B15ACEC4EB8730A2655F2
        8D1D2D0C8F71E77345BD210673F6DC4B774085BC77416D204847EA320FA4D2CE
        0B94A10555D947EBE57C7AD95255AFD9885E39000644CA8123C5F814E89AFB66
        005FAFC53E2CEA37B2AF90FA036864E4F08EFC2797F7E64B28B6D962D8A6ACB5
        3C524B05A84E3AA92413054BBA997706C5EF54D80D54AA4D8B2880CC97601CCB
        6398BB2E8494CB86A2B90519A028FF4B0167F1883FE9026A818E635F0039880F
        8D8CCA9EE82200B47BC3D240AB224D149A9ADC5D7FAB943BE8EEE6742C853897
        8283053C73CD35D6403956BAD847F7C1F95D9B0FB93EAFCA4EEA7DF7DD577C8D
        C9FBBE5B4833D789F3FC7BD4E7CF23FEB401A9E94D1D50FD0124C52629109550
        43D33C7D267F95CCA1001FB18F265985741E45F678AD85D691745CA6608EE1A4
        A15449BF91AA2ADDBCAE6BF99D6AC0F1BBB2F514CE09505CEFC000F3DD882516
        A226A2E8F4FDE61B467471F6D29205A0C75D40C5D33899718656845A726A227D
        010469280D549A7F39C6BA682FABD45316A51309943B6D3FE9695139802A9FAD
        9A2DCFF33BC550AAEFDA6F18B53F2B5F3D657243D467E988EF472CD9454D9D96
        BBAF0A2A6916059A91CD7553C28C34EF9E5E6DCED9000386492E40DDFD548031
        9BB40154EA242870798E63F25CD9A235AF693F3740FA81C3D87B0BDE554F95BC
        16F5F951C4DF46FCA08B9A3AE9D65F40B35C800F686184BF45B63A2AA6E25242
        A5F3AD41069CA60928309A6A2D5282E2455A2BC7790D21FD2EAF97D74AF5646B
        E81ABEE35919EDCFE98B3C2EEAF07940F949C43F46FC5D17489D56AE2F80526E
        8BD583BFF9DEE269DF35FE63957CBE7B217D0C1380A004FEA0E23E0394218DA8
        8D9AF4BE29C4B9F36DA1E675720821658CCF3408D4E17373EBEF8C1CE6E42036
        A0FCB486F40F2D48CC5B0B5754B430401D30F5018B370169AD14CE9DC93E506E
        F59E9B95A71CC0723E27D5554FBE17C5E8D881635D2295E64B79B9CD73FBAC1C
        F60144E4948A6D33C0F0999153AD546C00FA97A8D7F2113A8ED2ED6F6A4F62DC
        09A847936EC2213754BF1B267A157F71C1F69DF35D867DA8285327DF42042D8D
        38671EC131685561AF1F989CCF4A35CFE9EF7C8F35E7A054969749DF9EC23E54
        CBCC8573383EEAF3F3889F45FC73C43F45FC7D9D6A7F5103EAB5154B4800A1CA
        CC7E1477FDD0A8C4CCBCA3597005110AAA15A2044A01C23043E1CC4D5389E639
        E795159E1A4DCB4A33C7F614CE9D13F77AE439BC9072DD22A75D5C238D1ED01A
        D02FA23E5424D5A868D988BFAAC5A0CEA52FD4170F928B7A9E9A44A6F66FA18C
        4BF9087903E4A259A97CA14EDF47AA65BF26FB46F6CB9E3515EA2779ED80DA80
        EB2DF2ED448072945E0F4473405AB6CAE1FC3AA81A90347A658D1BF655D4E35F
        2340A2228028E87B113A8F453D7D0564C754D15F3B61A4C218AA50907CE2D07C
        2937A71BA48C82820826A34D43E5473A8FF6A12CCAA887029DBFF3736EA9CE75
        41AA27C2BA6EA9C9F55C0B240A65F660296728F5B3A8C7AF1A8018B50C6125EA
        DA6F400EA02427D0C15A2114F2303F51F854878281E3CE0A9E434569B440E5DF
        FA433A8AD493BD68FED32D9872BEEC9B1E964A6A6F33F5D2A081620709CAEFD1
        B24E8B3AAC18C1877E1CE1C6CFE73DFD55D0088F7D1A907E18EB057F13177A93
        6F287C5341297D77D9AB4D3E674B932D8AFDBD93C1A7F285DEFA89443E995860
        9BCFBFBA6DF3A98A1B06424E96E5D3955413D871E326B38A087D21ADD75FB653
        6B4080EA294A6A92A7DF8FD794568A0A4E65C4EE6CF66E1530D3423F88527220
        9AFFFB0B38BE4F388ECF5818886CFD9C37C377A92437CB8D49EF4BCFA328691C
        FB7E13D7DE32CACFA0C131D4501F1932E0D1FC883871C7D1EB1C95AB4B8E1A35
        EA27D1B24D52C86CB1804A13AD0787A5EF92035DAAD2CA355F0707A73730CEAF
        A7AE6B90E173F3B8F4A8BC5EFAA17D1C1F7E77519D5E4C997234405DE100D697
        56AC508D822CF0ECAC3E7169E1A2F7BB6EA8E96D054E50E000A5B00A28BD54CC
        7B182A92DEE2AE37BDC46F6D45251C299913F6FE164D35B94E42CAC7D38E8D56
        F29D50CE9151D69522740C8DE6170A67910125DD1AD49FADBAEAAA3F8CD1F7FE
        51E8F79BF2F777F671A496BE50B369AE9F3A745AA4ECB1A761AB28F042EF1BA0
        A68A9A9072BF9C2188347E2DAE794E947174C47F46E8EFF4094EBF002D6CF94B
        0394B44B506303C494FC5F14544C6AE961AB7836EBD2B1D9F7A9A7453B4F47BB
        794E5331CDBF03DCCC00322DD4FC405C6BC26AABADB67B94E77F223CCDD062F1
        9C6CAD161BF0639F6E66D517402D4531BE25E3E5DC1562DA62A788CBA2F02F06
        A86971F7DFE8A992F1DBE7B1CF5BA1C4676342EDFEE8275D120A382AD4B9539C
        6FF33A368BEDA6111B46AC1BB1560D62B5D8AE12F1DB88FF88D011D4B9D53561
        C625A5F201E290016A80CAFE1358FA504C71A9089D328536D5C00FF46475F955
        480FF79775AC507FB66D460E1396AF8F3596721EC64B25CEAF574C2DA094CEDF
        A03D598D932DD0DCF54741DDD6DD4497608450D0BAC00A2DC05309008DF94074
        B76D55B019F99DFD84631CEB1C39BF3CDF138B85ADF04805F5659D506F53AE23
        1615505F0AD1977D6AC00B4C89F6E5D86EFB10435F8EFD3FB18D9B94924D4DC3
        0000000049454E44AE426082}
      Stretch = True
    end
  end
end
