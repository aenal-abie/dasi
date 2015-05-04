object frmDetailTransaksi: TfrmDetailTransaksi
  Left = 336
  Top = 130
  Width = 870
  Height = 500
  Caption = 'Detail Transaksi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
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
        Caption = 
          '[  # Klik Tombol Lihat Kencrengan jika ingin melihat kencrengan ' +
          'atau # Klik tombol Tutup jika ingin menutup Detail Transaksi  ] ' +
          ' '
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
            DataController.DataSource = dsDetailTransaksi
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = 'Rp ,0.00;- Rp ,0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBTableView1subtotal
              end
              item
                Format = 'Rp ,0.00;- Rp ,0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1subtotal
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Rp ,0.00;- Rp ,0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1subtotal
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 15
            object cxGrid1DBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
              Width = 109
            end
            object cxGrid1DBTableView1kode_kwitansi: TcxGridDBColumn
              Caption = 'Nomor Kwitansi'
              DataBinding.FieldName = 'kode_kwitansi'
              Width = 93
            end
            object cxGrid1DBTableView1id_perkiraan: TcxGridDBColumn
              DataBinding.FieldName = 'id_perkiraan'
              Visible = False
              Width = 46
            end
            object cxGrid1DBTableView1nama_perkiraan: TcxGridDBColumn
              Caption = 'Penerimaan'
              DataBinding.FieldName = 'nama_perkiraan'
              Width = 216
            end
            object cxGrid1DBTableView1subtotal: TcxGridDBColumn
              Caption = 'Subtotal'
              DataBinding.FieldName = 'subtotal'
              Width = 176
            end
            object cxGrid1DBTableView1keterangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
              Width = 330
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
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
      TabOrder = 2
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
    object btnLihatKencrengan: TcxButton
      Left = 636
      Top = 430
      Width = 134
      Height = 25
      Caption = '&Lihat Kencrengan'
      Default = True
      TabOrder = 1
      OnClick = btnLihatKencrenganClick
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
        object dxLayoutControl1Item3: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = btnLihatKencrengan
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
  object qryDetailTransaksi: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=dasi_ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kode'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select d.*, p.nama_perkiraan from tbl_detail_transaksi d '
      'left join tbl_perkiraan p on d.id_perkiraan=p.id_perkiraan'
      
        'inner join tbl_kelompok k on p.kd_kel=k.kd_kel where d.kode_kwit' +
        'ansi=:kode')
    Left = 416
    Top = 152
    object qryDetailTransaksiid: TLargeintField
      FieldName = 'id'
    end
    object qryDetailTransaksikode_kwitansi: TStringField
      FieldName = 'kode_kwitansi'
      Size = 10
    end
    object qryDetailTransaksiid_perkiraan: TStringField
      FieldName = 'id_perkiraan'
      Size = 6
    end
    object qryDetailTransaksisubtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = 'Rp ,0.00;- Rp ,0.00'
    end
    object qryDetailTransaksiketerangan: TStringField
      FieldName = 'keterangan'
      FixedChar = True
      Size = 2
    end
    object qryDetailTransaksinama_perkiraan: TStringField
      FieldName = 'nama_perkiraan'
      Size = 50
    end
    object FDetailTransaksijumlah: TSmallintField
      FieldName = 'jumlah'
    end
  end
  object dsDetailTransaksi: TDataSource
    DataSet = qryDetailTransaksi
    Left = 448
    Top = 152
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 312
    Top = 192
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
end
