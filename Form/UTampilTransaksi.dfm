object frmLihatTransaksi: TfrmLihatTransaksi
  Left = 176
  Top = 197
  Width = 937
  Height = 361
  Caption = 'Lihat Transaksi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 44
    Width = 929
    Height = 283
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = False
    object dariTgl: TcxDateEdit
      Tag = 1
      Left = 111
      Top = 38
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 170
    end
    object sampaiTgl: TcxDateEdit
      Tag = 1
      Left = 406
      Top = 38
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 147
    end
    object lkpAmil: TcxLookupComboBox
      Left = 406
      Top = 65
      Properties.KeyFieldNames = 'kode_amil'
      Properties.ListColumns = <
        item
          Caption = 'Nama Amil'
          FieldName = 'nama_amil'
        end>
      Properties.ListSource = dsLookupAmil
      TabOrder = 4
      Width = 147
    end
    object cxGrid1: TcxGrid
      Left = 11
      Top = 162
      Width = 250
      Height = 200
      TabOrder = 12
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      object cxGrid1DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsTransaksi
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1total
          end
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1total
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1total
          end
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            FieldName = 'saldo_kemitraan'
            Column = gcolmGrid1DBTableView1saldo_kemitraan
          end
          item
            Kind = skCount
            FieldName = 'kode_kwitansi'
            Column = cxGrid1DBTableView1kode_kwitansi
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 20
        object cxGrid1DBTableView1kode_kwitansi: TcxGridDBColumn
          Caption = 'Kode Kwitansi'
          DataBinding.FieldName = 'kode_kwitansi'
          HeaderAlignmentVert = vaCenter
          Width = 86
        end
        object cxGrid1DBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          HeaderAlignmentVert = vaCenter
          Width = 161
        end
        object cxGrid1DBTableView1nama_amil: TcxGridDBColumn
          Caption = 'Nama Amil'
          DataBinding.FieldName = 'nama_amil'
          HeaderAlignmentVert = vaCenter
          Width = 222
        end
        object cxGrid1DBTableView1nama_lengkap: TcxGridDBColumn
          Caption = 'Nama Donatur'
          DataBinding.FieldName = 'nama_lengkap'
          HeaderAlignmentVert = vaCenter
          Width = 221
        end
        object cxGrid1DBTableView1kode_amil: TcxGridDBColumn
          DataBinding.FieldName = 'kode_amil'
          Visible = False
          Width = 32
        end
        object cxGrid1DBTableView1kode_donatur: TcxGridDBColumn
          DataBinding.FieldName = 'kode_donatur'
          Visible = False
          Width = 46
        end
        object cxGrid1DBTableView1periode: TcxGridDBColumn
          DataBinding.FieldName = 'periode'
          Visible = False
          Width = 53
        end
        object cxGrid1DBTableView1total: TcxGridDBColumn
          Caption = 'Total Donasi'
          DataBinding.FieldName = 'total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taRightJustify
          HeaderAlignmentVert = vaCenter
          Width = 128
        end
        object cxGrid1DBTableView1kode_penyimpanan: TcxGridDBColumn
          DataBinding.FieldName = 'kode_penyimpanan'
          Visible = False
          Width = 74
        end
        object gcolmGrid1DBTableView1saldo_kemitraan: TcxGridDBColumn
          Caption = 'Saldo Kemitraan'
          DataBinding.FieldName = 'saldo_kemitraan'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btnFilter: TcxButton
      Left = 92
      Top = 131
      Width = 75
      Height = 25
      Caption = 'Filter'
      TabOrder = 7
      OnClick = btnFilterClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C81A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DD175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E46598
        C73070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DBB292D3A57FD0A07BD2
        A684ADA09874A1CCAACBE875A3CE3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE8C9ADF5E1CDF7E5D3F7E5D1F3DDC8DFB99BC7A79085ADD54F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7EDD0B6F8E8D9F5DEC8F3D8BCF3D6BAF4
        DBC1F7E4D2DFBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEECEB1
        F7E7D7F6E1CCF4DBC1F4DABFF3D8BCF3D7BAF4DBC1F3DEC9D2A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF0CEAEF9ECDFF5DFC8F5DDC5F4DCC2F4DAC0F3
        D9BDF3D7BCF8E6D3D3A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D3B4
        F9EDE1F6E1CCF5DFC9F5DEC7F4DCC3F4DBC1F4DABFF8E7D6D7AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF8DBC0F9EBDEF7E7D6F6E1CCF5E0CAF5DEC8F5
        DDC4F6E1CBF5E2D0DFB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEAD7
        F8E2CCFAEEE3F7E7D6F6E2CEF6E1CBF6E3D0F9EADDECCFB4ECD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBE4CDF9E2CDFAECDEF9EEE2F9EDE2F8
        E9DAF0D5BCEDCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCEAD9FADDC2F6D6B8F4D3B4F3D4B7F5E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnUbah1: TcxButton
      Left = 173
      Top = 131
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 8
      OnClick = btnUbah1Click
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
    end
    object btnHapus1: TcxButton
      Left = 254
      Top = 131
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 9
      OnClick = btnHapus1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94AFE3235BC10542
        BB1F59C086A6DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF8CAAE02765CA2076E60578EA0163DD074EBD86A6DDC5A08BC28D67
        BF8A65BD8763BA8460B8825EB37D5BB17B59B07A57154AAD629CF4177EFF0075
        F80075EE0367E11E58C0C8916BE6E5E5E5E5E5E5E5E6E5E5E5E5E5E5E6E5E5E5
        E5E5E6E5E50542BBADCDFEFFFFFFFFFFFFFFFFFF177EEF0542BBCA936DE7E7E7
        E8E7E7E7E7E7E7E7E7E7E7E7C2C2C2FFFFFFFFFFFF245CC18CB4F64C91FF1176
        FF2085FF3F89EB245BC1CC966EE9E9E9D28257D28257D28257E9E9E9C2C2C2FF
        FFFFFFFFFF95B0E33C75D28CB4F7B7D6FE71A7F52D6ACA94AEE1D19B72ECECEC
        ECECEBECECEBECECECECEBECC2C2C2C2C2C2C2C2C2C2C2C27490C2225ABF0542
        BB1C57BE5E6085FFFFFFD49D74EFEEEEEFEFEFEFEEEEEFEEEEEEEFEEEEEEEEEE
        EFEFEEEEEEEEEEEEEEEEEEEFEEEEEEEEEEEEEEEFB17B59FFFFFFD59F75F1F1F0
        F1F0F1F0F1F1F1F0F1F1F1F1C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF1F1F1B47D5BFFFFFFD8A178F2F2F2D28257D28257D28257F2F2F3C2C2C2FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3B6805DFFFFFFD9A278F5F5F5
        F5F5F4F4F5F4F4F4F4F5F5F4C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
        C2F4F4F5B9845FFFFFFFDBA379F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6BC8662FFFFFFDCA67ADCA67A
        DCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA67ADCA6
        7ADCA67ABF8A65FFFFFFDDAC85E8B891E8B891E8B891E8B891E8B891E8B891E8
        B891E8B891E8B891E8B891E8B891E8B891E8B891C0906FFFFFFFDAC3B6DEB391
        DCA67ADCA579DAA379D8A178D59F75D49D74D29C72CF9971CE986FCB956EC993
        6BC69D7FDAC3B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnClear: TcxButton
      Left = 11
      Top = 131
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 6
      OnClick = btnClearClick
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
    end
    object cxButton1: TcxButton
      Left = 335
      Top = 131
      Width = 75
      Height = 25
      Caption = 'Detail'
      TabOrder = 10
      OnClick = cxButton1Click
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
    object eNoTransaski: TcxTextEdit
      Left = 111
      Top = 11
      Style.HotTrack = False
      TabOrder = 0
      Text = 'eNoTransaski'
      Width = 442
    end
    object eDonatur: TcxButtonEdit
      Left = 111
      Top = 65
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = eDonaturPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 3
      Text = 'eDonatur'
      Width = 170
    end
    object cbbViewUser: TcxExtLookupComboBox
      Left = 111
      Top = 92
      Properties.View = gridXViewUser
      Properties.KeyFieldNames = 'id_user'
      Properties.ListFieldItem = gcolmXViewUsernama_amil
      Style.HotTrack = False
      TabOrder = 5
      Width = 442
    end
    object cbxAllPetugas: TcxCheckBox
      Left = 416
      Top = 135
      Caption = 'Semua Petugas'
      Style.HotTrack = False
      TabOrder = 11
      OnClick = cbxAllPetugasClick
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytmLayoutControl1Item1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'No Kwitansi'
        Control = eNoTransaski
        ControlOptions.ShowBorder = False
      end
      object dxlytgrpLayoutControl1Group1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item2: TdxLayoutItem
          CaptionOptions.Text = 'Dari Tanggal'
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
          Control = dariTgl
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          CaptionOptions.Text = 'Sampai Tanggal'
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
          Control = sampaiTgl
          ControlOptions.ShowBorder = False
        end
      end
      object dxlytgrpLayoutControl1Group2: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlytgrpLayoutControl1Group3: TdxLayoutGroup
          AlignHorz = ahLeft
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          object dxlytgrpLayoutControl1Group4: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object lblLayoutControl1Item1: TdxLayoutItem
              CaptionOptions.Text = 'Nama Donatur'
              Control = eDonatur
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Amil'
              Control = lkpAmil
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object LCILayoutControl1Item1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Nama Petugas'
        Control = cbbViewUser
        ControlOptions.ShowBorder = False
      end
      object dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AlignHorz = ahLeft
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Group4: TdxLayoutGroup
          AlignHorz = ahRight
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item10: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btnClear
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btnFilter
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btnUbah1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btnHapus1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
          object LCILayoutControl1Item2: TdxLayoutItem
            AlignVert = avCenter
            CaptionOptions.Text = 'Semua Petugas'
            CaptionOptions.Visible = False
            Control = cbxAllPetugas
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Item6: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.AlignHorz = taCenter
        Control = cxGrid1
        ControlOptions.ShowBorder = False
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 929
      Height = 42
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
      Left = 44
      Top = 27
      Width = 224
      Height = 16
      Caption = 'Data Transaksi Penerimaan Harian'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 43
      Top = 6
      Width = 169
      Height = 20
      Alignment = taCenter
      Caption = 'DATA TRANSAKSI'
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
      Left = 7
      Top = 4
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
  object dsTransaksi: TDataSource
    DataSet = spTransaksi
    Left = 824
    Top = 148
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 384
    Top = 408
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object qryLookupDonatur: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select kode_donatur, nama_lengkap from tbl_donatur')
    Left = 464
    Top = 260
  end
  object qryLookupAmil: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select kode_amil, nama_amil from tbl_amil')
    Left = 208
    Top = 236
  end
  object dsLookupDonatur: TDataSource
    DataSet = qryLookupDonatur
    Left = 488
    Top = 260
  end
  object dsLookupAmil: TDataSource
    DataSet = qryLookupAmil
    Left = 672
    Top = 256
  end
  object spTransaksi: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_lihat_trx'
    Parameters = <
      item
        Name = 'tgl1'
        DataType = ftString
        Size = 10
        Value = '2013-07-09'
      end
      item
        Name = 'tgl2'
        DataType = ftString
        Size = 16
        Value = '2013-07-10'
      end
      item
        Name = 'noKw'
        DataType = ftString
        Size = 2
        Value = ''
      end
      item
        Name = 'donatur'
        DataType = ftString
        Size = 9
        Value = '130630001'
      end
      item
        Name = 'amil'
        DataType = ftString
        Size = 4
        Value = 'A003'
      end
      item
        Name = 'userid'
        DataType = ftString
        Size = 16
        Value = '1'
      end>
    Left = 768
    Top = 116
    object fieldTransaksikode_kwitansi: TStringField
      FieldName = 'kode_kwitansi'
      Size = 10
    end
    object dtmfldTransaksitanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object fieldTransaksikode_amil: TStringField
      FieldName = 'kode_amil'
      Size = 4
    end
    object fieldTransaksikode_donatur: TStringField
      FieldName = 'kode_donatur'
      Size = 9
    end
    object fieldTransaksiperiode: TStringField
      FieldName = 'periode'
      Size = 7
    end
    object fltfldTransaksitotal: TFloatField
      FieldName = 'total'
    end
    object smlntfldTransaksikode_penyimpanan: TSmallintField
      FieldName = 'kode_penyimpanan'
    end
    object fieldTransaksinama_amil: TStringField
      FieldName = 'nama_amil'
      Size = 25
    end
    object fieldTransaksinama_lengkap: TStringField
      FieldName = 'nama_lengkap'
      Size = 25
    end
    object FTransaksisaldo_kemitraan: TFloatField
      FieldName = 'saldo_kemitraan'
    end
    object FTransaksinilai_kemitraan: TFloatField
      FieldName = 'nilai_kemitraan'
    end
  end
  object spViewUser: TADOStoredProc
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_user'
    Parameters = <>
    Left = 632
    Top = 140
  end
  object ds1: TDataSource
    DataSet = spViewUser
    Left = 664
    Top = 140
  end
  object GridRepViewUser: TcxGridViewRepository
    Left = 632
    Top = 108
    object gridXViewUser: TcxGridDBTableView
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
      DataController.DataSource = ds1
      DataController.KeyFieldNames = 'id_user'
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
      object gcolmXViewUserid_user: TcxGridDBColumn
        Caption = 'User Id'
        DataBinding.FieldName = 'id_user'
        Width = 59
      end
      object gcolmXViewUsernama_amil: TcxGridDBColumn
        Caption = 'Nama Amil'
        DataBinding.FieldName = 'nama_amil'
        Width = 613
      end
    end
  end
end
