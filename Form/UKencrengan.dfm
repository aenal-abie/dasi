object frmKencrengan: TfrmKencrengan
  Left = 273
  Top = 126
  Width = 756
  Height = 491
  Caption = 'Kencrengan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 748
    Height = 457
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
      Top = 38
      Width = 289
      Height = 193
      ActivePage = cxTabSheet1
      Color = clBtnFace
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Stardust'
      ParentColor = False
      Style = 8
      TabHeight = 25
      TabOrder = 1
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 27
      object cxTabSheet1: TcxTabSheet
        Caption = '[ # Pilih kencrengan dengan mencentang cek box yang tersedia #]'
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
            DataController.DataSource = dsKencrengan
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Rp ,0.00;- Rp ,0.00'
                Kind = skSum
                FieldName = 'calcJml'
                Column = cxGrid1DBTableView1calcJml
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 20
            object cxGrid1DBTableView1kode: TcxGridDBColumn
              DataBinding.FieldName = 'kode'
              Visible = False
            end
            object cxGrid1DBTableView1kode_kwitansi: TcxGridDBColumn
              DataBinding.FieldName = 'kode_kwitansi'
              Visible = False
            end
            object cxGrid1DBTableView1kode_nominal: TcxGridDBColumn
              DataBinding.FieldName = 'kode_nominal'
              Visible = False
            end
            object cxGrid1DBTableView1pilih: TcxGridDBColumn
              Caption = 'Pilih'
              DataBinding.FieldName = 'pilih'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 39
            end
            object cxGrid1DBTableView1nominal: TcxGridDBColumn
              Caption = 'Nominal'
              DataBinding.FieldName = 'nominal'
              Width = 114
            end
            object cxGrid1DBTableView1qty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'qty'
              Width = 61
            end
            object cxGrid1DBTableView1jumlah: TcxGridDBColumn
              DataBinding.FieldName = 'jumlah'
              Visible = False
            end
            object cxGrid1DBTableView1jenis_uang: TcxGridDBColumn
              Caption = 'Jenis Uang'
              DataBinding.FieldName = 'jenis_uang'
              Width = 88
            end
            object cxGrid1DBTableView1calcJml: TcxGridDBColumn
              Caption = 'Subtotal'
              DataBinding.FieldName = 'calcJml'
              Width = 394
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
    object cxButton1: TcxButton
      Left = 662
      Top = 421
      Width = 75
      Height = 25
      Caption = '&Batal'
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
    object btnOK: TcxButton
      Left = 581
      Top = 421
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = btnOKClick
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
    object speJumlahKencrengan: TcxSpinEdit
      Left = 129
      Top = 11
      Properties.Alignment.Horz = taCenter
      Properties.MaxValue = 1000.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.SpinButtons.Position = sbpHorzLeftRight
      Style.HotTrack = False
      TabOrder = 0
      Value = 1
      Width = 56
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object lblLayoutControl1Item4: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Jumlah Kencrengan'
        Control = speJumlahKencrengan
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxPageControl1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AlignHorz = ahRight
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item3: TdxLayoutItem
          AlignVert = avCenter
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = btnOK
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 128
    Top = 32
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object qryKencrengan: TADOQuery
    Tag = 2
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=dasi_ntb'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select a.*, k.jumlah, '
      'k.qty as qty, k.pilih as pilih from '
      
        '(select '#39'satu'#39' as satu, n.kode_nominal, n.nominal, n.jenis_uang ' +
        'from tbl_nominal n) a'
      'left join tbl_kencrengan k on a.satu=k.kode_nominal')
    Left = 379
    Top = 85
  end
  object dspKencrengan: TDataSetProvider
    DataSet = qryKencrengan
    Left = 408
    Top = 136
  end
  object cdsKencrengan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKencrengan'
    OnCalcFields = cdsKencrenganCalcFields
    Left = 456
    Top = 152
    object cdsKencrengankode_nominal: TSmallintField
      FieldName = 'kode_nominal'
    end
    object cdsKencrengannominal: TFloatField
      FieldName = 'nominal'
      DisplayFormat = 'Rp ,0.00;- Rp ,0.00'
    end
    object cdsKencrenganjumlah: TFloatField
      FieldName = 'jumlah'
    end
    object cdsKencrengancalcJml: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'calcJml'
      DisplayFormat = 'Rp ,0.00;- Rp ,0.00'
      Calculated = True
    end
    object cdsKencrenganjenis_uang: TStringField
      FieldName = 'jenis_uang'
    end
    object cdsKencrenganpilih: TBooleanField
      FieldName = 'pilih'
    end
    object cdsKencrenganqty: TSmallintField
      FieldName = 'qty'
    end
  end
  object dsKencrengan: TDataSource
    DataSet = cdsKencrengan
    Left = 480
    Top = 136
  end
  object ActionList1: TActionList
    Left = 323
    Top = 93
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 116
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16453
    end
  end
end
