object frmSaldoAwalMitra: TfrmSaldoAwalMitra
  Left = 268
  Top = 74
  Width = 967
  Height = 538
  Caption = 'SALDO AWAL'
  Color = clBtnFace
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 49
    Width = 959
    Height = 455
    Align = alClient
    TabOrder = 0
    TabStop = False
    object btnSimpan: TcxButton
      Left = 193
      Top = 92
      Width = 80
      Height = 23
      Caption = 'Simpan'
      Enabled = False
      TabOrder = 7
      OnClick = btnSimpanClick
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
    end
    object btnBatal: TcxButton
      Left = 367
      Top = 92
      Width = 69
      Height = 23
      Caption = 'Batal'
      Enabled = False
      TabOrder = 9
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
    end
    object grid: TcxGrid
      Left = 11
      Top = 123
      Width = 395
      Height = 204
      TabOrder = 10
      object gridPenyimpanan: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsAmil
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'saldo_awal'
            Column = gcolmPenyimpanantanggal
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object gcolmPenyimpananid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object gcolmPenyimpanantanggal: TcxGridDBColumn
          Caption = 'Tanggal Saldo'
          DataBinding.FieldName = 'tanggal'
        end
        object gcolmPenyimpanankode_donatur: TcxGridDBColumn
          Caption = 'Kode Donatur'
          DataBinding.FieldName = 'kode_donatur'
        end
        object gcolmPenyimpanannama_lengkap: TcxGridDBColumn
          Caption = 'Nama Donatur'
          DataBinding.FieldName = 'nama_lengkap'
        end
        object gcolmPenyimpanansaldo: TcxGridDBColumn
          Caption = 'Saldo Awal Donatur'
          DataBinding.FieldName = 'saldo'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
      end
      object cxgrdlvl: TcxGridLevel
        GridView = gridPenyimpanan
      end
    end
    object eCrSaldo: TcxCurrencyEdit
      Left = 100
      Top = 65
      EditValue = 0.000000000000000000
      TabOrder = 2
      Width = 175
    end
    object btn2: TcxButton
      Left = 11
      Top = 92
      Width = 95
      Height = 23
      Caption = 'Lihat Data'
      TabOrder = 5
      OnClick = btn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFBD2D2D231302D080908ADADADF8F8F8FAFAFAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE1E1E12C28236E52333A
        2B1B454545E3E3E3FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4F4F4413F3C8966409A724784623D1B140C767676F2F2F2FCFCFCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBA7A7A74F3A24AA7E4FA3794C9C
        7449584129101010E8E8E8F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EEEEEE383026B48A5DB08557B08455AA7E4F8F6A421B140C9F9F9FFAFAFAFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFF9F9F95E5E5D9B7348B79066C2A17DDFCDBAC9
        AC8CA97D4E513C26242424E3E3E3FCFCFCFFFFFFFFFFFFFFFFFFFEFEFED8D8D8
        493926C09D77B68E63423221070707D1B89EB68E638D69420E0C08C3C3C3FBFB
        FBFDFDFDFFFFFFFFFFFFF5F5F543413CC19F7ABF9C76493724A8A8A7B0B0B042
        3221D7C1AAAF83543D2D1C3C3C3CE3E3E3FDFDFDFFFFFFFFFFFF9D9D9DB18658
        DBC7B2513D28939392F0F0F0FDFDFD929292AD8050BD997281603C0B0C0BC2C2
        C2FCFCFCFEFEFEFFFFFF493E31ECE2D74A3927A3A3A3F3F3F3FEFEFEFFFFFFDC
        DCDC6A6A68CEB397B3895C281E13565656EFEFEFFDFDFDFFFFFF8D6C473B352C
        CFCFCFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFF9F9F9F85633ED1B89E85633E1616
        15BEBEBEF8F8F8FFFFFFF6F6F6FBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFDFD686867CCB193B992684B38234B4B49EEEEEEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE715B40C8AA89A57A
        4C373430B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF7C7C7CAF8557CCB1936F53344A4A4AFAFAF9FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC897054C2A4
        81CFC5AF544C40F7F6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBFBFBF666666434343D2D2D2F4F2EF}
    end
    object cbbPeriode: TcxExtLookupComboBox
      Tag = 1
      Left = 100
      Top = 11
      Properties.DropDownWidth = 400
      Properties.View = gridPeriode
      Properties.KeyFieldNames = 'tgl_mulai'
      Properties.ListFieldItem = gcolmPeriodetgl_mulai
      Style.HotTrack = False
      TabOrder = 0
      Width = 257
    end
    object btnTambah: TcxButton
      Left = 112
      Top = 92
      Width = 75
      Height = 24
      Caption = 'Baru'
      TabOrder = 6
      OnClick = btnTambahClick
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
    end
    object btnHapus: TcxButton
      Left = 279
      Top = 92
      Width = 82
      Height = 25
      Caption = 'Hapus'
      TabOrder = 8
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
    end
    object eDonatur: TcxButtonEdit
      Tag = 1
      Left = 100
      Top = 38
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = eDonaturPropertiesButtonClick
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 1
      Text = 'Nama Donatur'
      Width = 255
    end
    object eNamaDonatur: TcxTextEdit
      Left = 455
      Top = 13
      Style.HotTrack = False
      TabOrder = 3
      Text = 'Masukan Nama'
      Width = 205
    end
    object btnCari: TcxButton
      Left = 666
      Top = 11
      Width = 127
      Height = 25
      Caption = 'Cari Donatur'
      TabOrder = 4
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
    end
    object spePage: TcxSpinEdit
      Tag = 1
      Left = 882
      Top = 423
      Properties.Alignment.Horz = taCenter
      Properties.MinValue = 1.000000000000000000
      Properties.SpinButtons.Position = sbpHorzLeftRight
      Properties.OnChange = spePagePropertiesChange
      Style.HotTrack = False
      TabOrder = 12
      Value = 1
      Width = 66
    end
    object spePage1: TcxSpinEdit
      Tag = 1
      Left = 750
      Top = 423
      Properties.Alignment.Horz = taCenter
      Properties.LargeIncrement = 5.000000000000000000
      Properties.MinValue = 20.000000000000000000
      Properties.SpinButtons.Position = sbpHorzLeftRight
      Style.HotTrack = False
      TabOrder = 11
      Value = 20
      Width = 68
    end
    object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
        AlignHorz = ahClient
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytgrpdxlytcntrl1Group9: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup
            AlignHorz = ahLeft
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxlytgrpdxlytcntrl1Group6: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup
                AlignHorz = ahClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                object LCIdxlytcntrl1Item3: TdxLayoutItem
                  CaptionOptions.Text = 'Periode Saldo'
                  Control = cbbPeriode
                  ControlOptions.ShowBorder = False
                end
                object LCIdxlytcntrl1Item2: TdxLayoutItem
                  CaptionOptions.Text = 'Nama Donatur'
                  Control = eDonatur
                  ControlOptions.ShowBorder = False
                end
                object dxlytmdxlytcntrl1Item1: TdxLayoutItem
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Saldo'
                  Control = eCrSaldo
                  ControlOptions.ShowBorder = False
                end
              end
              object batasdxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem
                CaptionOptions.Text = 'Separator'
                SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                SizeOptions.SizableHorz = False
                SizeOptions.SizableVert = False
              end
              object dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object LCIdxlytcntrl1Item6: TdxLayoutItem
                  AlignVert = avCenter
                  CaptionOptions.Text = 'Cari Donatur'
                  Control = eNamaDonatur
                  ControlOptions.ShowBorder = False
                end
                object LCIdxlytcntrl1Item8: TdxLayoutItem
                  AlignHorz = ahRight
                  CaptionOptions.Visible = False
                  Control = btnCari
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object LCIdxlytcntrl1Item7: TdxLayoutItem
            CaptionOptions.Visible = False
            Control = btn2
            ControlOptions.ShowBorder = False
          end
          object LCIdxlytcntrl1Item4: TdxLayoutItem
            CaptionOptions.Visible = False
            Control = btnTambah
            ControlOptions.ShowBorder = False
          end
          object dxlytmdxlytcntrl1Item6: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Enabled = False
            Control = btnSimpan
            ControlOptions.ShowBorder = False
          end
          object LCIdxlytcntrl1Item5: TdxLayoutItem
            CaptionOptions.Visible = False
            Control = btnHapus
            ControlOptions.ShowBorder = False
          end
          object dxlytmdxlytcntrl1Item7: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Enabled = False
            Control = btnBatal
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlytmdxlytcntrl1Item8: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = grid
        ControlOptions.ShowBorder = False
      end
      object dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup
        AlignHorz = ahRight
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object LCIdxlytcntrl1Item10: TdxLayoutItem
          CaptionOptions.Text = 'Setiap Page'
          Control = spePage1
          ControlOptions.ShowBorder = False
        end
        object LCIdxlytcntrl1Item9: TdxLayoutItem
          CaptionOptions.Text = 'Page Ke-'
          Control = spePage
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 959
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 959
      Height = 48
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
      Left = 55
      Top = 33
      Width = 181
      Height = 14
      Caption = 'Manajemen Saldo Awal Mitra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 55
      Top = 13
      Width = 126
      Height = 20
      Alignment = taCenter
      Caption = 'SALDO AWAL'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object img2: TImage
      Left = 8
      Top = 4
      Width = 48
      Height = 48
      AutoSize = True
      Center = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000003000
        00003008060000005702F9870000000473424954080808087C08648800000009
        70485973000000C8000000C80114FDD73B0000001974455874536F6674776172
        65007777772E696E6B73636170652E6F72679BEE3C1A0000000B744558745469
        746C65006D6F6E65798DC15AA90000001374455874417574686F720042656174
        65204B61737061720EC347440000007C744558744465736372697074696F6E00
        646572697665642066726F6D203C687474703A2F2F7765626376732E66726565
        6465736B746F702E6F72672F74616E676F2F74616E676F2D69636F6E2D746865
        6D652F7363616C61626C652F617070732F707265666572656E6365732D646573
        6B746F702D6C6F63616C652E7376673E75559DA1000000177445587443726561
        74696F6E2054696D65004A756C7920323030382C7B42EE000000527445587443
        6F70797269676874004343204174747269627574696F6E2D5368617265416C69
        6B6520687474703A2F2F6372656174697665636F6D6D6F6E732E6F72672F6C69
        63656E7365732F62792D73612F332E302F5E835ABC00000F27494441547801ED
        5979905CC579FF75F73BE6D8DDD943BBBA56123AD6410261708AE0726C8C8180
        B06327D8E6880D2681243E2028409C284791504570CAC1E68F54B95CAEF21FD8
        D82952651C3009028A026C0C7680588AD1C5EAD69EDADD999D99F7E6DDDDF9BD
        59B148C15B202C39459557D37ADDFDFABDF97EDFFD7D238C317827FF895F03F8
        7F16DF8212F88E10E75B2EAE922ECE52AEBBDAEEE8ECB57A3B6CA194C98228CB
        C238CBA2A065A2B86EB4AE1B889A49C5B48EB2A9A4951E14C0817C78C0913F35
        26395D384F00F05D21D62889CF0AD7B9BE77FD6061D907567697D77689C25203
        BB3F86EC0EA12A3604FA00D10793F44067DD307189730759241057EB0846A6D2
        C6FEF15673F848EAED1F11D15435CD627F8A0FEED771B623ADC73B3260D4066A
        1AA8D20A6B0EE0136597042A2987C5FD6B8D39F266C04F00F0A0105B07CF5BF7
        3B4BCE5D2CA53D05A346217B7C588B01C5612DE17511F99A95617409C848F8B1
        2B7835BA0B427473F441C81E5ECB806520A546D20A104E4D23181F877F84423A
        34DD0AA79A5938E5E9A8DA9226CA842C42DB5D3069A00BD151F3B5AB67CD5F9D
        2C8027377CE89C4BAD741F64973F4FF45B064040399079609A7C9511C14400AF
        10BCAA1492033284112125D922D0D6DCFD6367269E6861C73F255FB97AC6FCC5
        DB0390ED87ECF44E0300124C2205471B507E25284130C7AF7F0DC0CA0E5002CD
        77A8042EDA78A9A50F9E1480342DA219DB705046D1D090F531237F830DFC2A54
        E84D000415819F4E17B1ADE1A245CF23AD2E949C0A2AE53E68FAC4280E11A731
        D234449206F45674BF3A82230C3AA442BFE560B163A3DF95585410A8D819BDD4
        1CB0B61DD0267E391BC8019843901D8D135468FB22851F5A05A4EE20CE587936
        0616AD80B16368C4480C89D5212CE1C0162538B204579421B9369946966548B2
        1841DC4423ACA2E94DC3F76AF038FCC06F83ECB40D16BBC012D7C0DA1361FF53
        FAFB2FFF9EF88A48652D8348247445330A49A52B90D64F1EBED11FCB3DD4FF8D
        034F6E5800C0DF568AB8E4A2EBA05D0FCD74127E5685E1BFB90F67EDA4F0C42B
        0314C07DEEF218579C2B6143C185120C558C6CDA686893A2157AF05B1EE23043
        1AA6485B3A4984F6B2D86479BE269590D2122AF4123BF6CD271EFE6CB8754100
        360E4394EB2748E0EFBA8BB862D30D3818FED73C51ABA7FA501C890072D1151A
        05C58482C46891214A52443A832E48042B6DECE99D03D0064320F997E784E5EB
        7990AFEDE770DB73DE3DEECA3760729FDFAC4FC4579F120057B4FE00AB179D07
        5B39D0CD6164B56D8C5533947004CB4DA1EC00D2D4B1ADDAC423033410124392
        486F4E4ACE87F62A9FE424BFBE9FAF7896378EEDF11CD7F953BF14804D9B3E83
        43E18B7C2F5FC82F79DFA173D19975C166AA2091D20662DA40842C69224BBDF6
        48750BF5428CA7CEC0FC7339E7B96A1397BF8913BE8D3312D9DECF57EDF96B7B
        73D73705F0AF423C75F6451B2FB6C51188D2EC1B5468D3A6EB09E0A579422EAE
        5D8933975D004B092673E310F1113A9269A60E3E393F0BA1EB907A16DB6B3E1E
        EE4FE79F3B2D008410EA01E0A9732EDAF8C1B70AE08387DE838AE9A404243D49
        0061A8328860327A96B4C5BD16BD5480AAE3E389554C02C955F2920CCF7999E3
        69AFF249CEF3D7F7F315CFF2C6B13D9EE33A7F6A41152280E2B780C7CFFDD039
        1F681BF12F90C0E5975F87C3D1CB7C2F5FC82FB9AC792DD60E6C8445A291325B
        CEA620B39CF3B36DCE0B723F97C0B69A8747FA4FB30D1040F97EE0B1F37200B9
        0A156B504B24DCD5BDB09777628B9AC2A6CB3F75820A5D7AE0DDE8891C584EB1
        ADF71A0C5C2281A2FE4BFA7CE87CDDC24C67864757C979E0A74B854ADF02B6E6
        1228AF2CB4898EED02E288BE398ED37B37EC501FFEDD6BC4F112B870EC324AE0
        6C144BA2CD7199EBFC7112D0691DB15FC3CF679B54212A405B0D283D5EDBC6CA
        2B576F0446E9CE81E45D9EE181B62AF10D0BBB514AC0FE36F0E4CA35FD17FA4A
        36EB63353474BC733CC6FF4C67A88E7FA3F8679FF8D875E5E3017C72EC4294A2
        32524A204DA7598930B891EBC85A50594049345160949E618DF5E020BF9EC4B4
        A6243ABB3A9038B36DA2C2AA0D8B159DDDEF23CDEB03228B23D66B4C3D2C9BCE
        81CFBC25007C0EF70B715F26D1BD5363EBD7815D3E0B30EE0B0E75E5374B8F5F
        F5914FF71C0FE0B70FBF0F03A54138549B5249A25CD42CC01AD0710D41731A51
        5843AC9B3898787866A544E3B0C0F47813EBCF5A8BA03486C6B8811B0C2071AB
        70A23EC855A3A84F2470FCC5C873AACA12C697CA34BF7E4E1264C1C212E0A9F6
        470826334069F3C7362EBDE482D24DB693AC744BB23C5B0E2E5EDCD3694519FD
        3BB9134B8325C919E8EF5987BEB5EF87571D46ABB69BC43760C9946062149D00
        0E3DD07EBAD9EF14191BA6CBA8D51A185C3A88A03C8AF19FA7583DB41CBE338A
        A9576C0CAC07C65E09B07AFD3254A311888965B0D78C93AED7014CECF5BD9903
        F1A7FEF3B6F007BC41CFD716513E7D7D10849A7CE9BE5B9DC1B3BF6A43434655
        44D32F408747E9DF59232B46DA7C1423289560DFD1F510C54570592ABA2A461C
        CC301B6D2265404BE852C7650BCF1E33E2A957530C2ECB018C916849A26D64A2
        C5B942CF6A201AED4271A88AB01503234B61AF9B20612700F047B745373E7D57
        FC7DDA49724232C793F39F9D0F7DFE7AD137F0F73041B7A5B282B4A3922B629E
        F7A1937A9B389964705C07C52557C2B158E33786919278C766FACC3442B98C0B
        B2899FCDFAF861A746852978346A505AD28DB1EE318CEC03960E55E0EB693487
        BBD031544774A00F857533684EC7A8F8EF42BA82878E1975AE4213C3BE7FF027
        E1E79FFB72F23001344850BE3D4FF7FC64F8D97B6EE95FFF5BFFE2B03924D306
        92E99FD22B4E30BA7A70981A58245088064518E0677B56A1D43900CB4E994A04
        4863AA4BECA1CFDEC0B8C0C0461B49E329EA752E993A536D019B59689E7E1826
        7BAFBA028FB373902E3D88DA2E175DEB42CCECD758B5E437E075EE264DA66DF0
        39A504D0DAFF5C78F3F35F4D1EE18DD985013CF6C59B0391DD698CAE504D94B2
        62CBB228D6D44746E2749A139950D70BE87BD71FC1EEEA046ADB01EF0854996A
        A75A383C398472FF3A14CB1D04368B3CD84906B7B900574712B026C8DD6CAD85
        67CE48C0AA01C2EB843F49752AF7231AD8DBDE3BDE0BB501FC28BCE5F9FBDA00
        6A0B02D8F5E32FDFB974E8BCBB1CBB0CC9A225F35FA62D30DA9A060B150EFAFC
        9C10E60BD8B97F19DC722FF719C4444015631A4157DA577E2F8D5A222CF622A8
        EF421C4FF2382B34BA58998528B052EB74121C5D5EC0039D53AC0B3499DA26B7
        CDF1F6AC6DA32748C03FF87CF885E7EE4D1EA10A2D2C81C35B6FBF5974D85B58
        46B0120ADC34F31C4BC42420272E30220D33DBA4D2721CE92EB90C56A5C2BAE9
        683BA0E5C0724E8F5202B244C9203596CC502A69E158AD76700B7CC68CB46962
        E64C07A2084FF6D0BE2CAA9B93F79148FA718473D50694A606937BBD60747B72
        D3B377C7FF4E00C18212D8FEE45D77ACD8F8DE7B6DF66EA46E52FCE3D4E7D7F3
        9C3CEAE6841A06AEBD7BD7A4854217CB9840B12080487DA3123FEB1EBA4EC9CA
        72A1B4415C7B057E754F3BE570692B65DA90E3B69886F878652CDEB565C7BEED
        56116B948565147999214CB060A343A4BFA65CB4D6048186D1E270E35076DBD3
        77C72F719B36D8469A4F4F1C135B377FCE8B837FB00B850AD96D25D9AC6594A6
        11B7A84A8D3681CA2494405196873E0AD5C56E4456A304EA3C3397CC1D3EBC18
        995D243D6CFBCA4CDB2A51960C05039DA6A16759DC8C90782C8D5B3F3AF78603
        779C48C1DCAAB28A71B2043DBB0B6CDF81ED5304E43CCBC0B9FB0B4AE0C547FF
        72F3B2751BFEB1C820E6D078736E1F9F69CA8C9E29AA21F4434C4EAE37564741
        68ED936921FD29D308465F6BF06AF4AC3893F5820DE391FBF5DD74F455729D71
        C4096933CD36D8D183DEF7565EB1E7FA39927EE1FF2C2690D7C6734672DC9105
        01D49FB9F3B658A477A756B914B3D51187874918938B8CC10BEC40D00BB9490B
        952EDB343BDE6F9CC52BA42DE9F7732F6366190FAA181B5944D697F875592AAC
        4C2B1959D2B4844EBCCC245EAA133F9459ABE166E153ABAEDA7B130F9EF46741
        00DB1FD9FCE7E5A5ABFFC65651D97532B7546689CB88994B2209A66988D5248D
        3D258D9451E1C334E00623F008430EB96F5A70D9EF4CFA3E89CAB2B52C35E9C1
        935120A11DA5354A29AFD4F23167539323DEBF2DBD74F735274D3D1F581080B7
        E79B7FADBB96DCA38C42E2B38D32FE0292B84AA309E0DA093ADC086E91C41652
        1C3A7A7E4B153A2CC74E2CD74944E44D51BFEBFCFD63AD6515CB420AC9F69067
        B46929290291F74C147F0951DA8F44167A32AA3F3EF0FBC37F88B7F1B720805D
        3FB875B3ECEABD5D88B04BA9D4B5546CD11694493D93C50D9D258D982EA5E0D8
        8E2A2CFD341CC5BAA1FE2A8353152576241C37C47876097A96AF83A2FD897406
        229BA191CF713D77B3F9D08CF2E3079A0FAEFCC8EE6BDF06FD64E8025E68F8C7
        F76E19187AF7976CDBA55B6C209B7911DA9FA047F16093FB8A99A660CB24AF83
        B7EF5EE777F42C529695580A8CDF4953EBD84B0AE93A2763AD239CA28875839D
        A3802E9D0E8419AD1D378DC5DFA22C1DFAA5A2FE5ED7475FFDE3530BE0B13B6E
        496D7BB341D823455A9032769462129D79C6C41EDB67CD887A512E954BAAF38C
        CFC02E66304CE6C08C553157524C250E4D9D895265398A1D16933D0628566B39
        D7F36E059B48D4A41AC99F6D56279A0F0D7D7CF8C6530A60E7B3FF7CE7F2F5E7
        DE65F14733693CE8D6304430C196205D9F62DB24F7361C9A9EE8957DEB5B8552
        D91232E2E9903A4E09247EB2B8F30237B33B65C29EAAEF1D603064F4CD3B17AC
        D2F254A248B7DBA582D896E6017BD3CE53EB85F63D7AFBEDBAA86E6501D00DC4
        AEC90D50864A30F49BCCCB4412F0273D5D745D4775ACB98612902470F2381DAF
        E3E0D86A381DBDAC19340F0A512826429926F323D6174DFEA0D9AA86C83CBF79
        D47B68E8EABD9F3BA512D8F1F43D5B06CF3AFF4B8AF94F9E4A98BC69458EBF96
        42CCA902232E0DF46BDF96DB2274773876DAC79CA7C846809FC6E1D40DD7DFBA
        86001C212D3427FE9B65E641F68C9A0CAD090D3D1F2D566C4CFE4CE141FB375F
        38B546FC271FDFF09ED52B7BAFCD845A2BA55961B3E22BB8BA92C58189A2568D
        044E30AF3EC2326DEFFDFF51FDFAF0881961E262918B8A23E3C0730F7DF151AB
        E4ACA0FDF41655D4D151CC0A0537525E7D2A0983462B8D3C4F64FEF4F454E389
        4BBF30B2852982C99F3B99B1A01B3D99972C74F618A001DE6F0FA5D057B450F1
        2254B937C331796C4CBF1DE2F9ECC26E34BFF94E18A75502BF0A06BCE301FC2F
        5DFCD94185173F330000000049454E44AE426082}
      Stretch = True
    end
  end
  object dsAmil: TDataSource
    DataSet = qry1
    Left = 264
    Top = 301
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 80
    Top = 296
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object GridRepPeriode: TcxGridViewRepository
    Left = 80
    Top = 196
    object gridPeriode: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = True
      NavigatorButtons.GotoBookmark.Visible = True
      NavigatorButtons.Filter.Visible = True
      DataController.DataSource = dsPeriode
      DataController.KeyFieldNames = 'tgl_mulai'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 25
      OptionsView.Indicator = True
      object gcolmPeriodeline: TcxGridDBColumn
        DataBinding.FieldName = 'line'
        Visible = False
      end
      object gcolmPeriodethn_fiskal: TcxGridDBColumn
        Caption = 'Periode'
        DataBinding.FieldName = 'thn_fiskal'
      end
      object gcolmPeriodetgl_mulai: TcxGridDBColumn
        Caption = 'Mulai'
        DataBinding.FieldName = 'tgl_mulai'
      end
      object gcolmPeriodetgl_akhir: TcxGridDBColumn
        Caption = 'Akhir'
        DataBinding.FieldName = 'tgl_akhir'
      end
      object gcolmPeriodestatus_penutupan: TcxGridDBColumn
        DataBinding.FieldName = 'status_penutupan'
        Visible = False
      end
    end
  end
  object qryPeriode: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_periode order by thn_fiskal desc')
    Left = 56
    Top = 196
  end
  object dsPeriode: TDataSource
    DataSet = qryPeriode
    Left = 32
    Top = 196
  end
  object qry1: TADOQuery
    Tag = 1
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'awal'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'akhir'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'filter'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'CALL `sp_view_saldo_awal_mitra`(:tgl,:awal,:akhir,:filter)')
    Left = 296
    Top = 305
  end
end
