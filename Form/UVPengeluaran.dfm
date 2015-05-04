object frmDataPengeluaran: TfrmDataPengeluaran
  Tag = 2
  Left = 167
  Top = 120
  Width = 928
  Height = 480
  Caption = 'DATA PENGELUARAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 53
    Width = 920
    Height = 393
    Align = alClient
    TabOrder = 0
    TabStop = False
    object grid: TcxGrid
      Left = 10
      Top = 53
      Width = 895
      Height = 284
      Align = alClient
      TabOrder = 4
      object gridDonatur: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDonatur
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object gcolmDonaturkode_donatur: TcxGridDBColumn
          DataBinding.FieldName = 'kode_donatur'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 117
        end
        object gcolmDonaturnama_lengkap: TcxGridDBColumn
          Caption = 'Nama lengkap'
          DataBinding.FieldName = 'nama_lengkap'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturnama_laporan: TcxGridDBColumn
          Caption = 'Nama Laporan'
          DataBinding.FieldName = 'nama_laporan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturtempat_lahir: TcxGridDBColumn
          Caption = 'Tempat Lahir'
          DataBinding.FieldName = 'tempat_lahir'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturtanggal_lahir: TcxGridDBColumn
          Caption = 'Tanggal Lahir'
          DataBinding.FieldName = 'tanggal_lahir'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonatursuami_istri: TcxGridDBColumn
          Caption = 'Sumai/Istri'
          DataBinding.FieldName = 'suami_istri'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturalamat_rumah: TcxGridDBColumn
          Caption = 'AlamatRumah'
          DataBinding.FieldName = 'alamat_rumah'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturtlp_rumah: TcxGridDBColumn
          Caption = 'Tlp Rumah'
          DataBinding.FieldName = 'tlp_rumah'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturhandphone: TcxGridDBColumn
          Caption = 'Handphone'
          DataBinding.FieldName = 'handphone'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturkantor: TcxGridDBColumn
          Caption = 'Kantor'
          DataBinding.FieldName = 'kantor'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturalamat_kantor: TcxGridDBColumn
          Caption = 'Alamat Kantor'
          DataBinding.FieldName = 'alamat_kantor'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturtelp_kantor: TcxGridDBColumn
          Caption = 'Telp Kantoor'
          DataBinding.FieldName = 'telp_kantor'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmDonaturmulai_bulan: TcxGridDBColumn
          Caption = 'Mulai Bulan'
          DataBinding.FieldName = 'mulai_bulan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 93
        end
        object gcolmDonaturmulai_tahun: TcxGridDBColumn
          Caption = 'mulai Tahun'
          DataBinding.FieldName = 'mulai_tahun'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 72
        end
        object gcolmDonaturcara_bayar: TcxGridDBColumn
          Caption = 'Cara Bayar'
          DataBinding.FieldName = 'cara_bayar'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object gcolmDonaturjemput: TcxGridDBColumn
          Caption = 'Jemput'
          DataBinding.FieldName = 'jemput'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 77
        end
        object gcolmDonatursetiap_tanggal: TcxGridDBColumn
          Caption = 'Setiap Tanggal'
          DataBinding.FieldName = 'setiap_tanggal'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 109
        end
        object gcolmDonaturkode_kab: TcxGridDBColumn
          Caption = 'Kode kab'
          DataBinding.FieldName = 'kode_kab'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 67
        end
        object gcolmDonaturkode_amil: TcxGridDBColumn
          Caption = 'Amil Penjemput'
          DataBinding.FieldName = 'kode_amil'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 60
        end
        object gcolmDonaturnama_kab_kota: TcxGridDBColumn
          Caption = 'Kabupaten/kota'
          DataBinding.FieldName = 'nama_kab_kota'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
        end
      end
      object cxgrdlvl: TcxGridLevel
        GridView = gridPengeluaran
      end
    end
    object btnCari: TcxButton
      Left = 473
      Top = 10
      Width = 83
      Height = 25
      Caption = 'Filter'
      TabOrder = 2
      TabStop = False
      OnClick = btnCariClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4CBDF598FBD4F89B9FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CC
        E06B9ECC91B8DE4F87B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        F5F1F0DCCCE6C5AAE6C4A8DFBA9BB5A2969BB7D36599CBB5CCE0A2C9EE76B1E6
        3D90DB338BD9338BD9338BD9338BD9A8AFB5F2DCC9F8E3CEF7E0C7F8E2CBF3D1
        B2B1A298B9CFE4FFFFFF4698DDDEF1FAA7DDF49DDBF495DAF38DD8F385D7F3E5
        C3A7F5E5D6F4DAC0F3D8BCF3D8BCF8E3CCD9B599FFFFFFFFFFFF3A96DBEFFAFE
        A0E9F990E5F880E1F771DEF662DAF5E0BC9DF8EADCF4DDC5F4DCC3F3D8BCF8E2
        CDE4C0A3FFFFFFFFFFFF3B9CDBF2FAFDB2EDFAA3E9F994E6F884E2F775DEF6E6
        C5A9F3E4D6F6E0CAF5DEC5F5DEC4F8E6D3E0C1A7FFFFFFFFFFFF3AA2DBF6FCFE
        C8F2FCB8EFFBABECFA9BE8F98AE3F7A2D2D3E9CDB3F5E7DBF8ECDFF2DDC9EBD0
        B7A7B3B2FFFFFFFFFFFF3AA7DBFEFFFFF8FDFFF6FDFFF5FCFFF3FCFED8F6FC94
        E6F8A8D4D4C8C5B2E0BC9DE5C3A6E2CFB94BA8D5FFFFFFFFFFFF38ACDBE8F6FB
        93D4EF87CEEE72C0E9C9E9F6F2FCFEF3FCFEF2FCFEF0FCFEEFFBFEEEFBFEFEFF
        FF3BADDBFFFFFFFFFFFF3FADDCF1FAFD93DEF592DCF480D5F269CAED6BCBEA84
        D3EF7FD2EF79D0EF75CFEE71CFEEE9F7FB3DB1DCFFFFFFFFFFFF40B3DCF7FCFE
        8DE4F890DEF59EE0F5ABE1F6EFFBFEF4FDFEF3FCFEF1FCFEEFFBFEEEFBFEFAFD
        FF57BCE0FFFFFFFFFFFF3BB4DBFDFEFEFEFFFFFEFEFFFDFEFFFEFFFFEAF7FB6E
        C8E56EC9E46EC9E46EC9E47CCFE783D0E8BAE4F2FFFFFFFFFFFF59C1E060C2E2
        62C3E362C3E362C3E361C3E355BFE0EDF8FCF3FAFDF3FAFDF3FAFDF3FAFDF3FA
        FDFCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object btnUbah: TcxButton
      Left = 10
      Top = 358
      Width = 112
      Height = 25
      Caption = 'Ubah Data'
      TabOrder = 5
      OnClick = btnUbahClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF1842592A61884B89BD6FA8CCE3EDF5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D668493C7F990C9F940
        84C9266AADD8E6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5A08BC28D67
        BF8A65BD87634288A9E0F2FF5399D81979BD4897C43F80B598786AAA7453A872
        52A87050C5A08BFFFFFFC8916BE6E5E5E5E5E5E5E5E696B4C979B5D58FB6D154
        C9E45ADFF577D0ED4E9ADBCFD9E3E5E6E6E6E5E6A87150FFFFFFCA936DE7E7E7
        E8E7E7E7E7E7E7E7E7A3C5D774B7D6C1F6FD62DFF75CE2F878D3F04998DCE6F1
        FAE7E7E7A97252FFFFFFCC966EE9E9E9D28257D28257D28257E9E9E988ADBE76
        CBE7C7F7FD5DDCF559E1F77AD4F14B99DEC3D7E7AB7453FFFFFFD19B72ECECEC
        ECECEBECECEBECECECECEBECC2C2C294BCCA78D3EEC7F7FD5EDCF55AE2F779D6
        F24F9FE09B7D6DFFFFFFD49D74EFEEEEEFEFEFEFEEEEEFEEEEEEEFEEEEEEEEEE
        EFEFB4DEEB7CD4EEC3F6FD6BDDF66CCAED62A2D76298C9E5EFF7D59F75F1F1F0
        F1F0F1F0F1F1F1F0F1F1F1F1C2C2C2FFFFFFFFFFFFB4E6F580D6EEB1E3F98ABF
        E7ADD3F6C3E0FC6AA1D4D8A178F2F2F2D28257D28257D28257F2F2F3C2C2C2FF
        FFFFFFFFFFFFFFFFB0E6F576BDE7B3D2F0E5F3FFABD2EF5895CCD9A278F5F5F5
        F5F5F4F4F5F4F4F4F4F5F5F4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C293BCCC57A4
        D884B0DB459CD0B0D8EEDBA379F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6BC8662FFFFFFDCA67ADCA67A
        DCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA6
        7ADCA67ABF8A65FFFFFFDDAC85E8B891E8B891E8B891E8B891E8B891E8B891E8
        B891E8B891E8B891E8B891E8B891E8B891E8B891C0906FFFFFFFDAC3B6DEB391
        DCA67ADCA579DAA379D8A178D59F75D49D74D29C72CF9971CE986FCB956EC993
        6BC69D7FDAC3B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object btnHapus: TcxButton
      Left = 128
      Top = 358
      Width = 114
      Height = 25
      Caption = 'Hapus Data'
      TabOrder = 6
      OnClick = btnHapusClick
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
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object btnBatal: TcxButton
      Left = 248
      Top = 358
      Width = 89
      Height = 25
      Caption = 'Batal'
      TabOrder = 7
      OnClick = btnBatalClick
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
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object btnRefresh: TcxButton
      Left = 484
      Top = 358
      Width = 98
      Height = 25
      Caption = 'Perbaharui'
      TabOrder = 9
      OnClick = btnRefreshClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8ABB8F5D9C63FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9ACAA065AF6D60A9673C8A4336823D317A363C7F426396679EBB
        A0E5EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF72BC7B95D19E93CF9B8E
        CD9589CA9084C78A79BD8064AC6B4A915067966BCDDCCEFFFFFFFFFFFFFFFFFF
        FFFFFFA8DAAF78C3829DD7A69AD4A396D29E91CF998CCC9487CA8F79C1817DC3
        845CA36269986BE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4D9AA7AC78476C18053
        AA5D4DA256489A5062AB6A82C28A86C98E81C5884F9655A0BEA2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9DD7A47AC683FFFFFFFFFFFFFFFFFF9BC99F5AA16185C5
        8D87C98E6EB275689C6CB8D7BBB6D4B8B3D1B6B1CEB4AFCBB1FDFEFDB4E1BAFF
        FFFFFFFFFFFFFFFFFFFFFFA3CEA7539F5A47944E3F8A46468B4D5CA9634B9B53
        47944E488F4E97BD9AFFFFFFFFFFFFFFFFFFFFFFFF92B193FCFDFCBEDFC1BBDC
        BFB9D9BCB7D6BAB5D2B784C28B7FC2888CCC9482C38953985990BA94FFFFFFFF
        FFFFFFFFFF49804C739C75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB74BE7D
        97D2A093CF9B85C78C5DA66438853F337D392D7532488F4E448A497EA480FFFF
        FFFFFFFFFFFFFFFFFFFFEDF7EE8ECC9584C98D9AD4A38ECE9791CF998CCC9487
        CA8F82C58A7DC38478C07E468C4B87AB88FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
        8FCE9678C28288CA9193D09B94D19D8FCF988BCB9386C98E7FC3864D94538FB3
        91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EEB8E1BD89C89063B36B4FA5594A
        9D5244954C5FA7675AA1618CB68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AA6D8ABB8FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFABD3AFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object DtAwal: TcxDateEdit
      Left = 82
      Top = 11
      Style.HotTrack = False
      TabOrder = 0
      Width = 139
    end
    object DtAkhir: TcxDateEdit
      Left = 317
      Top = 11
      Style.HotTrack = False
      TabOrder = 1
      Width = 150
    end
    object btn1: TcxButton
      Left = 562
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Detail'
      TabOrder = 3
      OnClick = btn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7957AF7957AF7957FFFFFFDD9AD9DD
        9AD9DD9AD9FFFFFFB076FFB076FFB076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        AF7957AF7957AF7957FFFFFFDD9AD9DD9AD9DD9AD9FFFFFFB076FFB076FFB076
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7957AF7957AF7957FFFFFFDD9AD9DD
        9AD9DD9AD9FFFFFFB076FFB076FFB076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1EBD0B1EBD0B1EBD0FFFFFF6CCC4F6C
        CC4F6CCC4FFFFFFFEBAF5FEBAF5FEBAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B1EBD0B1EBD0B1EBD0FFFFFF6CCC4F6CCC4F6CCC4FFFFFFFEBAF5FEBAF5FEBAF
        5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1EBD0B1EBD0B1EBD0FFFFFF6CCC4F6C
        CC4F6CCC4FFFFFFFEBAF5FEBAF5FEBAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6EFE6A6EFE6A6EFEFFFFFF72A9FF72
        A9FF72A9FFFFFFFF66D5F066D5F066D5F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6A6EFE6A6EFE6A6EFEFFFFFF72A9FF72A9FF72A9FFFFFFFF66D5F066D5F066D5
        F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6EFE6A6EFE6A6EFEFFFFFF72A9FF72
        A9FF72A9FFFFFFFF66D5F066D5F066D5F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btn2: TcxButton
      Left = 343
      Top = 358
      Width = 135
      Height = 25
      Caption = 'Cetak Voucher'
      TabOrder = 8
      OnClick = btn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFD1BDA9D1BDA9D1BDA9D1BDA9D1BDA9D1BDA9D1BDA9D1BDA9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDA9FFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDD1BDA9FFFFFFFFFFFFFFFFFFFFFFFF909090909090
        9090903B3B3BC3B09EEBE7E3D5C8BBD5C8BBD5C8BBD5C8BBEBE7E3C3B09E3B3B
        3B8F8A838F8A838F8A83A09B95D7D7D7D7D7D74747478D8072A7A098A7A098A7
        A098A7A098A7A098A7A0988D8072474747D7D7D7D7D7D78F8A83A09B95909090
        9090904545454545454545454545454545454545454545454545454545454545
        45ECEAE950B0408F8A83A09B95D6D2CFD6D2CFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD6D2CF9090908F8A83A09B95909090
        CEC9C4BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
        BECEC9C4CEC9C48F8A83A09B95C7C1BCC7C1BC70707070707070707070707070
        7070707070707070707070707070707070C7C1BCC7C1BC8F8A83A09B95C2BBB5
        C2BBB54646464646464646464646464646464646464646464646464646464646
        46C2BBB5C2BBB58F8A83A09B95BEB7B1BEB7B12E2E2E2E2E2E2E2E2E2E2E2E2E
        2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2EBEB7B1BEB7B18F8A83A09B95BCB5AF
        BCB5AF2525252525252525252525252525252525252525252525252525252525
        25BCB5AFBCB5AF8F8A83A09B95A09B95A09B95A09B9590857BB7AA9EDECFC1DE
        CFC1DECFC1DECFC1B7AA9E90857B8F8A838F8A838F8A838F8A83FFFFFFFFFFFF
        FFFFFFFFFFFF90857BBFB6ADEEE6DFEEE6DFEEE6DFEEE6DFBFB6AD90857BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDA9F9F6F3F9F6F3F9
        F6F3F9F6F3F9F6F3F9F6F3D1BDA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD1BDA9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED1BDA9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDA9D1BDA9D1BDA9D1
        BDA9D1BDA9D1BDA9D1BDA9D1BDA9FFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlytmdxlytcntrl1Item2: TdxLayoutItem
          AlignVert = avCenter
          CaptionOptions.Text = 'Dari Tanggal'
          Control = DtAwal
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item10: TdxLayoutItem
          AlignVert = avCenter
          CaptionOptions.Text = 'Sampai Tanggal'
          Control = DtAkhir
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item3: TdxLayoutItem
          AlignVert = avCenter
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnCari
          ControlOptions.ShowBorder = False
        end
        object LCIdxlytcntrl1Item1: TdxLayoutItem
          CaptionOptions.Visible = False
          Control = btn1
          ControlOptions.ShowBorder = False
        end
      end
      object dxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxlytmdxlytcntrl1Item1: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = grid
        ControlOptions.ShowBorder = False
      end
      object dxlytcntrl1SeparatorItem2: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlytmdxlytcntrl1Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnUbah
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item5: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnHapus
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item6: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnBatal
          ControlOptions.ShowBorder = False
        end
        object LCIdxlytcntrl1Item2: TdxLayoutItem
          CaptionOptions.Visible = False
          Control = btn2
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item9: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnRefresh
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 920
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
      Width = 350
      Height = 16
      Caption = 'Menampilkan data Pengeluaran/Penyaluran Keuangan'
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
      Top = 12
      Width = 225
      Height = 23
      Alignment = taCenter
      Caption = 'DATA PENGELUARAN'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object img2: TImage
      Left = 17
      Top = 10
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000002000
        0000200806000000737A7AF4000005C5494441547801ED567B50545518FFDD7B
        F7C5F2585ECB228F4110490589515103147C8CA5E6AB319DC964A491441B46B0
        7CCD285399139549E5A022A0140ED38C839A093E9A0C1F548A890613429A242F
        85455ECBB2AFBBB7EF2E8A0AD180D4F40F77CEB97BCE77CEF9BEDFF7FBBEEFEC
        650441C0FFF930C3009E8581FDC953BD286C1AEA62BB9F90F673BD3878963EA8
        108886EB2B2FE7F9048D73B457394B45839D6DADE6DAAADF3ABC9E9BF2DAB300
        19148094794CD1EB299F383AA8543E4A4707050160F51D3AB341AF57E56C4FBA
        F87EA11083413EFD0210BD255D3D34C7A6A437A4AE98F4C3DADD5981B535159E
        ED6D0D9CABAB1B04C10A4FAFD0CEACAD896529C78D2FD09941B53E0044C37F4F
        734507202039232F42A61C69A3FF91257D5B250E6E7BA762739E76DC23D9407F
        FB0010695EB5232D52A1B4E3154AA5040C04A3DE60EEEAEC94E66C4F2EDE7020
        6F726BCB033B27672FF0BC0516630BA4723BEC7D7B6D454ABE6EE800762E7528
        897D6FD7A45FAE7C0BFFD11130E8EAA06DAAC584F085D8B721FE7C72C6E12899
        32807BD2435D6B0532362656A41CED1C3A800F97A94AD7ECDA1B26B70F78D206
        4CFA3B485BB3E2FCFA7D5F455F2DB90CB5BB23341A77228805277542C6E6F5FF
        0E03A9CB55A5F11FED09ABFAFD16FCFC7CA1543AC064680327B1C7E7EB626D00
        140E814F81EB24060E6C49BAB9ED48FBD8A7160630E99303DBE7733F257E9119
        6EEF3CB617CD9596F4C4B8E284B4CC49E565A5F66EAE4A786AD4605816AC4425
        EC599F50BAB3909F38009B4F6DB101D068D4FE6FC42D7B53D769F4E41A4B4243
        66CC93F9FBB987383A3A412E97C16A315A6BEAB43517BEFCAC7961E2D6915D06
        93CA49A5E2EC95F660591E8DF7B52D05997B8C06AF59A75986B2964C74DFB00C
        684A9D1125621181E5A46CCDDDEA221757EF33D9D9D9F536004B16BD149799FB
        F141B3C90C09C7C16834537D031CC7DA3C947012C8241232C6C26AB59232C042
        15C0F3565A67684D4A7BBB09B35A7958A8F3B4CF62213D56A15B97849822B6AC
        3467789866C7CE1E5F76BAB9CA0660D3C684D4A44DF19B0B2E7D0F4F1735342E
        1EF0F7F6A644F380CED009078592D093618685F68116672E16A1BABE86640231
        A480BFAF2FA6844E808F66840D9CF8EA329333E43ECB72F8E3EE9F686A6D466D
        633D9A75ED58327D8E1013F9EAE49B55B7AFDA00A4A77F7064DEE2994B2F945C
        C1DCC86878A8C5FF1A01750DD528AF2C87B7A73742C68492412BF2CF9E42D1E5
        6202A7C6C4B00930998C28FDF50646FAF860F1CC17E1EAEC0E435707AEDC28B1
        511FFE7C38140A47D06154DEAA44C1A573583E770192D6BDBBFA487E4136F3F2
        CAC8F043BBF79D3B5A7CCA6194971F6685C78008A6FD02F47A1D1A9B9B400187
        8BB31AA5E5D7D16ED0C34DA3A1AA90424A61B976FD1A6EDDB90D27A53DC6078D
        414458388583C5BDA6065BB846788CA0B9046038085633720B8F21243008678F
        9DCFDAB235359E993E3F6CCEB1DCC3274FFCF89D54EDE24CF194618CEF28B8B9
        B881A5AB5734227E3459E9754FAB85B6E5818D4699424E8A395C2FBB0E8E9120
        647410D42EEEF0F3F202C732D4C57C11C05B7950A6E04E5D35EE36D6C16CE6D1
        653261EE9419A6756B774431D3A22216149E3974A2B4AA9CBC50A2CB684497C1
        00854C0E5EE0292929F928F61C25904C26269B0406DA23934A21211947096AB4
        98E95A16F7B214120B19315172B2309A0D90725298791E668B054A3B39ECA476
        68D3EB101618CCCF991D1BCD44C74C8BFBE664CE41855442FE12FBFFD87A7D3F
        3E397D58697435F6A3E1E106F18C989C340D0E9E318D191F16BC68FFE1BDC779
        0B4FE542ABB4D08F863E62AAF23EB27E0536BDB697AD9C2D54F271CB56473161
        13435FC93D9A93CF1345DD97C7631504E7F1844654D1949C34E8693649CF4C1C
        F4D6211EA0F411977A3A4B3922DE392B16AD9ACE048C0E981AFBD692749E3E2C
        0610831E25431930140272D89AF5E9D72B19BAEDA472B9DCB1B7B7433130C0B3
        82D1606CB75D44033CF09F6C1B0630CCC030037F01F6088B7AE668CAB7000000
        0049454E44AE426082}
      Stretch = True
    end
  end
  object dsDonatur: TDataSource
    DataSet = spPengeluaran
    Left = 656
    Top = 205
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 112
    Top = 8
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object spPengeluaran: TADOStoredProc
    Tag = 1
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_pengeluaran'
    Parameters = <
      item
        Name = 'awal'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'akhir'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    Prepared = True
    Left = 688
    Top = 205
  end
  object cxgrdvwrpstry1: TcxGridViewRepository
    Left = 720
    Top = 205
    object gridPengeluaran: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDonatur
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Rp,0'
          Kind = skSum
          FieldName = 'total'
          Column = gcolmPengeluarantotal
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object gcolmPengeluarankode_pengeluaran: TcxGridDBColumn
        Caption = 'No Voucher'
        DataBinding.FieldName = 'kode_pengeluaran'
        Width = 357
      end
      object gcolmPengeluarantanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 286
      end
      object gcolmPengeluarantotal: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 255
      end
      object gcolmPengeluaranIdPerkiraan: TcxGridDBColumn
        DataBinding.FieldName = 'id_perkiraan'
        Visible = False
      end
    end
  end
  object spCetak: TADOStoredProc
    Tag = 1
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_cetak_voucer_pengeluaran'
    Parameters = <
      item
        Name = 'no_trans'
        DataType = ftString
        Size = 14
        Value = '20130911001003'
      end>
    Prepared = True
    Left = 272
    Top = 181
  end
  object cdsCetak: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdr1'
    Left = 240
    Top = 181
  end
  object dtstprvdr1: TDataSetProvider
    DataSet = spCetak
    Left = 304
    Top = 181
  end
  object dsCetak: TDataSource
    DataSet = cdsCetak
    Left = 336
    Top = 181
  end
  object hjrhCetak: THijriah
    TanggalHijriah = '26 Sya'#8217'ban 1317 Hijriah'
    Left = 368
    Top = 181
  end
end
