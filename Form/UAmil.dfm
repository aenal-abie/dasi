object FrmAmil: TFrmAmil
  Left = 98
  Top = 101
  Width = 1205
  Height = 482
  Caption = 'DATA AMIL'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object img1: TImage
    Left = 0
    Top = 22
    Width = 1119
    Height = 105
  end
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 53
    Width = 1197
    Height = 395
    Align = alClient
    TabOrder = 0
    TabStop = False
    object eNamaAill: TcxTextEdit
      Tag = 1
      Left = 131
      Top = 88
      Style.HotTrack = False
      TabOrder = 4
      Text = 'eNamaAill'
      Width = 187
    end
    object mAlamat: TcxMemo
      Tag = 1
      Left = 131
      Top = 250
      Lines.Strings = (
        'mAlamat')
      Style.HotTrack = False
      TabOrder = 14
      Height = 56
      Width = 250
    end
    object eTempatLahir: TcxTextEdit
      Tag = 1
      Left = 131
      Top = 115
      Style.HotTrack = False
      TabOrder = 5
      Text = 'eTempatLahir'
      Width = 152
    end
    object DtTglLahir1: TcxDateEdit
      Tag = 1
      Left = 413
      Top = 115
      Style.HotTrack = False
      TabOrder = 6
      Width = 106
    end
    object cmbJenisKelamin: TcxComboBox
      Tag = 1
      Left = 131
      Top = 142
      Properties.Items.Strings = (
        'Laki-Laki'
        'Perempuan')
      Style.HotTrack = False
      TabOrder = 7
      Text = 'cmbJenisKelamin'
      Width = 149
    end
    object eHandphone: TcxTextEdit
      Tag = 1
      Left = 131
      Top = 196
      Style.HotTrack = False
      TabOrder = 10
      Text = 'eHandphone'
      Width = 94
    end
    object eAnak: TcxTextEdit
      Left = 441
      Top = 196
      Style.HotTrack = False
      TabOrder = 11
      Text = 'eAnak'
      OnExit = eAnakExit
      OnKeyPress = eAnakKeyPress
      Width = 78
    end
    object grid1: TcxGrid
      Left = 537
      Top = 84
      Width = 584
      Height = 339
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 21
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      object gridAmil: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object gcolmKode: TcxGridDBColumn
          Caption = 'Kode Amil'
          DataBinding.FieldName = 'kode_amil'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
        end
        object cxgrdbclmnAmilnama_amil: TcxGridDBColumn
          Caption = 'Nama Amil'
          DataBinding.FieldName = 'nama_amil'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmiltempat_lahir: TcxGridDBColumn
          Caption = 'Tempat Lahir'
          DataBinding.FieldName = 'tempat_lahir'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmiltgl_lahir: TcxGridDBColumn
          Caption = 'Tanggal Lahir'
          DataBinding.FieldName = 'tgl_lahir'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmiljenis_kelamin: TcxGridDBColumn
          Caption = 'Jenis Kelamin'
          DataBinding.FieldName = 'jenis_kelamin'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmilalamat: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmilhandphone: TcxGridDBColumn
          Caption = 'Handphone'
          DataBinding.FieldName = 'handphone'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmilstatus_nikah: TcxGridDBColumn
          Caption = 'Status nikah'
          DataBinding.FieldName = 'status_nikah'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmilistri_suami: TcxGridDBColumn
          Caption = 'Suami/Istri'
          DataBinding.FieldName = 'istri_suami'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmiljumlah_anak: TcxGridDBColumn
          Caption = 'Jumlah Anak'
          DataBinding.FieldName = 'jumlah_anak'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmilpendidikan_terakhir: TcxGridDBColumn
          Caption = 'Pendidikan'
          DataBinding.FieldName = 'pendidikan_terakhir'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmAmilGelar: TcxGridDBColumn
          Caption = 'Gelar'
          DataBinding.FieldName = 'gelar'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxgrdbclmnAmilkode_kab: TcxGridDBColumn
          Caption = 'Kabupaten'
          DataBinding.FieldName = 'kode_kab'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
        end
        object cxgrdbclmnAmilkode_posisi: TcxGridDBColumn
          Caption = 'Posisi'
          DataBinding.FieldName = 'kode_posisi'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
        end
        object gcolmAmilKab: TcxGridDBColumn
          Caption = 'Kabupaten/kota'
          DataBinding.FieldName = 'nama_kab_kota'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gcolmAmilposisi: TcxGridDBColumn
          Caption = 'Struktural'
          DataBinding.FieldName = 'posisi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object gridKabupaten: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds1
        DataController.KeyFieldNames = 'kode_kab'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gcolmKabupatenkode_kab: TcxGridDBColumn
          DataBinding.FieldName = 'kode_kab'
          Visible = False
        end
        object gcolmKabupatennama_kab_kota: TcxGridDBColumn
          Caption = 'Kabupaten/Kota'
          DataBinding.FieldName = 'nama_kab_kota'
        end
      end
      object gridPosisi: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds2
        DataController.KeyFieldNames = 'kode_posisi'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gcolmPosisikode_posisi: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_posisi'
          Visible = False
          VisibleForCustomization = False
        end
        object gcolmPosisiposisi: TcxGridDBColumn
          Caption = 'Struktural'
          DataBinding.FieldName = 'posisi'
        end
      end
      object grid1Level1: TcxGridLevel
        GridView = gridAmil
      end
    end
    object eCari: TcxTextEdit
      Left = 654
      Top = 55
      Style.HotTrack = False
      TabOrder = 17
      Text = 'eCari'
      Width = 179
    end
    object btn1: TcxButton
      Left = 839
      Top = 54
      Width = 111
      Height = 24
      Caption = 'Cari Amil'
      TabOrder = 18
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFCFCFC
        FAFAFAFAFAFAFAFAFAF9F9F9F8F8F8F8F8F8F8F8F8F7F7F7F8F8F8F9F9F9F8F8
        F8F2F2F2C0C0C08A8A8BFAFAFAE4E4E4CFCFCFCBCBCBCBCBCBA3A2A3B7B7B7B6
        B6B6B5B4B5B4B3B49F9F9FC7C7C7C1C1C19D9D9D777778E2E2E2FDFDFDF4F4F4
        E8E8E8E5E5E5E5E5E5BCBCBCB7B2B5B5B0B4B1ACB0AEAAADB3B3B3DADADAA4A4
        A5868687E3E2E2FDFDFDCBCBCBA09E9FA2A0A2A7A5A6ABA9ABABAAABC3BFC2B4
        B0B39C999B9C999B8A8889938D819B9A99959292A9A398CBCAC8C8C6C74B4C4B
        5354545F605F6C6C6B787777787877828181A3A2A298979789878884775D6C69
        686E6C6C666360D0CECECCCACB191B192225233336334748465A5A5960605FA1
        A0A0A3A2A19E9D9D9493939392925B59595A57584A4848D0CDCFCFCDCE181A19
        2023212F3230414441535452686867A2A2A1A8A7A7A8A7A7A7A7A7ABABAB6867
        66565454484746D2D0D1D3D1D21819181E201E2A2D2B383B39484A47525351A1
        A1A0A6A6A5A9A9A8AFAFAFB8B8B8585756545352484747D5D3D4DCDADB181818
        1D1E1D2427252E312E3B3E3B4749476667669F9F9EA5A6A5B6B6B57676755352
        51525251494948DAD9D9DADADA1818181B1B1B1D1F1D2528252F32303E413E47
        48464E504E6162605151504E4F4D4F4F4E51504F4A4A49E1E0E0DDDCDC171717
        1819191818181E201E2528253437353C3E3C4043414345434547454749474A4B
        494D4E4C484947E2E1E2E0DEDF161616171717151515191A191E201E2C2F2D32
        3533373A383B3D3B3E403E4143414546454A4B49464746E5E4E4E3E2E2161616
        161616181717151515191A192628262C2F2C303331353735383B393C3E3C4143
        41474846454644E7E6E7E8E6E8706E70706F70737172727071706F7076757679
        79797B7A7B7C7B7C7D7C7D7D7D7D7F7E7E807F807F7D7EEBE9EAFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object btnBatal: TcxButton
      Left = 104
      Top = 11
      Width = 95
      Height = 24
      Caption = 'Batal'
      Enabled = False
      TabOrder = 1
      OnClick = btnBatalClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCFCFCF7F7F7F3F3F3F0F0F0B4B4BA6B6B875C5C7E8888
        9AE5E5E6FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD6D6D6A5A5A4A2A2A29C9B9F7F
        7F8D2B2B5F0B0B624949874A4A79252563121262B7B7BEFFFFFFFFFFFFF6F6F6
        9292929C9B98E1E0DEECECEDC4C4D145457E02025C232372C5C5D8C7C6D5A6A5
        A9525173121268E1E1E3FFFFFFC0C0C09B9B99AAA9A5EAEAE7F3F3F5B9B9CC08
        08616E6D882F2F874444A3C4C3D4B1B0B9908F8F2C2C6E7E7E9AFFFFFFC4C4C4
        A7A6A5A3A3A0B6B5B5B0AFBA78789F0707669191909696A15151BC6A6AC2A1A0
        AF8B8A90656588505086FFFFFFD6D5D58B8B899C9B98DEDDDCE7E7EBA3A3C204
        04888A8990BBBAB9D5D5DC9090DD7D7CBD80808B6262915E5E97FFFFFFD8D8D8
        999896A9A8A5E9E9E6F2F2F4BCBBD01717A2515095BEBEC3F1F1F0D4D4D99393
        DB6464A82A2A9BA4A4BCFFFFFFD6D6D5A6A6A4A1A09DAEAEADAAA9AE8F8EA454
        539B1414B960609E9A9AA9A7A7B09292A74C4CCA4F4FA6FAFAFAFFFFFFD5D5D5
        878684949390DBDBD8E9E9E9C9C8CF9696AB55549E3939C65656CF6464C95656
        CD4B4AA3D5D5DAFFFFFFFFFFFFD8D8D8959492A9A8A4E9E9E6F5F5F5D4D4D5A8
        A7AD8A8998B1B0C2CBCAE4AFAED29E9DB486858FE1E1E2FFFFFFFFFFFFD6D6D5
        A7A6A5AFAEABDEDDDADAD9D7D1D0CED1D0CFD3D2D3DBDADCE8E8E9DFDFE2BBBA
        BD929191DFDFDFFFFFFFFFFFFFD6D6D6ABAAA8B4B3AFB9B7B3C2C0BCCBC9C6D2
        D0CDD7D5D3DBD9D7DDDCDADEDDDCDDDCDBABAAA8E0E0DFFFFFFFFFFFFFDEDEDE
        A19F9BABA8A4B3B1ADBCBAB7C6C4C0CECCC9D3D1CED5D4D1D8D6D4DAD8D6DCDA
        D8D4D3D1E7E7E7FFFFFFFFFFFFF6F6F6ADABA8A7A4A0AFADA9B8B5B1BFBEBAC7
        C5C1CCCAC7CFCDCAD1D0CDD4D2D0D6D5D2CCCBC9FAFAFAFFFFFFFFFFFFFFFFFF
        F5F5F5D4D3D2BAB9B5B5B3AFB9B7B3BDBBB8C2C0BCC6C4C0CAC9C5CDCCCAD9D9
        D7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEEEEEEE7E7E6E4
        E4E3E4E4E2E7E7E6EEEEEEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object btnBaru: TcxButton
      Left = 11
      Top = 11
      Width = 87
      Height = 24
      Caption = 'Baru'
      TabOrder = 0
      OnClick = btnBaruClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1CCCCCCCCCC
        CCCCCCCCE1E1E1FFFFFFFFFFFFF5F5F5D9D9D9CCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCC56B28C009E5E009D5D009E5E53B18CE1E1E1E0E0E0C6C5C3
        B9B4ABB0AA9EAFA99DAEA89CAEA89CB0A89DBDABA24EA37B00A56700BA8577DF
        C400BA8600A66A53B18CBDB9B2B4AEA2C5BEB3D4CAC2E1D7CFE8DED6EFE4DDEE
        E1DAF6DBD800995300BF8A00BB82FFFFFF00BB8200C08C009E5EB1AB9FC8C1B6
        CFC7BFD6CCC5DCD3CAE4D9D2EBE0D9EADDD6F3D8D500965073E4CAFFFFFFFFFF
        FFFFFFFF77E5CC009C5CB0AB9EC7C0B6CDC4BBD3CAC2DAD1C8E2D7CFECE1DAE7
        DBD3F0D6D200954E00CA9400C78FFFFFFF00C88F00CC98009D5DB0AA9ECAC3B9
        EAE5DDF7F3EBFFFBF4FDFAF3FDF9F2FFFAF3FFFEFA68C49D00AB6A00D39C75ED
        D300D39E00AE7268C6A1C1BDB6F9F3EDD8D1C9C2B8B0BFB6AEC5BAB2C8BEB5C6
        BBB3C5B8B1D7BEBB47A278009B54009A56009C5B68C6A1FFFFFFBBB7AFA39A8F
        BAB2A7CAC1B8DED5CCE5DBD3ECE1DAE8DED5E1D6CED2C4BDCAB6B0BA9F9ACDBB
        B7FFFFFFFFFFFFFFFFFFB1AB9FC9C2B9CFC7BFD5CCC4DCD3CAE3D9D1EADFD8E5
        DCD3DED4CCD8CFC6D3CAC1CFC4BDBAACA2FFFFFFFFFFFFFFFFFFB0AB9EC7C0B6
        CCC4BBD3C9C1DAD0C7E1D7CFEBE1DAE4D9D1DCD1C9D5CCC2CEC6BDCAC1B9B2AB
        9FFFFFFFFFFFFFFFFFFFAFAA9DC8C1B7E8E3DBF5F0E8FDF8F2FCF8F1FBF7F0FC
        F7F1FCF8F1F6F0EAE9E2DBCAC2BAB0A99DFFFFFFFFFFFFFFFFFFAEA89CFBF5EF
        EEE7DEE0D8CEDDD5CCDDD4CBDDD4CBDDD4CBDDD5CCE0D7CEEDE6DEFBF6EFAEA8
        9CFFFFFFFFFFFFFFFFFFAFA99DE1D8CEE1D7CEDFD6CCDFD5CBDFD5CBDFD5CBDF
        D5CBDFD5CBDFD6CCE1D7CEE1D8CEAFA99DFFFFFFFFFFFFFFFFFFD0CDC5B6B0A4
        D6CFC4E6DED5EFE7DDEEE6DCEEE6DCEEE6DCEFE7DDE6DED5D6CFC4B6B0A4D0CD
        C5FFFFFFFFFFFFFFFFFFFFFFFFEFEEECC5C0B7AEA99CAEA89CAEA89CAEA89CAE
        A89CAEA89CAEA99CC5C0B7EFEEECFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object btnHapus: TcxButton
      Left = 1084
      Top = 54
      Width = 102
      Height = 24
      Caption = 'Hapus'
      TabOrder = 20
      OnClick = btnHapusClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1CCCCCCCCCC
        CCCCCCCCE1E1E1FFFFFFFFFFFFF5F5F5D9D9D9CCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCC7280CF374DCC384DCB384DCC7482CCE1E1E1E0E0E0C6C5C3
        B9B4ABB0AA9EAFA99DAEA89CAEA89CB0AA9CB9B1996C76B8324ED9375CF9375D
        FA385DF93852D77381CCBDB9B2B4AEA2C5BEB3D4CAC2E1D7CFE8DED6EFE4DDED
        E2D8F0E3CE213CCE3E62FC3B60FA3A5DF83C60FA4165FB344BCCB1AB9FC8C1B6
        CFC7BFD6CCC5DCD3CAE4D9D2EBE0D9E8DED4EEE0CA1F39CBA6B8FFFFFFFFFFFF
        FFFFFFFFA9BAFF3148CAB0AB9EC7C0B6CDC4BBD3CAC2DAD1C8E2D7CFECE1DAE7
        DBD1EBDDC91C37CA5875FE5775FE5473FD5776FE5D79FF334ACBB0AA9ECAC3B9
        EAE5DDF7F3EBFFFBF4FDFAF3FDF9F2FFFAF3FFFFF38993DD3954DE6C86FF728A
        FF6F89FF465EDD8795E1C1BDB6F9F3EDD8D1C9C2B8B0BFB6AEC5BAB2C8BEB5C6
        BCB3C4BAAFD1C5B26771BA233ED02942CE2F47CD8795E1FFFFFFBBB7AFA39A8F
        BAB2A7CAC1B8DED5CCE5DBD3ECE1DAE8DED5E1D7CED1C6BBC6BBAAB4A790C8C1
        AEFFFFFFFFFFFFFFFFFFB1AB9FC9C2B9CFC7BFD5CCC4DCD3CAE3D9D1EADFD8E5
        DCD3DED4CCD8CFC5D3CBC1CEC6BAB7B09DFFFFFFFFFFFFFFFFFFB0AB9EC7C0B6
        CCC4BBD3C9C1DAD0C7E1D7CFEBE1DAE4D9D1DCD1C9D5CCC2CEC6BDCAC1B9B1AB
        9EFFFFFFFFFFFFFFFFFFAFAA9DC8C1B7E8E3DBF5F0E8FDF8F2FCF8F1FBF7F0FC
        F7F1FCF8F1F6F0EAE9E2DBCAC2BAAFA99DFFFFFFFFFFFFFFFFFFAEA89CFBF5EF
        EEE7DEE0D8CEDDD5CCDDD4CBDDD4CBDDD4CBDDD5CCE0D7CEEDE6DEFBF6EFAEA8
        9CFFFFFFFFFFFFFFFFFFAFA99DE1D8CEE1D7CEDFD6CCDFD5CBDFD5CBDFD5CBDF
        D5CBDFD5CBDFD6CCE1D7CEE1D8CEAFA99DFFFFFFFFFFFFFFFFFFD0CDC5B6B0A4
        D6CFC4E6DED5EFE7DDEEE6DCEEE6DCEEE6DCEFE7DDE6DED5D6CFC4B6B0A4D0CD
        C5FFFFFFFFFFFFFFFFFFFFFFFFEFEEECC5C0B7AEA99CAEA89CAEA89CAEA89CAE
        A89CAEA89CAEA99CC5C0B7EFEEECFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object btnSimpan: TcxButton
      Left = 205
      Top = 11
      Width = 102
      Height = 24
      Caption = 'Simpan'
      Enabled = False
      TabOrder = 2
      OnClick = btnSimpanClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCFCFCFFFFFFFF5F5F5D9D9D9CCCCCCCCCCCCCCCCCCC19B4FB7
        8216B68114B88010B9810FB87F0EB67E0FB68013B78218BB8928E0E0E0C6C5C3
        B9B4ABB0AA9EAFAA9FAEADAAB77D09F6CC89F3C275F9FCFF8B8D91F9F9F9F4F8
        FCF2C174F6CD8BB78218BDB9B2B4AEA2C5BEB3D4CAC2E1D8D1EBE4E7B37A04F3
        CB88EBB65CF2EDED7F7978F1E9E2EEE9E9EAB55BF3CC8BB68116B1AB9FC8C1B6
        CFC7BFD6CCC5DDD5CDE8E1E3B27803F2CD90E6AD4FEACFA9FFFFFFFDFFFFE8CE
        A7E6AD4EF3CE93B68115B0AB9EC7C0B6CDC4BBD3CAC2DBD2CBE6E0E1B17701F4
        D39BE4A641E3A43AE3A133E2A132E3A43AE3A641F4D49EB68114B0AA9ECAC3B9
        EAE5DDF7F3EBFFFCF7FFFFFFB17700F5D7A9E19E2FE7CAA1EBE2E0EBE2E0E7CA
        A1E19E2FF6D9ADB68014C1BDB6F9F3EDD8D1C9C2B8B0C0B7B0C7C1C2B27700F8
        E0B9DD9419EEE9E9EFE6DEEFE6DEEEE9E9DD9419F8E2BCB68012BBB7AFA39A8F
        BAB2A7CAC1B8DED6CFE8E2E3B27700FAE9CEDA8802F0EEECB2ADA7B2ADA7F0EE
        ECDA8802FBEAD1B67F12B1AB9FC9C2B9CFC7BFD5CCC4DDD5CDE7E0E1B17600FD
        E8C7FBE4C1FFFFFFFFFFFFFFFFFFFFFFFFFCE6C4FFECCEB78114B0AB9EC7C0B6
        CCC4BBD3C9C1DAD1C9E4DCD9C9A155B07400B07300B07200B17300B37500B579
        00B67D0AB78113BD8D29AFAA9DC8C1B7E8E3DBF5F0E8FDF9F3FDF9F4FEFCFBFF
        FEFFFFFFFFF8F6F8EBE7E8C9C7C7AEAEAFFFFFFFFFFFFFFFFFFFAEA89CFBF5EF
        EEE7DEE0D8CEDDD5CCDDD5CCDDD5CDDDD5CEDDD6CEE0D9D1EEE8E0FBF7F2AEAA
        A3FFFFFFFFFFFFFFFFFFAFA99DE1D8CEE1D7CEDFD6CCDFD5CBDFD5CBDFD5CBDF
        D5CBDFD5CBDFD6CCE1D7CEE1D8CEAFAA9EFFFFFFFFFFFFFFFFFFD0CDC5B6B0A4
        D6CFC4E6DED5EFE7DDEEE6DCEEE6DCEEE6DCEFE7DDE6DED5D6CFC4B6B0A4D0CD
        C5FFFFFFFFFFFFFFFFFFFFFFFFEFEEECC5C0B7AEA99CAEA89CAEA89CAEA89CAE
        A89CAEA89CAEA99CC5C0B7EFEEECFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object cmbPendidikan: TcxComboBox
      Tag = 1
      Left = 131
      Top = 223
      Properties.Items.Strings = (
        'SD'
        'SMP'
        'SMA'
        'S1'
        'S2')
      Style.HotTrack = False
      TabOrder = 12
      Text = 'cmbPendidikan'
      Width = 110
    end
    object eSuamiIstri: TcxTextEdit
      Left = 131
      Top = 169
      Style.HotTrack = False
      TabOrder = 9
      Text = 'eSuamiIstri'
      Width = 214
    end
    object cmbStatusNikah: TcxComboBox
      Tag = 1
      Left = 364
      Top = 142
      Properties.Items.Strings = (
        'Menikah'
        'Belum Menikah')
      Style.HotTrack = False
      TabOrder = 8
      Text = 'cmbStatusNikah'
      Width = 155
    end
    object btnUbah: TcxButton
      Left = 987
      Top = 54
      Width = 91
      Height = 24
      Caption = 'Ubah'
      TabOrder = 19
      OnClick = btnUbahClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFDFBFBFCFBFBFBFDFDFDFFFFFFDC9C63F3C264DFA7
        7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDADADAB7B6B6B5B4B4A9A6A5A8
        A4A3B6B5B4B6B5B5CE7523EEA924D18147FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8
        807D7D75706EC4C3C2DAD8D8CACBCACAC9C8D7D6D5C6C6C6CF7823EEA924D182
        47FFFFFFFFFFFFFFFFFFE4E4E48A8988A8A7A6A1A19F89868791908F8D89888C
        8B889392908C8B89D07722EEA924D18247D9D9D9FFFFFFFFFFFF939391B7B6B5
        6C6A686E6A69CACAC9E1E1E0CAC9C8CF7722CF7722CF7723CF7722EEA924D182
        47D18247D18147CC72229F9D9C9A9897A4A3A2A6A4A38E8D8C90918E8C89878B
        8887CF7722FFC32CFFC42CEEA924DD8F31DD9031CC7222FFFFFFABA9A8B1B0AF
        726F6E666461B5B3B0C4C3C2B2B1B2B2B1B0C0BFBECF7722FFC42CEEA923DD90
        31CC7121FFFFFFFFFFFFABAAA7908D8B888685A1A09FB1B0AFAEACAAB9B9B7BC
        BDB9B2B1B0B2B1B0CF7722EEA923CC7121B1B0AFFFFFFFFFFFFF9F9E9DA19F9E
        9F9E9CB2B1B1BBB9B7BFBEBCC2C0BDC3C2BEC3C2BFC2C0BEBDBCB9CF77229C9B
        9BAAA8A7FFFFFFFFFFFFA7A6A5959391A6A4A2A7A6A3AAA8A7ACABAAAFAEACB0
        AFACB0AFACAEACACABABA9AFAEAB9B9898ACACAAFFFFFFFFFFFF999796ABAAA8
        A7A6A4AAA9A7AEACABB0AFAEB2B1AFB2B2B0B2B1AFB0B0AEAFAEABACABA9B2B1
        AEA1A09FFFFFFFFFFFFFA09E9DC2C0BDB6B5B3B8B7B6BBB9B8BDBCB9BEBDBBBE
        BDBCBEBDBBBDBCBBBCBBB8BBB9B7C4C3BFB0AFAEFFFFFFFFFFFFC2C2C0C8C8C6
        CBCAC9C9C6C5CAC9C8CBCAC9CBCBCACCCBCACBCBCACBCAC9CAC9C8CBCACBCFCE
        CCBCBBBAFFFFFFFFFFFFF9F9F9C6C6C4DEDDDCE3E3E2E0E0DEDEDEDDE0DDDEE0
        E0DEE0DEDEE1E0E0E4E3E3E3E2E2C6C6C5F4F3F3FFFFFFFFFFFFFFFFFFF9F9F9
        E0E0DFE7E7E6F7F7F7FCFCFCFDFDFDFDFDFDFCFCFCF8F8F8E9E8E8DEDDDDF6F6
        F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F8EFEFEFEBEBEBE3E3E3E2
        E2E2EAEAEAEEEEEEF7F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
    object eGelar: TcxTextEdit
      Left = 437
      Top = 223
      Style.HotTrack = False
      TabOrder = 13
      Text = 'eGelar'
      Width = 82
    end
    object cbbKabupaten: TcxExtLookupComboBox
      Tag = 1
      Left = 131
      Top = 312
      Properties.View = gridKabupaten
      Properties.KeyFieldNames = 'kode_kab'
      Properties.ListFieldItem = gcolmKabupatennama_kab_kota
      Style.HotTrack = False
      TabOrder = 15
      Width = 138
    end
    object cbbStruktural: TcxExtLookupComboBox
      Tag = 1
      Left = 131
      Top = 339
      Properties.View = gridPosisi
      Properties.KeyFieldNames = 'kode_posisi'
      Properties.ListFieldItem = gcolmPosisiposisi
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object btnRefresh: TcxButton
      Left = 313
      Top = 11
      Width = 98
      Height = 25
      Hint = 'Perbaharui Isi Data'
      Caption = 'Perbaharui'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytgrpdxlytcntrl1Group9: TdxLayoutGroup
        AlignHorz = ahLeft
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlytmdxlytcntrl1Item17: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnBaru
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item16: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Enabled = False
          Control = btnBatal
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item19: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Enabled = False
          Control = btnSimpan
          ControlOptions.ShowBorder = False
        end
        object LCIdxlytcntrl1Item1: TdxLayoutItem
          CaptionOptions.Visible = False
          Control = btnRefresh
          ControlOptions.ShowBorder = False
        end
      end
      object dxlytcntrl1SeparatorItem2: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxlytgrpdxlytcntrl1Group8: TdxLayoutGroup
        AlignVert = avClient
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Data Diri'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          object dxlytcntrl1LabeledItem1: TdxLayoutLabeledItem
            CaptionOptions.Text = 'Masukan Data Amil'
            CaptionOptions.Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFBF4D15D38B70FFFFFFFFFFFFBF4D15D38B70FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC35817CC703AD28A6CFFFFFFC3
              5817CC703AD28A6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFC96119DFA274CF733BD48B6AC96119DFA274CF733BD48B6AFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD6D22E1A77DE0A578D0763CCD
              6D22E1A77DE0A578D0763CD38A65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD27634E4AE86DFA071E1A87BD27634E4AE86DFA071E1A87BD0793ED48A
              63FEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD68342E7B48FE0A273E0A376D6
              8342E7B48FE0A273E0A376E2AA80D37E42D68A5DFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFDB8D52EABA98E3A97FE3AA80DB8D52EABA98E3A97FE3AA80E4B089D687
              4ACC7333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE19661ECC0A0E8B691E9BA98E1
              9661ECC0A0E8B691E9BA98DD9660DFA477FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFE29F6DEEC7A7EDC1A2E3A374E29F6DEEC7A7EDC1A2E3A374E6B28CFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6A678EFC8ACE8AF86ECC3A6E6
              A678EFC8ACE8AF86ECC3A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEAAA7FE8A87CF0CDB5FFFFFFEAAA7FE8A87CF0CDB5FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE85F3D1BAFFFFFFFFFFFFE9
              AE85F3D1BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object dxlytcntrl1SeparatorItem3: TdxLayoutSeparatorItem
            CaptionOptions.Text = 'Separator'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = False
            SizeOptions.SizableVert = False
          end
          object dxlytmdxlytcntrl1Item2: TdxLayoutItem
            CaptionOptions.Text = 'Nama Amil'
            Control = eNamaAill
            ControlOptions.ShowBorder = False
          end
          object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmdxlytcntrl1Item7: TdxLayoutItem
              AlignHorz = ahClient
              CaptionOptions.Text = 'Tempat Lahir'
              Control = eTempatLahir
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl1Item8: TdxLayoutItem
              CaptionOptions.Text = 'Tanggal Lahir'
              CaptionOptions.Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D59C73D19567CE9162CB8D5DC9895AC7
                8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD7A074
                F8F2EDF7F0EAF6EDE6F4EAE2F3E7DEF1E4DBF0E2D8F0E2D8F0E2D8F0E2D8F0E2
                D8F0E2D8C48A5DFFFFFFFFFFFFD9A379F9F3EEEBD0BBE7C0A3E7BEA0E6BD9EE6
                BA99E3B794E1B48EDEAF88DCAA82D9AD88F0E2D8C58B5EFFFFFFFFFFFFDDA77D
                F9F3EFEBD0B9FFFFFFFEFEFEFEFFFEFEFFFEFFFFFFFEFEFEFFFFFFFFFFFFDBAF
                8BF0E2D8C5895BFFFFFFFFFFFFDFA981F9F3EFEACEB6FFFFFFBFDDC261AA68A0
                CDA4AAD2AE67AD6DAAD2AEFFFFFFDDB390F0E2D8C88C5EFFFFFFFFFFFFE1AD86
                FAF4F0EACBB1FFFFFFFFFFFF61AA68D5E9D78BC090FFFFFF61AA68FFFFFFDFB7
                95F0E2D8C38553FFFFFFFFFFFFE3B08BFAF6F1EAC9ADFFFFFFFFFFFF61AA68D5
                E9D795C79AF9FCF96BB072FFFFFFE1BC9CF0E2D8C58554FFFFFFFFFFFFE5B38E
                FAF6F2E9C5A9FFFFFFAAD2AE6BB072D5E9D7AAD2AE64AC6BAAD2AEFFFFFFE4C0
                A3F2E7DEC88958FFFFFFFFFFFFE7B693FBF7F4E9C2A5FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5C5AAF7F1EBCB8E5EFFFFFFFFFFFFE9B997
                FBF7F464A3FF63A2FF61A1FF60A0FF5E9EFF5B9CFF5999FF5697FF5394FF5193
                FFFBF7F4CE9263FFFFFFFFFFFFEBBC9AFBF7F463A3FF78BCFF74BAFF70B8FF6C
                B7FF67B2FF60AFFF59AAFF53A6FF3A7CFFFBF7F4D19669FFFFFFFFFFFFECBE9D
                FBF7F464A3FF63A2FF5F9FFF5C9DFF5798FF5395FF4C8FFF468AFF4183FF3C7E
                FFFBF7F4D49A6EFFFFFFFFFFFFEFC5A7FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FB
                F7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4D8A277FFFFFFFFFFFFF7E0D1
                F1C7ABEDBF9EEBBD9CEBBB99E9B995E7B692E6B48FE4B18BE2AE87E0AB83DDA8
                7FDCA47CE2B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              Control = DtTglLahir1
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmdxlytcntrl1Item9: TdxLayoutItem
              CaptionOptions.Text = 'Jenis Kelamin'
              Control = cmbJenisKelamin
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl1Item12: TdxLayoutItem
              AlignHorz = ahClient
              CaptionOptions.Text = 'Status Nikah'
              Control = cmbStatusNikah
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytmdxlytcntrl1Item14: TdxLayoutItem
            CaptionOptions.Text = 'Nama Suami/Istri'
            Control = eSuamiIstri
            ControlOptions.ShowBorder = False
          end
          object dxlytgrpdxlytcntrl1Group6: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmdxlytcntrl1Item10: TdxLayoutItem
              AlignHorz = ahClient
              CaptionOptions.Text = 'Handphone'
              Control = eHandphone
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl1Item13: TdxLayoutItem
              CaptionOptions.Text = 'Jumlah Anak'
              Control = eAnak
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmdxlytcntrl1Item20: TdxLayoutItem
              AlignHorz = ahClient
              CaptionOptions.Text = 'Pendidikan Terakhir'
              Control = cmbPendidikan
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl1Item21: TdxLayoutItem
              CaptionOptions.Text = 'Gelar'
              Control = eGelar
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytmdxlytcntrl1Item3: TdxLayoutItem
            CaptionOptions.Text = 'Alamat Amil'
            CaptionOptions.AlignVert = tavTop
            Control = mAlamat
            ControlOptions.ShowBorder = False
          end
          object dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytgrpdxlytcntrl1Group12: TdxLayoutGroup
              AlignHorz = ahClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              object dxlytmdxlytcntrl1Item15: TdxLayoutItem
                AlignHorz = ahClient
                CaptionOptions.Text = 'Kabupaten'
                Control = cbbKabupaten
                ControlOptions.ShowBorder = False
              end
              object dxlytmdxlytcntrl1Item22: TdxLayoutItem
                CaptionOptions.Text = 'Struktural'
                Control = cbbStruktural
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object dxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem
          CaptionOptions.Text = 'Separator'
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
        end
        object dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          object dxlytgrpdxlytcntrl1Group10: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytgrpdxlytcntrl1Group11: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmdxlytcntrl1Item4: TdxLayoutItem
                AlignHorz = ahRight
                AlignVert = avCenter
                CaptionOptions.Text = 'Cari Nama Amil'
                CaptionOptions.Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3833
                  38332F322E2A2B28242623201F1C1AE7E7E73331300B0A090707060404030000
                  00000000FFFFFFFFFFFFFFFFFF45403A84796FC2B7AD7B71677E746A35312CF2
                  F2F14B494694887CB9ADA17B71677E746A010101FFFFFFFFFFFFFFFFFF4C4640
                  82776ECCC2B9776E647A7066332F2CFEFEFE2B292694887CC1B7AC776E647B71
                  67060505FFFFFFFFFFFFFFFFFF544D4782776ECCC2B9786F6570675E575450FF
                  FFFF48464484796FC1B7AC776E647A70660D0C0BFFFFFFFFFFFFFFFFFF807A75
                  9E9185CCC2B9BFB3A9A5978A7F7C79FFFFFF73716F8F8378C1B7ACBFB3A9A79A
                  8D494747FFFFFFFFFFFFFCFCFC5F5851413C375750493C3732322E2A393633D3
                  D3D35F5D5B19171524211F1816140F0E0D121212FDFDFDFFFFFFFDFDFD9C9084
                  B0A2957E746A7B7167766C636B625A2D2925554E477F756B7B7167766C636F66
                  5D010101FAFAFAFFFFFFFEFDFDB8ABA0B9ADA181766C81766CA9907AB9A693B7
                  A58FAF96809E8C7C826C5A70625694887C232322FCFCFCFFFFFFFDFCFCDDDAD7
                  9A8D819C9084857A70554E474F49437F756B6D655C816B57A5907C938373554E
                  478B8A8AFEFEFEFFFFFFFFFFFFFFFFFF736A61A3968994887C9E91853D3833FF
                  FFFF4B453F7D736984796F3D383385817DF5F5F4FDFDFDFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF9A9086C2B7AD645C54FFFFFF7B7167A79A8DA69A8FFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA69B90BBAFA39C9084FF
                  FFFFAD9F929C90847A746DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                Control = eCari
                ControlOptions.ShowBorder = False
              end
              object dxlytmdxlytcntrl1Item5: TdxLayoutItem
                AlignHorz = ahRight
                CaptionOptions.Visible = False
                Control = btn1
                ControlOptions.ShowBorder = False
              end
            end
            object dxlytmdxlytcntrl1Item11: TdxLayoutItem
              AlignHorz = ahRight
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnUbah
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl1Item18: TdxLayoutItem
              AlignHorz = ahRight
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnHapus
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytmdxlytcntrl1Item1: TdxLayoutItem
            AlignHorz = ahClient
            AlignVert = avClient
            Control = grid1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1197
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 1197
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
      Width = 192
      Height = 16
      Caption = 'Masukan Data Amil DASI NTB'
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
      Width = 121
      Height = 23
      Alignment = taCenter
      Caption = 'DATA AMIL'
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
        0AFC00000AFC0199DBBBEF000012C949444154785EDDDC07AC5EE57DC77107B7
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
  object qryAmil: TADOQuery
    AutoCalcFields = False
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'call sp_view_amil()')
    Left = 679
    Top = 227
  end
  object ds: TDataSource
    DataSet = qryAmil
    Left = 715
    Top = 229
  end
  object qryKabupaten: TADOQuery
    AutoCalcFields = False
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'call sp_view_kabupaten')
    Left = 679
    Top = 259
  end
  object ds1: TDataSource
    DataSet = qryKabupaten
    Left = 715
    Top = 261
  end
  object qryPosisi: TADOQuery
    AutoCalcFields = False
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'call sp_view_posisi')
    Left = 679
    Top = 291
  end
  object ds2: TDataSource
    DataSet = qryPosisi
    Left = 715
    Top = 293
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
end
