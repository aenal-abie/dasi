object frmDetailPengeluaran: TfrmDetailPengeluaran
  Left = 275
  Top = 129
  Width = 870
  Height = 500
  Caption = 'Detail Pengeluaran'
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
          object gridDetail: TcxGridDBTableView
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
              end
              item
                Format = 'Rp ,0.00;- Rp ,0.00'
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Rp, 0'
                Kind = skSum
                Column = gcolmDetailsub_total
              end
              item
                Format = '0'
                Kind = skSum
                Column = gcolmDetailpenerima_manfaat
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
            object gcolmDetailno_bukti: TcxGridDBColumn
              Caption = 'Sumber Dana'
              DataBinding.FieldName = 's_dana'
              Width = 104
            end
            object gcolmDetailnama_perkiraan: TcxGridDBColumn
              Caption = 'Penyaluaran'
              DataBinding.FieldName = 'nama_perkiraan'
              Width = 107
            end
            object gcolmDetailketerangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
              Width = 228
            end
            object gcolmDetailsub_total: TcxGridDBColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'sub_total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 103
            end
            object gcolmDetailpenerima_manfaat: TcxGridDBColumn
              Caption = 'P. Manfaat'
              DataBinding.FieldName = 'penerima_manfaat'
              Width = 72
            end
            object gcolmDetailnama_kab_kota: TcxGridDBColumn
              Caption = 'Wilayah Penyaluran'
              DataBinding.FieldName = 'nama_kab_kota'
              Width = 104
            end
            object gcolmDetailnama_lengkap: TcxGridDBColumn
              Caption = 'Mitra'
              DataBinding.FieldName = 'nama_lengkap'
              Width = 105
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gridDetail
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
      TabOrder = 1
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
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kode'
        DataType = ftString
        Size = 14
        Value = '20130912001007'
      end>
    SQL.Strings = (
      'CALL `sp_view_dtl_pengeluaran`(:kode)')
    Left = 416
    Top = 152
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
