object frmDetailPerAmil: TfrmDetailPerAmil
  Left = 336
  Top = 130
  Width = 870
  Height = 500
  Caption = 'Detail Donatur Per Amil'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 862
    Height = 466
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = False
    object cxPageControl1: TcxPageControl
      Left = 11
      Top = 11
      Width = 289
      Height = 193
      ActivePage = cxTabSheet1
      Color = clBtnFace
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Stardust'
      ParentColor = False
      Style = 8
      TabHeight = 25
      TabOrder = 0
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 27
      object cxTabSheet1: TcxTabSheet
        Caption = 'Pilih Tutup Untuk Keluar Dari Form Ini'
        Color = clBtnFace
        ImageIndex = 0
        ParentColor = False
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 289
          Height = 166
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          object cxGrid1Level1: TcxGridLevel
            GridView = gridDetailDonatur
          end
        end
      end
    end
    object cxButton1: TcxButton
      Left = 776
      Top = 430
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Tutup'
      TabOrder = 3
      OnClick = cxButton1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEBEBEBDCDCDCDCDCDCDBDBDBD9D9D9E9E9E9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB8A8A8A38266E321E8732
        1E85321D872F178E382572888888FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FDFDFD7777773A18ED2C22FF221BFC1410F2140DF0201BFC2C22FF3A18EE7373
        73FCFCFCFFFFFFFFFFFFFFFFFFFEFEFE7C7C7C3618E82521F81916ED1312B15A
        5AAA6161AC1514AD1312EB2421F83619ED6F6F6FFAFAFAFFFFFFFFFFFF888888
        3617E92520F51F1CF10A06C7FFFFECFFFFFFFFFFFFFFFFF31212B51C19F02320
        F53819F4767676FFFFFFEDEDED3615CA2521F9221FED130EEE8585CFFFFFFFFF
        FFFFFFFFFFFFFFFFEBEAD90000D5241FF02320F73715DBE8E8E8B5B5B54B36FF
        3838F02420ED0300E7C0BFDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E4BC01715
        EF2320EE331EFFB1B0B1B1B1B25E4FFF4C49F1514EF30905D9FFFFEBFFFFFFFF
        FFFFFFFFFFFFFFFFC7C7F8E7E8DB0000DA2220F0301EFFAEACAFB6B6B67567FF
        6362F35C58F38684D2EDECFCF5F5F9FFFFFFFFFFFFF2F2ED0000DFFFFFFD4947
        BF1815F02E1BFFAEACAEB6B6B69083FF7D7BF66765ECFBFCEC5D5AE8FFFFF5E1
        E1F8EDEDFBF3F4EB0000E24C48F0D0D0EE0000EB3424FFA6A5AABCBCBCAFA4FF
        9493F8A1A0EEE7E6F78A87ECFEFEF8C8C8F0BDBDECFFFFF9918FF09B99F78D8B
        F7A5A5F8C1BAFFACACB1FFFFFFA48EFFBABBFFB3B1F8B1B0FAB4B1F1E2E3F6D9
        D9F5C5C5F1FBFCF8AAA7F2AFADF8B0AEF8B9BAFFAD98FFF5F5F5FFFFFF91919E
        E2D9FFCFD0FEC5C4FAD2D1F7ECEAF9E4E4F7D2D2F6F8F8F9C8C7F7C7C6FACFD0
        FDE3D9FF8E8E9DFFFFFFFFFFFFFFFFFF8F8F9CF3ECFFE8E8FFDCDBFCDAD9FCF5
        F5FCE0E0FBE6E6FCDCDBFCE5E6FFF9F2FF858596FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF94949EFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFEFEFFFFFFFFFFFFFF7F7D
        95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABA8F85B1A298C69D
        92C09B91C09F96C39088B2ACACB0FFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btn3: TcxButton
      Left = 644
      Top = 430
      Width = 126
      Height = 25
      Caption = 'Hapus Dari Amil'
      TabOrder = 2
      OnClick = btn3Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94AFE3235BC10542
        BB1F59C086A6DDFFFFFFFFFFFFFFFFFFF7FBFDF6F5F5D19679AA5437AC4B2AAD
        4925AC4725614E752662C52076E60578EA0163DD074EBD86A6DDFFFFFFB9D2EA
        277ACE876262BE5F34FEB860FEB861FEB861FEB8611E51AE629CF4177EFF0075
        F80075EE0367E11E58C0FFFFFF297DD181B9EE9E6557F5BA83FFAB5AFEA759FE
        A156FE9B520541BBADCDFEFFFFFFFFFFFFFFFFFF177EEF0542BBFFFFFF2A7DCF
        77B2EAB29D93FFB65FFFB562FEB160FEAB5CFEA458234FAA8CB4F64C91FF1176
        FF2085FF3F89EB245BC1FFFFFFE0C9BC895343FCC8AAFFD197FEC76CFEBE67FE
        B863FEB05D94818A3C73CE8CB4F7B7D6FE71A7F52E6BCA94AEE1FFFFFFFFFEFE
        DEB9A4C34B1EF6E4D6FFE4A3FFD471FFC968FFBF62FFB55E948F9F285CC00541
        BA1B50B487A6DCFFFFFFFFFFFFFFFFFFFDFAF9D9B39EBB471BF4E2D44D7AA84C
        7AA74C7AA74D7AA8F3D6C2BD451BD4AC98FBF8F6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFBFAA08274336CA69BCCF8AED4F7AED4F7A4CFF63373AD987B70FBF8
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B80AAA5CAEEAACCEAA6
        D0F6A7D0F6AACCEAA6CDEE5681ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF2E68A1D9E8F796C4F18DBAE57EA8D188B4DFCDDFEE2E6FABFBFD
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C3D867B96B789B6E470
        9BC8143F6D18437121446A163E68FAFBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0F4A9612579E0F49890F4A86114A86144B841240741C3D64FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909FB8124E9512579A12
        57981152920F49860F3E718895A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF8B9BB51C4F91104A8F0F47891A48818595AAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnEksport: TcxButton
      Left = 480
      Top = 430
      Width = 158
      Height = 25
      Caption = 'Simpan Data  Ke Excel'
      TabOrder = 1
      OnClick = btnEksportClick
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxPageControl1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup2: TdxLayoutGroup
        AlignHorz = ahClient
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object LCILayoutControl1Item2: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = btnEksport
          ControlOptions.ShowBorder = False
        end
        object LCILayoutControl1Item1: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Visible = False
          Control = btn3
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 312
    Top = 192
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object dsDetailDonatur: TDataSource
    DataSet = qryDetailDonatur
    Left = 560
    Top = 157
  end
  object GridRepcxgrdvwrpstry2: TcxGridViewRepository
    Left = 448
    Top = 117
    object gridDetailDonatur: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetailDonatur
      DataController.DetailKeyFieldNames = 'kode_amil'
      DataController.KeyFieldNames = 'kode_donatur'
      DataController.MasterKeyFieldNames = 'kode_amil'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'alamat_kantor'
          Column = gcolmgrid3kode_donatur
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object gcolmgrid3kode_donatur: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kode_donatur'
        Width = 64
      end
      object gcolmgrid3nama_lengkap: TcxGridDBColumn
        Caption = 'Nama Donatur'
        DataBinding.FieldName = 'nama_lengkap'
        Width = 64
      end
      object gcolmgrid3suami_istri: TcxGridDBColumn
        Caption = 'Suami/Istri'
        DataBinding.FieldName = 'suami_istri'
        Width = 64
      end
      object gcolmgrid3alamat_rumah: TcxGridDBColumn
        Caption = 'Alamat Rumah'
        DataBinding.FieldName = 'alamat_rumah'
        Width = 64
      end
      object gcolmgrid3tlp_rumah: TcxGridDBColumn
        Caption = 'Tlp Rumah'
        DataBinding.FieldName = 'tlp_rumah'
        Width = 64
      end
      object gcolmgrid3handphone: TcxGridDBColumn
        Caption = 'Handphone'
        DataBinding.FieldName = 'handphone'
        Width = 64
      end
      object gcolmgrid3kantor: TcxGridDBColumn
        Caption = 'Kantor'
        DataBinding.FieldName = 'kantor'
        Width = 64
      end
      object gcolmgrid3alamat_kantor: TcxGridDBColumn
        Caption = 'Alamat Kantor'
        DataBinding.FieldName = 'alamat_kantor'
        Width = 64
      end
      object gcolmgrid3telp_kantor: TcxGridDBColumn
        Caption = 'Tlp Kantor'
        DataBinding.FieldName = 'telp_kantor'
        Width = 64
      end
      object gcolmgrid3jemput: TcxGridDBColumn
        Caption = 'Jeput'
        DataBinding.FieldName = 'jemput'
        Width = 64
      end
      object gcolmgrid3setiap_tanggal: TcxGridDBColumn
        Caption = 'Setiap Tanggal'
        DataBinding.FieldName = 'setiap_tanggal'
        Width = 64
      end
      object gcolmgrid3nama_kab_kota: TcxGridDBColumn
        Caption = 'Kota/Kabupaten'
        DataBinding.FieldName = 'nama_kab_kota'
        Width = 64
      end
    end
  end
  object qryDetailDonatur: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kode_amil'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = 'A001'
      end>
    SQL.Strings = (
      'SELECT'
      '    tbl_donatur.*'
      '    , tbl_kabupaten.nama_kab_kota, tbl_kecamatan.nama_kecamatan'
      'FROM'
      '    tbl_donatur '
      
        'INNER JOIN tbl_kecamatan ON tbl_kecamatan.kode_kec = tbl_donatur' +
        '.kode_kec AND tbl_kecamatan.kode_kab = tbl_donatur.kode_kab'
      
        'INNER JOIN tbl_kabupaten ON tbl_kecamatan.kode_kab = tbl_kabupat' +
        'en.kode_kab'
      'where tbl_donatur.kode_amil=:kode_amil')
    Left = 595
    Top = 158
  end
  object scxclxprtLap: TscExcelExport
    DataPipe = dpDataSet
    Dataset = qryDetailDonatur
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = 1
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    BorderHeader.BackAlternateColor = clBlack
    MergeHeaderCells = True
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = 1
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    BorderTitles.BackAlternateColor = clBlack
    AutoFilter = False
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = 1
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = 1
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    BorderSummary.BackAlternateColor = clBlack
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = 1
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    BorderFooter.BackAlternateColor = clBlack
    MergeFooterCells = True
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = 1
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    BorderGroup.BackAlternateColor = clBlack
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 139
    Top = 126
  end
  object qryEksport: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kode_amil'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = 'A001'
      end>
    SQL.Strings = (
      'SELECT'
      '    tbl_donatur.*'
      '    , tbl_kabupaten.nama_kab_kota, tbl_kecamatan.nama_kecamatan'
      'FROM'
      '    tbl_donatur '
      
        'INNER JOIN tbl_kecamatan ON tbl_kecamatan.kode_kec = tbl_donatur' +
        '.kode_kec AND tbl_kecamatan.kode_kab = tbl_donatur.kode_kab'
      
        'INNER JOIN tbl_kabupaten ON tbl_kecamatan.kode_kab = tbl_kabupat' +
        'en.kode_kab'
      'where tbl_donatur.kode_amil=:kode_amil')
    Left = 427
    Top = 222
    object Fqry1kode_donatur: TStringField
      DisplayLabel = 'Kode Donatur'
      FieldName = 'kode_donatur'
      Size = 9
    end
    object Fqry1nama_lengkap: TStringField
      DisplayLabel = 'Nama Lengkap'
      FieldName = 'nama_lengkap'
      Size = 25
    end
    object Fqry1tempat_lahir: TStringField
      DisplayLabel = 'Tempat Lahir'
      FieldName = 'tempat_lahir'
    end
    object dtfldqry1tanggal_lahir: TDateField
      DisplayLabel = 'Tanggal Lahir'
      FieldName = 'tanggal_lahir'
    end
    object Fqry1suami_istri: TStringField
      FieldName = 'suami_istri'
      Size = 30
    end
    object Fqry1alamat_rumah: TStringField
      DisplayLabel = 'Alamat Rumah'
      FieldName = 'alamat_rumah'
      Size = 30
    end
    object Fqry1tlp_rumah: TStringField
      DisplayLabel = 'Telpon Rumah'
      FieldName = 'tlp_rumah'
      Size = 15
    end
    object Fqry1handphone: TStringField
      DisplayLabel = 'Handphone'
      FieldName = 'handphone'
      Size = 15
    end
    object Fqry1kantor: TStringField
      DisplayLabel = 'Kantor'
      FieldName = 'kantor'
      Size = 50
    end
    object Fqry1alamat_kantor: TStringField
      DisplayLabel = 'Alamat Kantor'
      FieldName = 'alamat_kantor'
      Size = 30
    end
    object Fqry1telp_kantor: TStringField
      DisplayLabel = 'Telp Kantor'
      FieldName = 'telp_kantor'
      Size = 15
    end
    object Fqry1mulai_bulan: TStringField
      DisplayLabel = 'Mulai Bulan'
      FieldName = 'mulai_bulan'
      Size = 2
    end
    object Fqry1mulai_tahun: TStringField
      DisplayLabel = 'Mulai Tahun'
      FieldName = 'mulai_tahun'
      Size = 4
    end
    object Fqry1cara_bayar: TStringField
      DisplayLabel = 'Cara Bayar'
      FieldName = 'cara_bayar'
      FixedChar = True
      Size = 1
    end
    object Fqry1jemput: TStringField
      DisplayLabel = 'Jemput'
      FieldName = 'jemput'
      FixedChar = True
      Size = 1
    end
    object Fqry1setiap_tanggal: TSmallintField
      DisplayLabel = 'Setiap Tanggal'
      FieldName = 'setiap_tanggal'
    end
    object Fqry1nama_kab_kota: TStringField
      DisplayLabel = 'Kab'
      FieldName = 'nama_kab_kota'
      Size = 25
    end
    object Fqry1nama_kecamatan: TStringField
      DisplayLabel = 'Kec'
      FieldName = 'nama_kecamatan'
      Size = 30
    end
  end
end
