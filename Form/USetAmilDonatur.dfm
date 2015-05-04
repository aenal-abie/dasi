object frmSetAmilDonatur: TfrmSetAmilDonatur
  Left = 220
  Top = 103
  Width = 870
  Height = 503
  Caption = 'Amil Penjemput'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 53
    Width = 862
    Height = 416
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = False
    object cxpgcntrl1: TcxPageControl
      Left = 11
      Top = 23
      Width = 289
      Height = 193
      ActivePage = cxtbsht1
      LookAndFeel.SkinName = 'Office2010Silver'
      Style = 8
      TabOrder = 0
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 24
      object cxtbsht1: TcxTabSheet
        Caption = 'Data Donatur'
        ImageIndex = 0
        object lbl3: TLabel
          Left = 0
          Top = 0
          Width = 289
          Height = 13
          Align = alTop
        end
        object dxlytcntrl1: TdxLayoutControl
          Left = 0
          Top = 13
          Width = 289
          Height = 156
          Align = alClient
          TabOrder = 0
          TabStop = False
          object grid: TcxGrid
            Left = 11
            Top = 42
            Width = 840
            Height = 319
            Align = alClient
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            object gridDonatur: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDonatur
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              object gcolmDonaturkode_amil: TcxGridDBColumn
                Caption = 'Amil Penjemput'
                DataBinding.FieldName = 'kode_amil'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.DropDownWidth = 400
                Properties.View = gridAmil
                Properties.KeyFieldNames = 'kode_amil'
                Properties.ListFieldItem = gcolmgridcxgrdvwrpstry1DBTableView1nama_amil
                Properties.OnChange = gcolmDonaturkode_amilPropertiesChange
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 88
              end
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
            end
            object cxgrdlvl: TcxGridLevel
              GridView = gridDonatur
            end
          end
          object btn3: TcxButton
            Left = 11
            Top = 11
            Width = 118
            Height = 25
            Caption = 'Perbaharui'
            TabOrder = 0
            OnClick = btn3Click
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
          object dxlytgrpLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutLookAndFeel = dxlytsknlkndfl1
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object LCIdxlytcntrl1Item1: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Visible = False
              Control = btn3
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl1Item1: TdxLayoutItem
              AlignHorz = ahClient
              AlignVert = avClient
              Control = grid
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object cxtbsht2: TcxTabSheet
        Caption = 'Rekap Donatur Per Amil'
        ImageIndex = 1
        object dxlytcntrl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 169
          Align = alClient
          TabOrder = 0
          TabStop = False
          object grid1: TcxGrid
            Left = 11
            Top = 42
            Width = 649
            Height = 301
            Align = alClient
            TabOrder = 2
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2010Silver'
            object grid2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = ds
              DataController.KeyFieldNames = 'kode_amil'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Editing = False
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              object gcolmKode: TcxGridDBColumn
                DataBinding.FieldName = 'kode_amil'
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                MinWidth = 100
              end
              object gcolmAmilnama_amil: TcxGridDBColumn
                Caption = 'Nama Amil'
                DataBinding.FieldName = 'nama_amil'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmiltempat_lahir: TcxGridDBColumn
                Caption = 'Tempat Lahir'
                DataBinding.FieldName = 'tempat_lahir'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmiltgl_lahir: TcxGridDBColumn
                Caption = 'Tanggal Lahir'
                DataBinding.FieldName = 'tgl_lahir'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmiljenis_kelamin: TcxGridDBColumn
                Caption = 'Jenis Kelamin'
                DataBinding.FieldName = 'jenis_kelamin'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmilalamat: TcxGridDBColumn
                Caption = 'Alamat'
                DataBinding.FieldName = 'alamat'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmilhandphone: TcxGridDBColumn
                Caption = 'Handphone'
                DataBinding.FieldName = 'handphone'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmilstatus_nikah: TcxGridDBColumn
                Caption = 'Status nikah'
                DataBinding.FieldName = 'status_nikah'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmilistri_suami: TcxGridDBColumn
                Caption = 'Suami/Istri'
                DataBinding.FieldName = 'istri_suami'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmiljumlah_anak: TcxGridDBColumn
                Caption = 'Jumlah Anak'
                DataBinding.FieldName = 'jumlah_anak'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object gcolmAmilpendidikan_terakhir: TcxGridDBColumn
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
              object gcolmAmilkode_kab: TcxGridDBColumn
                Caption = 'Kabupaten'
                DataBinding.FieldName = 'kode_kab'
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                VisibleForCustomization = False
              end
              object gcolmAmilkode_posisi: TcxGridDBColumn
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
            object cxgrdlvlgrid1Level1: TcxGridLevel
              GridView = grid2
              Options.TabsForEmptyDetails = False
            end
          end
          object btn2: TcxButton
            Left = 11
            Top = 11
            Width = 118
            Height = 25
            Caption = 'Perbaharui'
            TabOrder = 0
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
          object btn1: TcxButton
            Left = 135
            Top = 11
            Width = 146
            Height = 25
            Caption = 'Detail Donatur '
            TabOrder = 1
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
          object dxlytgrpLayoutControl2Group_Root1: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutLookAndFeel = dxlytsknlkndfl1
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxlytgrpdxlytcntrl2Group1: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmdxlytcntrl2Item2: TdxLayoutItem
                AlignHorz = ahLeft
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = btn2
                ControlOptions.ShowBorder = False
              end
              object LCIdxlytcntrl2Item1: TdxLayoutItem
                CaptionOptions.Visible = False
                Control = btn1
                ControlOptions.ShowBorder = False
              end
            end
            object dxlytmdxlytcntrl2Item1: TdxLayoutItem
              AlignHorz = ahClient
              AlignVert = avClient
              Control = grid1
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxlytmLayoutControl1Item2: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxpgcntrl1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 862
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
      Width = 282
      Height = 16
      Caption = 'Menentukan Amil yang menjemput Setoran'
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
      Width = 135
      Height = 23
      Alignment = taCenter
      Caption = 'Setting Amil'
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
      Left = 18
      Top = 12
      Width = 32
      Height = 32
      AutoSize = True
      Center = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000002000
        0000200806000000737A7AF40000000473424954080808087C08648800000009
        704859730000037600000376017DD582CC0000001974455874536F6674776172
        65007777772E696E6B73636170652E6F72679BEE3C1A000008B6494441547801
        ED576B7054571DFFDDBB8FBBBBC96EB2C96E121202843C086DA19442533A4E9A
        90691986CEC0940AED58B14E55EC8C5A07B5A2E34C1DBF48C7D7A0F8A1D3A932
        3E4001ABB6551C2B2C0FA71492500B290D210F1E85BCB3C9269BDDBD4F7FFFBB
        41FC6475E0A377CEBDE79CFFF93F7EFFC7396757711C0777F251F6280B10C48B
        C8A119160AA9BB005E4CC0C41114E125679BD343DABF9A72A700282F2B3E2878
        153AB634D7376B8F543F82DA702D4843DF541FDEBAF6164EF49F7038FF0D12F8
        A473C0B104C51D01A06C513C68C1112DAC3DFCFCAAE7D1186984655BC864322E
        806020088FE341F764377677ED466E3277121EB439DB1DE3B601287CF013EC53
        8A95279F5AF214EA6275F028406A741CDF5FBD479CC4CECE2F201A2F45D6007A
        92BDD87F613F9C29E720BE84ADB70FE0A7CADD0CEBF9AA05554A5B6D1B341508
        7B81E49511FC6CED6117C0E78FAD47F9A232CC30E85339E02FD78FE07AF77503
        A3B88B58E127D74ABE01BEFF6B53F02DEC440D1E6D686CC0FC500562D416E73B
        DA3D8EDF3ED6E5EAFBD4E17BB0606929922630AA03EF8D0CE1E2B51E601C8704
        C0837DFD03BF2F8DC52B2461AA5014854E7126BDCC39E3905FEA2383AC0AD930
        0DD4FE7A3186E70D43B1144407FDA80C8450EA5390193470FAAB290A000FFF28
        8268950F49C3C1606E16C3153A5263DC7DC318113D2DC9A99984DFEF65EE3815
        4B14E3481070C44EBE2488611952D40523455671A01CB3D159A017705E9015E1
        F8CF6FE4070AA617936700D3548B96A99400F0E1AFE72648FDE8B661651C626A
        7C6C1C0DAFD72315A5A70304F035E7A385C911FDA182C9060E6E409F03907623
        70A42B49EAAD663B366CDB616454280CFDCD95752BE2DC660EDACF9CC6E3039B
        301A1D0558E1254380E43FAE0126C7A7BE9207B46EB782702530ACB306588463
        4CF67886DA9248B9005233B309AFD783E3172649CD37737A14EA9563D04D1D13
        C5AB51B1A00EAAAABA8B1F5B5A02CB72F0E1B52B78B6631B4E179E027C40A906
        2C2C00160589E732F0FAA63C806D6F2A28A1C7D798A9CB34DC45333A01A31D67
        5D00D373004E764F411EF11CE7F7C14C2751525E8550248A1E7F138AC241C8B6
        5FD3108561D9300D137F3EF3063EA33FCD93D68497DB6C3E01541180770438F6
        781EC06304A0953302F4BE77863D23E156D68BCE775C0033B3998447F5E0ED8B
        7900A665A1E8FA9B58BE7C19D46014EF9FBF809313F3714FDD023715ABEB8B09
        C0617A6C4C8C8DE1C9D39BF06E6907400F03F4AC220484387EFFE379000FFC41
        81456037086038CB5A0900F74FAD42E7D31D4FB800D2B3D984C7A3E2540F8B89
        21B02C1395A913A8A95D02550BE3CAD004FED6ABA2B1A6DA0570DFE20874C3C6
        C8F010FC9A1F9DEFB6E31BE69771B97800A00195212EA066DA8424CDF400930E
        A033450803D51335D813DE838D1B363C4A36B464B2B984CAED77BA779AE641CF
        1C384367D0D4500A355084D78E7F8078DD43D0341E71E478A8B198002CF45CEA
        656FF2B5D0D9D98E578A7F8CAE8A2E5620996443D1B08B805344C04BD18BFAC1
        BBF09CFE0236AE6BC3C2EA796B5D00D99C9E90026BEFCD4740F8ADF404CA527F
        872F54843F9EB771FF9A66783DA21168AA2F22481BE3E363288E4671632287A9
        A929DCE8BF80E3178FE268FC282E55F62067EBF0A95E780D1FAA0617A265683D
        56563F8025772F437D750CE5B1E2561780AE1B0929AECEFE14E47AB6F91BC1BE
        DA8D15CB62E87EEF0CAE8E0410BDB7D98D80873B61E5E23077818D77DE390583
        E56CF126CE998065E460CC4E6292605455413A9D66CA7CD01D1F62F172A6B41E
        C1C230023E022AD1108F45F3004CD34AC83EEFEC9D44E6832E043B4FA0D29C86
        130C20E328883191BD76083DA53558D4DA82D5B5450460219BCBC1EFF76326A3
        63706C06AAC78B68A11F8E91069D828F8674EE1453F1C3EF551020AF9757A578
        EDF37951122D6A95718B65DB09197474F421FCEAF7E09D4C42317478348D45A8
        E5FB820278EBEAF1863A1F9F78663D64A7B4B79F71BD341C3F32391D5EAF0F5A
        208002BFC2EBDEE61962C0B16D44221158A6C59D6322C0F59A9AC52EB858C95C
        0A6C0290BCBFFDD21EC4FF711226C3AAF7F5E50D1384272040FC88B6AEC5599E
        DECD3BBF08468D220ED2590B1369132986BDA09095061B19863E1CF22356C403
        C1E5625133AD262FAF6C268B50A8003EDE3DF1D292B9085856428E5CF2B271BF
        C8979DD40345B971A571441AF8CAAF1D828661722BA60CF04C726B871F2ECBF9
        90E765B920C89BD1E7E141C99A5018E6AC6171D738F0FA7C6858186F25092D86
        6912802D56A84384F9BA20D813B900A166B69B73B2922E9ECF3202B2CE1548F1
        920C2F8D598ECDB0734B93206BC2C36B4508AE8DC2020DF7D695E701B0605C00
        79C6BC721120278DDE9A5317492E17893C581881D1294680C6081FE24D983F89
        A406443E6BD848CE4A2DD894138F78B93182A2A1AC48C392451579003D972E25
        3ADA3B68CC5D25A7E8CF8F85990BD248BF4993A1BBC2F03B98D56DDE9880C64A
        5704457E59BE6EB83304E2829FD3222CCD6B5661F5AAFB5A65EC9E8436CFFF9B
        4C829ED25015EE3F0A89295993C293DC13063DE29744E175EB879A642CE7897B
        60C93295E82C906B631918A6454D748C7908F9555495065135AF6C0E40269B90
        6D250AA89362FCE178F84FDFDCBA75EB617732F7D9B56BD7E79EFDECF6E71C6E
        2DE173F9A9D6ED69508EF3FDFB7EB97BC78E1D7BF16FCFDE5FFC6A63C38AE66F
        EB2C40912BE665152F0E627EE55C0AD2BC0DC53BE2CB7BC66C0634DF664DD35E
        BBA9879E29070F1EFC7A4B4BDB77A5C0F246191B1AA690C0E055ADE2C3AB03DB
        9B9A9A5EE1BAACB8E2D3D3B9CDE7FA870FE96E141C54443C881404505D9507F0
        607FFFE5DF9595C52B458282A28FCA1418466E6F4934FA69854F5F5FFF819258
        EC099B21153E61A279C12C431780C8CA519D4C8E1F6AA8AFDFC2B9333A3AF6F3
        B4EE3C93963F05745F615AC3011ED333A91B4B1B976C66E6E027CC957C794BF3
        7BABF174C7392A490989181AD957F0FD6FDA10E5BA85917211F6CBF9E6AF520E
        E65A96FDD9DBFE634225B7D5FE0FE09F4C115D483E1B038B0000000049454E44
        AE426082}
      Stretch = True
    end
  end
  object dsDonatur: TDataSource
    DataSet = spDonatur
    Left = 144
    Top = 285
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 112
    Top = 208
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object cxgrdvwrpstry1: TcxGridViewRepository
    Left = 144
    Top = 245
    object gridAmil: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsAmil
      DataController.KeyFieldNames = 'kode_amil'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object gcolmgridcxgrdvwrpstry1DBTableView1kode_amil: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kode_amil'
      end
      object gcolmgridcxgrdvwrpstry1DBTableView1nama_amil: TcxGridDBColumn
        Caption = 'Nama Amil'
        DataBinding.FieldName = 'nama_amil'
      end
      object gcolmgridcxgrdvwrpstry1DBTableView1handphone: TcxGridDBColumn
        Caption = 'Handphone'
        DataBinding.FieldName = 'handphone'
      end
    end
  end
  object spAmil: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_amil'
    Parameters = <>
    Left = 144
    Top = 205
  end
  object dsAmil: TDataSource
    DataSet = spAmil
    Left = 112
    Top = 245
  end
  object spDonatur: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_set_amil'
    Parameters = <>
    Left = 112
    Top = 285
  end
  object ds: TDataSource
    DataSet = qryAmil
    Left = 707
    Top = 229
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
  object actlst1: TActionList
    Left = 147
    Top = 319
    object act1: TAction
      Caption = 'Refresh'
      ShortCut = 113
    end
  end
end
