object frmRekKoran: TfrmRekKoran
  Left = 118
  Top = 152
  Width = 937
  Height = 361
  Caption = 'Rekening Koran'
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
      Top = 11
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 170
    end
    object sampaiTgl: TcxDateEdit
      Tag = 1
      Left = 406
      Top = 11
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 147
    end
    object btnFilter: TcxButton
      Left = 559
      Top = 38
      Width = 170
      Height = 25
      Caption = 'Lihat Rekening Koran'
      TabOrder = 3
      OnClick = btnFilterClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCEDE9
        E38A73488E774EE1DCD2FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCF2F0EC8B7043795B267F6332967F59FCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF2F0EC967E528766
        2F8A6D39816531957E55FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCCBBEA983643186652A7F5E2592794EE8E4DBFCFCFCFCFCFC
        FCFCFCEAE6DED0C6B4BFB096C0B197D0C5B1F7F5F3BBAB8EA08961B9A98C8365
        2A93794AEDE9E2FCFCFCFCFCFCFBFAF9B29E7B8A6E3986652986662985652A8C
        6F39A38C65C2B4999376419E8354AD9873F3F0ECFCFCFCFCFCFCFCFCFCAB956B
        917237AB956CC5B599BFAC8AC0AE8EB19B7491743B93753CC3B396B19C76F7F6
        F4FCFCFCFCFCFCFCFCFCD6CAB48F6E30B09A70C4B497A78A55A07D419C7B40AE
        976CCDC0A595763A9A7E4AFBFBFBFCFCFCFCFCFCFCFCFCFCFCFCA88D5D9F8144
        C2AF8DB0986BAA8540B38F4CB18E4AA78344B59B6FB8A278977537D6CAB4FCFC
        FCFCFCFCFCFCFCFCFCFC957437B9A071AF9461C9B48AB48F46B7934DBE9E5BC7
        A66AAB8A51CAB897A5864CC4B290FCFCFCFCFCFCFCFCFCFCFCFC987739C1AA7B
        BCA26FE1D3BAC59F55BD984DBC974BC19C54AA8949C8B692AE915AC0AC85FCFB
        FCFCFCFCFCFCFCFCFCFCAA8F56C2AA74BCA26FD2B88CD1A85FC7A154C8A256D1
        AE6EB49456CDBB97B09055CFBEA5FBFBFBFCFCFCFCFCFCFCFCFCCDBA92BA9E5B
        CCB890BFA471C49D54CBA65ECCA55EC19959CBB287BA9E6AA5824DECE4E0FCFC
        FCFCFCFCFCFCFCFCFCFCF5F2EBAC8E50BDA062D9CEBBBEA168C2A364C3A46AD0
        B88FC9B386B89552C9B196FBFAFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCEBE4D6
        AE8D4ECAB895C8AD75CCB484CDB482C7AD78B5954FC6AF80F9F7F8FCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF7F6F4DBD4C7BAA680AD9058AE9358BF
        A773E2D7BFFCFBFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC}
    end
    object eDonatur: TcxButtonEdit
      Tag = 1
      Left = 111
      Top = 40
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = eDonaturPropertiesButtonClick
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 2
      Text = 'eDonatur'
      Width = 442
    end
    object cxpgcntrl1: TcxPageControl
      Left = 11
      Top = 81
      Width = 289
      Height = 193
      ActivePage = cxtbsht2
      Style = 8
      TabOrder = 4
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 24
      object cxtbsht1: TcxTabSheet
        Caption = 'Data'
        ImageIndex = 0
        object grid1: TcxGrid
          Left = 0
          Top = 0
          Width = 289
          Height = 169
          Align = alClient
          BorderStyle = cxcbsNone
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Silver'
          object gridTrans: TcxGridDBTableView
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
              end
              item
                Format = 'Rp ,0.00;- Rp ,0.00'
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Rp ,0.00;- Rp ,0.00'
                Kind = skSum
                Column = gcolmTranssubtotal
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '<Silahkan pilih donatur yang dicetak>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 20
            object gcolmTranstanggal: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 132
            end
            object gcolmTransnama_perkiraan: TcxGridDBColumn
              Caption = 'Jenis Donasi'
              DataBinding.FieldName = 'nama_perkiraan'
              Width = 625
            end
            object gcolmTranssubtotal: TcxGridDBColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'subtotal'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 130
            end
          end
          object cxgrdlvlgrid1Level1: TcxGridLevel
            GridView = gridTrans
          end
        end
      end
      object cxtbsht2: TcxTabSheet
        Caption = 'Cetak'
        ImageIndex = 1
        object dxlytcntrl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 169
          Align = alClient
          TabOrder = 0
          TabStop = False
          object dxlytcntrl2: TdxLayoutControl
            Left = 11
            Top = 11
            Width = 703
            Height = 409
            Align = alClient
            TabOrder = 0
            TabStop = False
            LayoutLookAndFeel = dxlytsknlkndfl1
            object pvwr1: TppViewer
              Left = 11
              Top = 42
              Width = 320
              Height = 120
              BevelOuter = bvNone
              PageColor = clWhite
              Report = prprtRek
              ZoomPercentage = 100
              ZoomSetting = zs100Percent
            end
            object btn6: TcxButton
              Left = 832
              Top = 11
              Width = 42
              Height = 25
              TabOrder = 0
              OnClick = btn6Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFC89561CA9764CA9664CA9664CA9664CA9663C99663C99663CA9764C894
                61FFFFFFFFFFFFFFFFFFA1A1A1797979575757C79460F9F7F6F9F1ECF9F1EBF8
                F0E9F7EDE6F4EAE1F2E8DEFAF8F6C793602323234A4A4A9595956A6A6AA6A6A6
                B4B4B4808080AEABA9C4BFBCC4BFBCC4BFBCC4BFBCC4BFBCC4BFBCACA9A72B2B
                2BB4B4B49A9A9A2222226F6F6FB4B4B4B4B4B49494948080808080807878786D
                6D6D6060605151514242424141416D6D6DB4B4B4B4B4B4242424747474BABABA
                BABABA8C8C8CD4D4D4B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8D3D3D38282
                82BABABABABABA292929797979D7D7D7D7D7D7969696D8D8D8BEBEBEBEBEBEBE
                BEBEBEBEBEBEBEBEBEBEBED7D7D78D8D8DD7D7D7D7D7D73E3E3E7D7D7DF9F9F9
                F9F9F9AAAAAADFDFDFCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBDFDFDFA2A2
                A2F9F9F9F9F9F9606060838383FCFCFCFCFCFCCBCBCBF2F2F2F2F2F2F2F2F2F2
                F2F2F2F2F2F2F2F2F2F2F2F2F2F2C5C5C5FCFCFCFCFCFC707070969696D2D2D2
                E8E8E87C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
                7CE8E8E8C3C3C36C6C6CDDDDDD999999CCCCCCC78A4DF9F4EDFEE8D8FEE8D7FD
                E5D3FCE4D1FAE0C7F9DDC2FAF4EDC78449C2C2C2737373CDCDCDFFFFFFCECECE
                868686C4884BF9F4EFFEE7D7FDE7D5FCE6D2FBE1CCF8DCC1F6DABCFAF4EFC382
                47606060BCBCBCFFFFFFFFFFFFFFFFFFFBFBFBC58B4EF9F4F0FCE6D3FDE7D3FB
                E3CDFAE0C8F5D6BAF3D4B4F8F4F0C38449F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFC78C50F9F5F1FCE3CFFCE4CFFAE1CAF9DDC3F4E9DFF7F2ECF5EFE9C27F
                47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78C51F9F5F1FCE3CDFBE3CDF9
                E0C8F8DCC1FDFBF8FCE6CDE2B583D5A783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFC4874CF7F2ECF8F4EEF8F3EDF8F3EDF8F2ECF2E6D7E2B17CDB9468FDFB
                FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CEB8D7A97CC88B4FC88B4ECA
                9054CB8F54C4884CDCAF8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object cmbZoom: TcxComboBox
              Left = 688
              Top = 13
              Properties.Items.Strings = (
                '50 %'
                '100 %'
                '150 %')
              Properties.OnChange = cmb1PropertiesChange
              Style.HotTrack = False
              TabOrder = 3
              Text = '100 %'
              Width = 62
            end
            object btnFirst: TcxButton
              Left = 573
              Top = 11
              Width = 32
              Height = 25
              TabOrder = 1
              OnClick = btnFirstClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE816EB33212FFFFFFFFFFFFCE816EB332
                12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF826BC3
                5E30B63813FFFFFFCF826BC35E30B63813FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFD48B6AC96A36DA9461B83F13D48B6AC96A36DA9461B83F
                13FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79266D0763CDD9E6DDC
                9A68BC4614D0763CDD9E6DDC9A68BC4614FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FEFDFCDD9D6DD68447E1A87BDB9765DEA070BF5116E1A87BDB9765DEA070BF51
                16FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2A579DC945EE5B28AE0A376DC9966E1
                A579C55B18E0A376DC9966E1A579C55B18FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                DD9663E09C6AE8B794E3AA80DFA071E3AC82C9641AE3AA80DFA071E3AC82C964
                1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7B590E09F70E9BA98E5AE85E6
                B18CCF7129E9BA98E5AE85E6B18CCF7129FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFE9BA98E3A374E9BA98E8B894D47B39E3A374E9BA98E8B894D47B
                39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC3A6E5A579EA
                BC99D98649ECC3A6E5A579EABC99D98649FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEEC8ADE19662DD8F58FFFFFFEEC8ADE19662DD8F
                58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF
                CAB0E29C6BFFFFFFFFFFFFEFCAB0E29C6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object btnPrior: TcxButton
              Left = 611
              Top = 11
              Width = 32
              Height = 25
              TabOrder = 2
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE816EB33212FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFCF826BC35E30B63813FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD48B6AC96A36DA9461B83F13FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79266D0
                763CDD9E6DDC9A68BC4614FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFEFDFCDD9D6DD68447E1A87BDB9765DEA070BF5116FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2A579DC945EE5B28AE0
                A376DC9966E1A579C55B18FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFDD9663E09C6AE8B794E3AA80DFA071E3AC82C9641AFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7B590E09F70E9
                BA98E5AE85E6B18CCF7129FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE9BA98E3A374E9BA98E8B894D47B39FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC
                C3A6E5A579EABC99D98649FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC8ADE19662DD8F58FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFEFCAB0E29C6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object btnNext: TcxButton
              Left = 756
              Top = 11
              Width = 32
              Height = 25
              TabOrder = 4
              OnClick = btnNextClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFBF4D15D38B70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC35817CC703AD28A6CFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFC96119DFA274CF733BD48B6AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD6D22E1A77DE0A578D0
                763CD38A65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFD27634E4AE86DFA071E1A87BD0793ED48A63FEFCFBFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD68342E7B48FE0A273E0
                A376E2AA80D37E42D68A5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFDB8D52EABA98E3A97FE3AA80E4B089D6874ACC7333FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE19661ECC0A0E8B691E9
                BA98DD9660DFA477FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFE29F6DEEC7A7EDC1A2E3A374E6B28CFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6A678EFC8ACE8AF86EC
                C3A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEAAA7FE8A87CF0CDB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE85F3D1BAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object btnLast: TcxButton
              Left = 794
              Top = 11
              Width = 32
              Height = 25
              TabOrder = 5
              Glyph.Data = {
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
            object dxlytgrp2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytgrpdxlytcntrl2Group4: TdxLayoutGroup
                AlignHorz = ahClient
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                object dxlytgrpdxlytcntrl2Group5: TdxLayoutGroup
                  AlignHorz = ahRight
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lbldxlytmdxlytcntrl2Item3: TdxLayoutItem
                    AlignHorz = ahRight
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = btn6
                    ControlOptions.ShowBorder = False
                  end
                  object lbldxlytmdxlytcntrl2Item5: TdxLayoutItem
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = btnFirst
                    ControlOptions.ShowBorder = False
                  end
                  object lbldxlytmdxlytcntrl2Item6: TdxLayoutItem
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = btnPrior
                    ControlOptions.ShowBorder = False
                  end
                  object lbldxlytmdxlytcntrl2Item4: TdxLayoutItem
                    AlignVert = avCenter
                    CaptionOptions.Text = 'Zoom'
                    Control = cmbZoom
                    ControlOptions.ShowBorder = False
                  end
                  object lbldxlytmdxlytcntrl2Item7: TdxLayoutItem
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = btnNext
                    ControlOptions.ShowBorder = False
                  end
                  object lbldxlytmdxlytcntrl2Item8: TdxLayoutItem
                    CaptionOptions.Text = 'cxButton1'
                    CaptionOptions.Visible = False
                    Control = btnLast
                    ControlOptions.ShowBorder = False
                  end
                end
                object lbldxlytmdxlytcntrl2Item2: TdxLayoutItem
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Control = pvwr1
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object dxlytgrpLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object lbldxlytcntrl1Item2: TdxLayoutItem
              AlignHorz = ahClient
              AlignVert = avClient
              Control = dxlytcntrl2
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
      object dxlytgrpLayoutControl1Group3: TdxLayoutGroup
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
        object dxlytgrpLayoutControl1Group1: TdxLayoutGroup
          AlignHorz = ahLeft
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object lblLayoutControl1Item1: TdxLayoutItem
            AlignVert = avCenter
            CaptionOptions.Text = 'Nama Donatur'
            Control = eDonatur
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btnFilter
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object lblLayoutControl1Item2: TdxLayoutItem
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
      Width = 297
      Height = 16
      Caption = 'Mencetak Rekening Koran Donatur Per Priode'
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
      Width = 174
      Height = 20
      Alignment = taCenter
      Caption = 'REKENING KORAN'
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
    Left = 544
    Top = 244
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 384
    Top = 408
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object spTransaksi: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_rek_koran'
    Parameters = <
      item
        Name = 'donatur'
        DataType = ftString
        Size = 100
        Value = 'AA00005'
      end
      item
        Name = 'tgl1'
        DataType = ftString
        Size = 24
        Value = '2013-07-09'
      end
      item
        Name = 'tgl2'
        DataType = ftString
        Size = 24
        Value = '2013-10-10'
      end>
    Prepared = True
    Left = 512
    Top = 244
  end
  object prprtRek: TppReport
    AutoStop = False
    DataPipeline = pdbpln1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 315
    Top = 197
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'pdbpln1'
    object phdrbnd1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object pshp4: TppShape
        UserName = 'pshp4'
        Brush.Color = clTeal
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 6085
        mmLeft = 3704
        mmTop = 34396
        mmWidth = 12965
        BandType = 0
      end
      object pshp3: TppShape
        UserName = 'pshp3'
        Brush.Color = clTeal
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 6085
        mmLeft = 18785
        mmTop = 34396
        mmWidth = 22225
        BandType = 0
      end
      object pshp2: TppShape
        UserName = 'pshp2'
        Brush.Color = clTeal
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 6085
        mmLeft = 42598
        mmTop = 34396
        mmWidth = 112977
        BandType = 0
      end
      object pshp1: TppShape
        UserName = 'pshp1'
        Brush.Color = clTeal
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 6085
        mmLeft = 156369
        mmTop = 34396
        mmWidth = 35454
        BandType = 0
      end
      object pmg1: TppImage
        UserName = 'pmg1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D6167657B570000FFD8FFE000104A46494600010201012C01
          2C0000FFE10D1B45786966000049492A00080000000700120103000100000001
          0000001A01050001000000620000001B010500010000006A0000002801030001
          00000002000000310102001B0000007200000032010200140000008D00000069
          87040001000000A4000000D00000002C010000010000002C0100000100000041
          646F62652050686F746F73686F702043532057696E646F777300323031333A30
          363A31332031363A32343A343300000000030001A0030001000000FFFF000002
          A00400010000005C00000003A004000100000063000000000000000000060003
          01030001000000060000001A010500010000001E0100001B0105000100000026
          01000028010300010000000200000001020400010000002E0100000202040001
          000000E50B00000000000048000000010000004800000001000000FFD8FFE000
          104A46494600010201004800480000FFED000C41646F62655F434D0002FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080063005C03012200
          021101031101FFDD00040006FFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F54493A492
          96493A6494A49290836676154F7576E4555BD8DDEE6B9ED0437F7DCD71FA2929
          324A35DD558D6BAB7B5ED78DCD2D20823F79B0A521252924E924A6BE7E762F4E
          C3BB3B2DDE9E3E3B4BED7C174347276B65C97DB71BEC3FB4377EADE97AFBE0FF
          0037B7D5DDB7E97D0595F5E3FF00123D5BFF000B3D3FFEB15FFB4CFF00D10929
          FFD0F5549251738341712001A92741092972405CBF58FACD9AFBEEE97D06AF53
          A8D2F35DADB1BAB4166E664D3FE0ADAD8FFE73D550BBA85FD7BA9B71F0CDB562
          E3B85D899950DD458EACFE93ED4D76DDEC63FF0045F67DECB37FE9BDFF00E0FA
          8AE8A6B7D8F63035F69DD6B8082E70019B9DFD96ED494F3B5744FAC59590ECAC
          BEA031CFAACBE9A1ADF5454E63054F0C739CC6FA576EB77D3B7F72DFA6AD753F
          AA7D3FA9DF664653EC16DB48A1EE616B416821DB9CDD9EEFA3F45FEC5B70A36B
          DB5B4B9E435A3927409289A79DCFFAA16E4D4E6D3D4AEA0FA428ACED6FB5808B
          1CC67A42A737D5BABA9F628D977D6DE9F6DF63C559B53CB063D4D0ED5EF73286
          D3EA7F81A994D6FC9BF22C67D3B96DE1753C2CE7D8CC5B05BE8C0B1CD9DB27B0
          77E72B65A0883DD24464242E2411DC39FD23AD61755A9EEC576E752ED9681240
          7707D3B2036EAF735DFA562D15CA75BE903A4DD4F5AC1F5BECDD3F73DF834383
          44182ED8D70FE6DDFE1D9EFB3D2FD163AE930AFBB23129BAFA4E3DB6B1AE7D24
          EE2C244EC2E1FBA925CAFAF1FF00891EADFF00859E97FEB15FFB4CFF00D1097D
          78FF00C48F56FF00C2CF4BFF00589FFDA67FE88494FF00FFD1F555CF7D70EA57
          D18230B05ED19D964318D261C1A4EDDCDDCCB2AF7BFF0045E9DDB3D6FE6EBFD2
          2E80F0B9DBBA5752CBFACECCACCA6B7F4EA5A7D1707468DDAFA9B631BE9D9659
          F69FD26DB7D6C7FF00AE24A747A174C1D33A6558B00384BEC6B7E807BBDD636A
          6FE657BBF35AB44F0902B3FAE756AFA5603F21DEEB0FB6A67EF3CF092D9CE308
          99C8D4622C9F245D6FEB062F49AE1FFA5C9709AE969D7FACFF00DC62E13A9F5A
          EA1D4DC4E4DA764FB696E8C1FD9FCEFED2AB91937655CFBEF797DB619738A128
          65227C9E7B9BE7F2672620F0E3FD18FF00DF3D9FD41B5869CBABF3C3DAEFEC96
          EDFE0BAD5E65F57BAA8E97D4597BA7D17FB2E03F74FE77F61CBD299631EC6BD8
          7735E25A47041EEA481B15D9D4F86658CB97101BE3B891FF0074CA02E53A7646
          674FFAD9918395733D0CB97526CB0BEFB0C6FAB634B9EED9533D4AF636AC7A6B
          5D5AE73EB060E53FAC74ECEC7C7B2EF47707595CB8B7DCC3B4D5EBE2D7EF6EEF
          D359EB7D0FE6939BE9FEBC7FE247AB7FE167A7FF00D62BFF00699FFA2147EBBF
          FE247AB7FE167A97FEB15FFB4CFF00D10929FFD2F44EBDD5ABE8FD232BA95837
          0A192C6FEF3CFB6A67F69EE5C2FD43FAF791767D9D3BADDDBCE6586CC6BDDC36
          C7738DFC9A9DFE016E7F8D10F3F552C2DE05F517FC24FF00DF978EFE59E55CE5
          F0C678A57BC8D5F6A4BF482E07EBAE79BFAA0C607F478AD803F96EF73FFE8A87
          D46FF180CC96D7D27AD59B7247B71B29C60583F36BB9C7E8DDFBBFE916AF4FFA
          BBF6FEA995D4BA8366975CFF004693A6FDA4B77BFF00E0FDBEDFDF553363940F
          011AFE14D2F8863C99611C38FF00CA4BD47A0847BBCD60746EA5D435C5A1CE67
          FA477B59FE7BBFEFAB629FA89D41ED9BB22AACF800E77FE4576EC6318D0C6B43
          5ADD03408014946318EAC58FE13822071DCE5E75F93C59FA839035198C3E4586
          3FEA96CF41E9FD5FA60FB264BEBBF146B539A48733F93B5C3E82DB4938440D43
          3E2E4B0E2989E306247691D7CC2870B95FAE5D40E2E5F4B63726FC32EB1C4BF1
          DA1CE703B2BF49D5D965753D8E73FF0039B6AEAD725D4AC7E6FD73C5C2AB2ECA
          3ECCC6B9F5B5AE756F32EBECA9CE69F4D967A6D67F3D5FD0FF00088B69BFF5DF
          FF00123D587FDD67A97FEB15FF00B4CFFD109BEBB8FF00B11EADFF00859E9FFF
          0058AFFDA67FE88494FF00FFD3F45EBFD2D9D5FA3E5F4E768722B2D638F678F7
          54EFECD81780DD4DB8F75945ED35DD4B8B2C61E439A76B9ABE8D225737F59BEA
          2F48EBC4DE41C5CF234C9AC0F74702FAFE8DBFF56AC72D9C63244B589FC121F1
          33E0BADFAB5FE317AA7476B31B35A73F09BA3438C5AC1E15DA7E9B7F9162ABD6
          3EA07D64E945CEFB3FDB71DBFE1B1BDFA7F2EAFE758B9D735CC7963C16BC72D7
          0208FECB95D3EDE5156243F153EE5D23EBB7D5BEAC1A31F31955C79A2F3E9BC1
          F0F7FB5DFD872DC0E6B802D320F046A17CE044F3AAB18FD47A8E2FF46CBBE81E
          15D8E68FB9AE55E5C90FD19FDAAA7E884890353A2F01FF009CBF58A23F69E547
          FC6B956BFA9752C9FE91977DC0F21F63DC3EE2E4D1C94BF7C2A9F75CFF00ACBD
          07A7027333E8A88FCDDE0BBFCC66E7ACFF00AAEDC5CCBF27AD60E5E4DF8994FB
          1ACAEE1B2B9DDBDF652CFA4E6B7F9A6D8F62F1BE93D2F27AB751A70315A4DB7B
          835CE02435A7E9DB67EEB58D5EFDD3B071FA7E151838CDDB4E3B056C1E4073FD
          AFA4A3CF8A38844717148FFCD5399F5E3FF123D5BFF0B3D2FF00D627FF00699F
          FA212FAF1FF891EADFF859E97FEB13FF00B4CFFD10A043FFD4F543C2E4BA8FF8
          C1A707A867E18E999592CE965BF6BBEAD85AD6B803EA6D2E0EDABAD5C1F50FAA
          7F5A5DD5BAE5DD3DF86DC5EB8054FB2E73F7B181BB5C5AC6336EFF00A4929D6E
          B7F5F7A5749C1C1CE6D766657D45A6CA5B54070ADA03DF6BC3E3E86E42FAD1D6
          BEAFD4DC0AF27A7D7D52DEA83762B1C2B682C003F7BB27236B2BFA7FBCB2FF00
          F1BBEAB6E4B2A39EDC7C2C3C21838CE6B058F7B5C3F5B75B5DADD94FACF7BFE8
          394BFE697D653D0BA774ECAAF03A83300D95D98B913B6CAC9FD5ECAB2FD3F5F1
          EDADBECF6A4091B68973F3BA77D4B383819B6F44CAC27750C9188290F35398F3
          FE17DCF757653FCBAD3FD69FA91F553EAEF4EFDA371CDB2B3636AD9558CDD2F9
          F77E959F9BB55BA7EA0F5AABA4F4EC4F5AA7598DD4466BEADEF35D550D3ECF8E
          F7B5CF7AE8BEBAF42CCEBBD26BC3C3358B199355CEF5490DDAC2778F6B5FE29E
          33651B4A5F6A9E0FFE6D7D527E5D18D867A867BB2B09D9F8FE93EAF7B5BFF69C
          3766EF5FDAA7D0FA6FD57CAEA67007D5FEA36D943DACCA37DA08A67BE432A733
          6AE93A3FD46C8E91F5C4F55C5B19FB27D3B0554171DF5BADF73AAAD91B7D1F53
          F94B47A0FD5FCEE9FD7BAEF50BCD669EA9635F8E1A4970003BF9D05A36FD244E
          7CA779CBED5389D1FEBB743C3A68387D0EDC2C0C8C8FB23726B15106C9887B58
          EF5DEBBE5E5F87FE2DFEB154DA6B1F62C7BAAC9178EA6C7DA721AD9DDE9319B5
          B52F50120004C9F151D93B9BF34387F5E3FF00123D5BFF000B3D3FFEB13FFB4C
          FF00D10AE75FE98FEADD1733A6D760A9F9753AA1638486EEEFB425FB31FF00B0
          7F656F1BFEC9F65F52349F4FD0DFB5253FFFD5F54497CAC924A7EA948AF95924
          94FD5292F9592494FD5292F9592494FD529D7CAA924A7EAA497CAA924A7FFFD9
          FFED11BA50686F746F73686F7020332E30003842494D04250000000000100000
          00000000000000000000000000003842494D03ED000000000010012C00000001
          0002012C0000000100023842494D042600000000000E00000000000000000000
          3F8000003842494D040D0000000000040000001E3842494D0419000000000004
          0000001E3842494D03F3000000000009000000000000000001003842494D040A
          00000000000100003842494D271000000000000A000100000000000000023842
          494D03F5000000000048002F66660001006C66660006000000000001002F6666
          000100A1999A0006000000000001003200000001005A00000006000000000001
          003500000001002D000000060000000000013842494D03F80000000000700000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF03E800003842494D0408000000000010000000010000
          024000000240000000003842494D041E000000000004000000003842494D041A
          00000000033D000000060000000000000000000000630000005C000000040068
          0065006100640000000100000000000000000000000000000000000000010000
          0000000000000000005C00000063000000000000000000000000000000000100
          00000000000000000000000000000000000010000000010000000000006E756C
          6C0000000200000006626F756E64734F626A6300000001000000000000526374
          310000000400000000546F70206C6F6E6700000000000000004C6566746C6F6E
          67000000000000000042746F6D6C6F6E670000006300000000526768746C6F6E
          670000005C00000006736C69636573566C4C73000000014F626A630000000100
          0000000005736C6963650000001200000007736C69636549446C6F6E67000000
          000000000767726F757049446C6F6E6700000000000000066F726967696E656E
          756D0000000C45536C6963654F726967696E0000000D6175746F47656E657261
          7465640000000054797065656E756D0000000A45536C69636554797065000000
          00496D672000000006626F756E64734F626A6300000001000000000000526374
          310000000400000000546F70206C6F6E6700000000000000004C6566746C6F6E
          67000000000000000042746F6D6C6F6E670000006300000000526768746C6F6E
          670000005C0000000375726C54455854000000010000000000006E756C6C5445
          5854000000010000000000004D7367655445585400000001000000000006616C
          74546167544558540000000100000000000E63656C6C54657874497348544D4C
          626F6F6C010000000863656C6C54657874544558540000000100000000000968
          6F727A416C69676E656E756D0000000F45536C696365486F727A416C69676E00
          00000764656661756C740000000976657274416C69676E656E756D0000000F45
          536C69636556657274416C69676E0000000764656661756C740000000B626743
          6F6C6F7254797065656E756D0000001145536C6963654247436F6C6F72547970
          65000000004E6F6E6500000009746F704F75747365746C6F6E67000000000000
          000A6C6566744F75747365746C6F6E67000000000000000C626F74746F6D4F75
          747365746C6F6E67000000000000000B72696768744F75747365746C6F6E6700
          000000003842494D042800000000000C000000013FF00000000000003842494D
          041100000000000101003842494D0414000000000004000000013842494D040C
          000000000C01000000010000005C000000630000011400006ABC00000BE50018
          0001FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F
          434D0002FFEE000E41646F626500648000000001FFDB0084000C08080809080C
          09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D
          100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800
          63005C03012200021101031101FFDD00040006FFC4013F000001050101010101
          0100000000000000030001020405060708090A0B010001050101010101010000
          0000000000010002030405060708090A0B100001040103020402050706080503
          0C33010002110304211231054151611322718132061491A1B14223241552C162
          33347282D14307259253F0E1F163733516A2B283264493546445C2A3743617D2
          55E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F556667686
          96A6B6C6D6E6F637475767778797A7B7C7D7E7F7110002020102040403040506
          07070605350100021103213112044151617122130532819114A1B14223C152D1
          F0332462E1728292435315637334F1250616A2B283072635C2D2449354A31764
          4555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666
          768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C0301000211031100
          3F00F54493A49296493A6494A49290836676154F7576E4555BD8DDEE6B9ED043
          7F7DCD71FA2929324A35DD558D6BAB7B5ED78DCD2D20823F79B0A521252924E9
          24A6BE7E762F4EC3BB3B2DDE9E3E3B4BED7C174347276B65C97DB71BEC3FB437
          7EADE97AFBE0FF0037B7D5DDB7E97D0595F5E3FF00123D5BFF000B3D3FFEB15F
          FB4CFF00D10929FFD0F5549251738341712001A92741092972405CBF58FACD9A
          FBEEE97D06AF53A8D2F35DADB1BAB4166E664D3FE0ADAD8FFE73D550BBA85FD7
          BA9B71F0CDB562E3B85D899950DD458EACFE93ED4D76DDEC63FF0045F67DECB3
          7FE9BDFF00E0FA8AE8A6B7D8F63035F69DD6B8082E70019B9DFD96ED494F3B57
          44FAC59590ECACBEA031CFAACBE9A1ADF5454E63054F0C739CC6FA576EB77D3B
          7F72DFA6AD753FAA7D3FA9DF664653EC16DB48A1EE616B416821DB9CDD9EEFA3
          F45FEC5B70A36BDB5B4B9E435A3927409289A79DCFFAA16E4D4E6D3D4AEA0FA4
          28ACED6FB5808B1CC67A42A737D5BABA9F628D977D6DE9F6DF63C559B53CB063
          D4D0ED5EF73286D3EA7F81A994D6FC9BF22C67D3B96DE1753C2CE7D8CC5B05BE
          8C0B1CD9DB27B077E72B65A0883DD24464242E2411DC39FD23AD61755A9EEC57
          6E752ED96812407707D3B2036EAF735DFA562D15CA75BE903A4DD4F5AC1F5BEC
          DD3F73DF83438344182ED8D70FE6DDFE1D9EFB3D2FD163AE930AFBB23129BAFA
          4E3DB6B1AE7D24EE2C244EC2E1FBA925CAFAF1FF00891EADFF00859E97FEB15F
          FB4CFF00D1097D78FF00C48F56FF00C2CF4BFF00589FFDA67FE88494FF00FFD1
          F555CF7D70EA57D18230B05ED19D964318D261C1A4EDDCDDCCB2AF7BFF0045E9
          DDB3D6FE6EBFD22E80F0B9DBBA5752CBFACECCACCA6B7F4EA5A7D1707468DDAF
          A9B631BE9D9659F69FD26DB7D6C7FF00AE24A747A174C1D33A6558B00384BEC6
          B7E807BBDD636A6FE657BBF35AB44F0902B3FAE756AFA5603F21DEEB0FB6A67E
          F3CF092D9CE30899C8D4622C9F245D6FEB062F49AE1FFA5C9709AE969D7FACFF
          00DC62E13A9F5AEA1D4DC4E4DA764FB696E8C1FD9FCEFED2AB91937655CFBEF7
          97DB619738A12865227C9E7B9BE7F2672620F0E3FD18FF00DF3D9FD41B5869CB
          ABF3C3DAEFEC96EDFE0BAD5E65F57BAA8E97D4597BA7D17FB2E03F74FE77F61C
          BD299631EC6BD87735E25A47041EEA481B15D9D4F86658CB97101BE3B891FF00
          74CA02E53A7646674FFAD9918395733D0CB97526CB0BEFB0C6FAB634B9EED953
          3D4AF636AC7A6B5D5AE73EB060E53FAC74ECEC7C7B2EF47707595CB8B7DCC3B4
          D5EBE2D7EF6EEFD359EB7D0FE6939BE9FEBC7FE247AB7FE167A7FF00D62BFF00
          699FFA2147EBBFFE247AB7FE167A97FEB15FFB4CFF00D10929FFD2F44EBDD5AB
          E8FD232BA958370A192C6FEF3CFB6A67F69EE5C2FD43FAF791767D9D3BADDDBC
          E6586CC6BDDC36C7738DFC9A9DFE016E7F8D10F3F552C2DE05F517FC24FF00DF
          978EFE59E55CE5F0C678A57BC8D5F6A4BF482E07EBAE79BFAA0C607F478AD803
          F96EF73FFE8A87D46FF180CC96D7D27AD59B7247B71B29C60583F36BB9C7E8DD
          FBBFE916AF4FFABBF6FEA995D4BA8366975CFF004693A6FDA4B77BFF00E0FDBE
          DFDF553363940F011AFE14D2F8863C99611C38FF00CA4BD47A0847BBCD60746E
          A5D435C5A1CE67FA477B59FE7BBFEFAB629FA89D41ED9BB22AACF800E77FE457
          6EC6318D0C6B435ADD03408014946318EAC58FE13822071DCE5E75F93C59FA83
          9035198C3E45863FEA96CF41E9FD5FA60FB264BEBBF146B539A48733F93B5C3E
          82DB4938440D433E2E4B0E2989E306247691D7CC2870B95FAE5D40E2E5F4B637
          26FC32EB1C4BF1DA1CE703B2BF49D5D965753D8E73FF0039B6AEAD725D4AC7E6
          FD73C5C2AB2ECA3ECCC6B9F5B5AE756F32EBECA9CE69F4D967A6D67F3D5FD0FF
          00088B69BFF5DFFF00123D587FDD67A97FEB15FF00B4CFFD109BEBB8FF00B11E
          ADFF00859E9FFF0058AFFDA67FE88494FF00FFD3F45EBFD2D9D5FA3E5F4E7687
          22B2D638F678F754EFECD81780DD4DB8F75945ED35DD4B8B2C61E439A76B9ABE
          8D225737F59BEA2F48EBC4DE41C5CF234C9AC0F74702FAFE8DBFF56AC72D9C63
          244B589FC121F133E0BADFAB5FE317AA7476B31B35A73F09BA3438C5AC1E15DA
          7E9B7F9162ABD63EA07D64E945CEFB3FDB71DBFE1B1BDFA7F2EAFE758B9D735C
          C7963C16BC72D70208FECB95D3EDE5156243F153EE5D23EBB7D5BEAC1A31F319
          55C79A2F3E9BC1F0F7FB5DFD872DC0E6B802D320F046A17CE044F3AAB18FD47A
          8E2FF46CBBE81E15D8E68FB9AE55E5C90FD19FDAAA7E884890353A2F01FF009C
          BF58A23F69E547FC6B956BFA9752C9FE91977DC0F21F63DC3EE2E4D1C94BF7C2
          A9F75CFF00ACBD07A7027333E8A88FCDDE0BBFCC66E7ACFF00AAEDC5CCBF27AD
          60E5E4DF8994FB1ACAEE1B2B9DDBDF652CFA4E6B7F9A6D8F62F1BE93D2F27AB7
          51A70315A4DB7B835CE02435A7E9DB67EEB58D5EFDD3B071FA7E151838CDDB4E
          3B056C1E4073FDAFA4A3CF8A38844717148FFCD5399F5E3FF123D5BFF0B3D2FF
          00D627FF00699FFA212FAF1FF891EADFF859E97FEB13FF00B4CFFD10A043FFD4
          F543C2E4BA8FF8C1A707A867E18E999592CE965BF6BBEAD85AD6B803EA6D2E0E
          DABAD5C1F50FAA7F5A5DD5BAE5DD3DF86DC5EB8054FB2E73F7B181BB5C5AC633
          6EFF00A4929D6EB7F5F7A5749C1C1CE6D766657D45A6CA5B54070ADA03DF6BC3
          E3E86E42FAD1D6BEAFD4DC0AF27A7D7D52DEA83762B1C2B682C003F7BB27236B
          2BFA7FBCB2FF00F1BBEAB6E4B2A39EDC7C2C3C21838CE6B058F7B5C3F5B75B5D
          ADD94FACF7BFE8394BFE697D653D0BA774ECAAF03A83300D95D98B913B6CAC9F
          D5ECAB2FD3F5F1EDADBECF6A4091B68973F3BA77D4B383819B6F44CAC27750C9
          188290F35398F3FE17DCF757653FCBAD3FD69FA91F553EAEF4EFDA371CDB2B36
          36AD9558CDD2F9F77E959F9BB55BA7EA0F5AABA4F4EC4F5AA7598DD4466BEADE
          F35D550D3ECF8EF7B5CF7AE8BEBAF42CCEBBD26BC3C3358B199355CEF5490DDA
          C2778F6B5FE29E33651B4A5F6A9E0FFE6D7D527E5D18D867A867BB2B09D9F8FE
          93EAF7B5BFF69C3766EF5FDAA7D0FA6FD57CAEA67007D5FEA36D943DACCA37DA
          08A67BE432A7336AE93A3FD46C8E91F5C4F55C5B19FB27D3B0554171DF5BADF7
          3AAAD91B7D1F53F94B47A0FD5FCEE9FD7BAEF50BCD669EA9635F8E1A4970003B
          F9D05A36FD244E7CA779CBED5389D1FEBB743C3A68387D0EDC2C0C8C8FB23726
          B15106C9887B58EF5DEBBE5E5F87FE2DFEB154DA6B1F62C7BAAC9178EA6C7DA7
          21AD9DDE9319B5B52F50120004C9F151D93B9BF34387F5E3FF00123D5BFF000B
          3D3FFEB13FFB4CFF00D10AE75FE98FEADD1733A6D760A9F9753AA1638486EEEF
          B425FB31FF00B07F656F1BFEC9F65F52349F4FD0DFB5253FFFD5F54497CAC924
          A7EA948AF9592494FD5292F9592494FD5292F9592494FD529D7CAA924A7EAA49
          7CAA924A7FFFD9003842494D042100000000005300000001010000000F004100
          64006F00620065002000500068006F0074006F00730068006F00700000001200
          410064006F00620065002000500068006F0074006F00730068006F0070002000
          43005300000001003842494D04060000000000070008000100010100FFE11803
          687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F78
          7061636B657420626567696E3D27EFBBBF272069643D2757354D304D70436568
          69487A7265537A4E54637A6B633964273F3E0A3C783A786D706D65746120786D
          6C6E733A783D2761646F62653A6E733A6D6574612F2720783A786D70746B3D27
          584D5020746F6F6C6B697420332E302D32382C206672616D65776F726B20312E
          36273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A2F2F77
          77772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D
          6E73232720786D6C6E733A69583D27687474703A2F2F6E732E61646F62652E63
          6F6D2F69582F312E302F273E0A0A203C7264663A4465736372697074696F6E20
          7264663A61626F75743D27757569643A35303661376531352D643438302D3131
          65322D383730332D653062336434306333383062270A2020786D6C6E733A6578
          69663D27687474703A2F2F6E732E61646F62652E636F6D2F657869662F312E30
          2F273E0A20203C657869663A436F6C6F7253706163653E343239343936373239
          353C2F657869663A436F6C6F7253706163653E0A20203C657869663A50697865
          6C5844696D656E73696F6E3E39323C2F657869663A506978656C5844696D656E
          73696F6E3E0A20203C657869663A506978656C5944696D656E73696F6E3E3939
          3C2F657869663A506978656C5944696D656E73696F6E3E0A203C2F7264663A44
          65736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E2072
          64663A61626F75743D27757569643A35303661376531352D643438302D313165
          322D383730332D653062336434306333383062270A2020786D6C6E733A706466
          3D27687474703A2F2F6E732E61646F62652E636F6D2F7064662F312E332F273E
          0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A44657363
          72697074696F6E207264663A61626F75743D27757569643A3530366137653135
          2D643438302D313165322D383730332D653062336434306333383062270A2020
          786D6C6E733A70686F746F73686F703D27687474703A2F2F6E732E61646F6265
          2E636F6D2F70686F746F73686F702F312E302F273E0A20203C70686F746F7368
          6F703A486973746F72793E3C2F70686F746F73686F703A486973746F72793E0A
          203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372
          697074696F6E207264663A61626F75743D27757569643A35303661376531352D
          643438302D313165322D383730332D653062336434306333383062270A202078
          6D6C6E733A746966663D27687474703A2F2F6E732E61646F62652E636F6D2F74
          6966662F312E302F273E0A20203C746966663A4F7269656E746174696F6E3E31
          3C2F746966663A4F7269656E746174696F6E3E0A20203C746966663A58526573
          6F6C7574696F6E3E3330302F313C2F746966663A585265736F6C7574696F6E3E
          0A20203C746966663A595265736F6C7574696F6E3E3330302F313C2F74696666
          3A595265736F6C7574696F6E3E0A20203C746966663A5265736F6C7574696F6E
          556E69743E323C2F746966663A5265736F6C7574696F6E556E69743E0A203C2F
          7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074
          696F6E207264663A61626F75743D27757569643A35303661376531352D643438
          302D313165322D383730332D653062336434306333383062270A2020786D6C6E
          733A7861703D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
          2E302F273E0A20203C7861703A437265617465446174653E323031332D30362D
          31335431363A32333A35342D30383A30303C2F7861703A437265617465446174
          653E0A20203C7861703A4D6F64696679446174653E323031332D30362D313354
          31363A32343A34332D30383A30303C2F7861703A4D6F64696679446174653E0A
          20203C7861703A4D65746164617461446174653E323031332D30362D31335431
          363A32343A34332D30383A30303C2F7861703A4D65746164617461446174653E
          0A20203C7861703A43726561746F72546F6F6C3E41646F62652050686F746F73
          686F702043532057696E646F77733C2F7861703A43726561746F72546F6F6C3E
          0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A44657363
          72697074696F6E207264663A61626F75743D27757569643A3530366137653135
          2D643438302D313165322D383730332D653062336434306333383062270A2020
          786D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F62652E636F6D
          2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E74
          49443E61646F62653A646F6369643A70686F746F73686F703A33343637636661
          632D643438302D313165322D383730332D6530623364343063333830623C2F78
          61704D4D3A446F63756D656E7449443E0A203C2F7264663A4465736372697074
          696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75
          743D27757569643A35303661376531352D643438302D313165322D383730332D
          653062336434306333383062270A2020786D6C6E733A64633D27687474703A2F
          2F7075726C2E6F72672F64632F656C656D656E74732F312E312F273E0A20203C
          64633A666F726D61743E696D6167652F6A7065673C2F64633A666F726D61743E
          0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E
          0A3C2F783A786D706D6574613E0A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A3C3F787061636B657420656E643D2777273F
          3EFFEE000E41646F626500644000000001FFDB00840001010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0102020202020202020202020303030303030303030301010101010101010101
          0102020102020303030303030303030303030303030303030303030303030303
          0303030303030303030303030303030303030303030303FFC00011080063005C
          03011100021101031101FFDD0004000CFFC400B9000001030403010000000000
          00000000000A000809020406070103050B010100020105010000000000000000
          0000000103020405060708091000000601020402040A06070900000000010203
          0405060711080021120931134151221471D13242921516171819615223B4490A
          91A12478C83989F081B16272A233882911000103020403060305070305000000
          000100110203042131120541060751617181221391A132F0B1C14208D1E1F162
          2333095214157253241617FFDA000C03010002110311003F003F5F2CBEA1FA46
          F8F8225E597D43F48DF1F044BCB2FA87E91BE3E0897965F50FD237C7C112F2CB
          EA1FA46F8F8225E597D43F48DF1F044BCB2FA87E91BE3E0897965F50FD237C7C
          112F2CBEA1FA46F8F8225E597D43F48DF1F045A8B3DE6FC67B68C3791B3E6629
          C5EB18BB13D5A46E77AB0A115313CAC3D76248551FBE2C4413590977C2890DA8
          9104543006A3A6803C112FBEBC6FF719F88FFAED6FBA3FBACFBE9FB4BF56CA79
          9F771F64FEDC7D7DF537BB7D75D5F667F6FEEFE47BCEBECF97D5CB822FFFD03F
          8E0897044B822A40E437C9394DCC4391807980E821C87C407822E0144CDA0828
          41EAE65D0C51D4341372E7CF9008FC01C116B1B1E70C2F4E9A95AE5B72EE32AB
          5860ABC95B6720AC57CAB424C4355577046A859256364A55B3C8E815DD1C1323
          B588440E710281847970459841DBAA9676713235BB2C04FB09E8E197837B0B31
          1F26D66624A72266948A5D938592908E2A8A14A2B24274C04C01AF30E08BDD15
          920D755130D3C7539434E601A8F3E41A88704558080F8080E83A0E83AE83EAF8
          7822E78228ADEF83CFB4677060F41B6CF7F2983D653B444A628FACA62888087A
          407822AB9FE4B3A73E8FCAD7A7A7A03A34FC26756BAF99E3AFFCBF1F045FFFD1
          3F8E089704568B3C49B8E8A0183DA294043A4C2613090BA14A06138880A85E5A
          6A3D41A6BC11412EF0FB9766798BDE47DA4F6F0C7CA5C77598FADF378FB20465
          E6B0E1BCA54993FA1FD7558CD38CDA3B3AD48BD53ABD6972D5B4C2336EA3D422
          4E5BA8088A0E9BAEA1164156D91F710CAD7D96CBD98F780C711BB3E5BC7F99F1
          D62AAF57DC6616786ADB4FC6F1B41B146C04BCD4F56208D46C8CC66AC21255A3
          33731C9AEAB29248E57A0B07045BE372FDA8B016EBEEF6CC9196AD5929BDD2E9
          87A230CDA252992F5AAE3299828B7F112C125271A5A8BA09A72B48C2A6A118C9
          2AFA31A98E7322810FA1860399691124A89CA14E027524045697CF1DA22C9956
          B3271747DEAE6AC6CFC988E2B0A54DE92B3443A74FC7D1EFE1EDB2759AF2F498
          DC7B35171977C894E809196324F01D15A4728C9AAA822E95E265E99089CD4BC4
          81284C4A27B178163B77765DB75B329D8A79A62CDC5D2A79E525AE1AA14143DA
          9107D7FB85D29B8AE0B1A3CB991F1A471DE3FAAE38A8C9DDAD370958A51A3492
          B3193399EA4C8BEF045223B4ADE9615DDCD56CD2B8A66949794C7D39F652FB1C
          CD379210D1B6641472C5F854AE678E8E82C894F09B8D7AD594F4698ECA441A19
          7274A6726A44F0804040043C040043E01E61C1145777C1FF0028DEE0BFDDA6FB
          FBB21C1177747FF15FCCD797E569D3A6A6D35FC27EBAF4EBD3AE9E9D35E08BFF
          D23F8E08AC645F231ACDC3F72BB56AD19A0BBB78E9EAE9B56AD5A3648CAB872E
          5CAA6222D5B209944EA2A71E94C85111E08A01AD9B83BE7711DCD41E37C24FB2
          E50F0FE29B54065BDBC6E5B1BB22DB36F5946DD8DA545ADCD7CFD1126DE15AD9
          2AB01666E78067513C8C54C924DC37996C93E405078C08A76A028B53AC4ADAA7
          E0ABD0D0F3D7B966D3F77968A8E6CC1EDAE759C44657DA4B4E384132AD24F99C
          14335648AAB18EA26D5BA6981B42F04594A69153130944743080E823C8340D00
          03E0E08B1FB24DC7D7A39E4B4CBF8D8A886298AEF64A59D22CD8344134C44CBB
          970B2C8A692441F1113072E2655A16F4FDC91C81E203799C16D7B8EE7B2ED76B
          7B7BCCB774EDF69A51075CCB4406F5638AD3586772D86F3F4C5CE0F115C185DB
          EEF1C4534B54BC022F8F5E6B232C0F146B1EC26D54526B28E4A8B139D5F77155
          3214C5D4E023A715D0BA85D4275213D4C59C623E391F118762E27C91D45E4CE7
          99EE54F92F7185D5A5B102728BE907833C63FBD6FD518B759255154853A6B954
          22C5311231142AA919050A64CC4148C53A26E81012E825F1D78CD7602806DEC6
          D11B6CDEDF8D77CDB7E4B320622DA9276FB9D9F6A5842D55BA9C1962660D1EF6
          79C5561E5E25DA28D2E6D76C44AD51ED93949A5A01B378BAFB56ADCA74848A6B
          F0BDEEDB91714635BD5F71CC9E25B95D29B5EB258F194B4A349D94A2CB4D46B7
          7EE6B321331E920C241EC40ADE5AE74CA5E9380944A06298008981F7C1FF0028
          DEE0BFDDA6FBFBB21C115D7F052FF4B7FF0009BC117FFFD33F638801444444A1
          CB9878F88720FD26F0F5F0450F7DDFB72179C7983D960AC0365AF34DC6675908
          7ACD6A25CCD844D8636AB3536D613EBC89526E8B75C7D20EAC16651AC0250F61
          522D1B226FDD3160BA8FC0888913B7D8A6D9D0DA96D9281894CD63594BA24776
          EB943D741DA74E87BCDBDC1266D71547845153B3AD5519CBAAA11060C5168C11
          50CAA88366C453C92113C8700228980A63107D8D0C4EA1317DB2F30E91030FFB
          6BC480E5948AB1A24549D33288E003BBE1963DBE59A603BD4DFEE30D9D4026D6
          5C54BA6569A62ABAA8632857C92126E1B81BCB4E6ACCEC7DE095FAEA6B6822B2
          898ACE0BD454087129BA76ADDB76B5DB6DC994FD640E3F37FC062BCFFD68FD41
          F2B743B6FAB2E659C6BEF170246DE85321F22DAD9CC43B63A7F6A13ADCB6F3F7
          03BAF929077956EEF0D5D23A05E1B1D578EEE268702994DC889C495D28695760
          99003DEDE8B954C3A887400F4075C5FEE9777F1A47DF98A65F072DF87CDD7C81
          EAB75FBA81D4EDCF6FBADDB7FBCA1B6D413152CE9D7AB1B630D43DB2680D348C
          8C7EA9186A97690A6C7B06D9A25CD3F71156FD9A53ED6EB4EB18A62242AEAC1C
          956D68D66A149ECA864CAF6396D4DA74E862FAC38E67CAD5634ECE56F2FACFEF
          CFEE75EE0FF1E35ECED79779EB6C9E8FF9295C53A9C35E866FFAB4B907B1D10C
          6A1E1A86BE3E3E8F0D78E50BE8EAA144935007AD34CFA97A47AC806031444044
          A601F945110F0E0887D76EF7ECC1B6BEEC796F6FF97322D1CF8E33F2D25338CD
          6C879464EEB9FF002ECA8C5FDA5A2BDADC4BFB4D9E4A3EB5458069370EE63D8C
          0D42B114DD103945E39326A9C89DD77BF394FDA37B837498A6D36D37DD7A4407
          4D5A3730787ACA203F00F045DFD46FC967A741E9FCAD35F11D35FC277ABC38C3
          D91AFDFF00724ECDA5F0F1654FBB3F7FD9D1E8D2EEBFFFD43F27025044E27001
          287488808943901835E66E403A7C1F0878F104800928039650C96CDAB6E4330F
          73AAF65DCD98E28762DAD63F82769637978DB63568BB6635B695CB3D1A32E55B
          8A3D52E56CB6B6CCC8B9992B09D2D929EC9B249AED4AD5F944CAD76F50DC0993
          4A54D8FE66C7C189F9B772CB4F78532A9B82974268A9FDAD00FEC98A206F6804
          0FD40262000E8023A88FA447C78BE103386BC8639F71655C25ACDC066F6D9DF8
          B87C3F7B268DBDEDD7D7368F81AC99264524646CEE8E9D731F571C1C08160B94
          911418F6EB010E0A7D5D1C8A4A3B7821CC1BA06287B462EBB76E77B1B0B6AB5A
          4099018336672CF876AE9DEB9756AD3A39C81B8F35CE91A9B9E911B7A6C3D552
          7210064091E98096A2CF9336281FF21645B9E56B758321640B0BCB25D6D724BC
          ACF4CBD58C2BB972E0407DDD14C85220D23D8940116A82452248372153214003
          8EAEBCAD737D753AB567FD33DBF3E19AF83BCE1CE3BEF3C732EE5CCFCCD56BDD
          FBF527202A1C21A8FA445880044360033E6B0AD7A07DA0307B22060FD6EAF4F3
          FD1C63EDC6074C4831C1BF15C584295C53A9FD68FBE6434B9384402E0E7961DA
          9F076F9DD3A3B4ADC4D5AF728773F60AC282D4CC9AD5B94E25FB372EBA628CEA
          49A627554735D9349BBCE92944C289554C9AF506BBB6D77F2B3DC295499FFC63
          81EDC47677163E4BD2BFA62EAA43A63D5DB4DC773957A9CBF7B4CDBCE9D11194
          8994468918CE54E2D19872D376C589C11BC41D8A267A2E366E0DCA52B1538C5A
          4AC5BF8F55172D1F473F44AE193E6CBA6A9915D072D5429C144CC621807501E3
          B3E9445587BB198F6F81E07C30E2BEE5D0DC2175B6D8EEB6B42A54B4B8889474
          889204B1065EA61F12B2021BAC35E931798868600011D074D43411F64DE21FA3
          8AC1120E16E04337A81C382851EE0784B26CDEF0B6659F719E1FC8790C71C276
          1899DB8E3E5272D2EEACA05C29AF13827D8FC73C609A7346968863BEF7BB24C1
          ECA44528D069F568F5875CA818ADA3DEDF9768EEE0E1D2242936D17E02947ACC
          01D48227104943800993298C21A78000068001CB832CB4975E8749FF00259EBD
          43CBFCACFA7A7D3D5F84FF001F0D7FAF89D31FAB1D7F25468ADFEE331ECB79BF
          C3F15FFFD5336DF8EECEB9B24DA2E72DCF5959A52A8E2DA63A9281813AA287DA
          7B9C9BA6D0548AE144142ABD13767926A8A8251EA2202A1FC0A221BF72BEC35B
          99B7FDB363A1FDCAF51BC23106723E22312CA6398427FD86FBED640BCE79B86D
          8F7E193559F75B83BFCB5DB0A653B1B906D1755C8D6372674FF092CECC54D08A
          A44C74805589A11064B202CF5105C9D1DEDD64E8FC286C5B66EBCB36A6228538
          8AF180771163A986720E5D9CC867880AE72C1D1BAF5993298E7D080061128080
          6BA6A3EC8807A44478F3908C64D18E382AA40D5AB4A9D23DF2F0423BDE973AAD
          7DDCE218ADB3E39AB3846B4DE3116E5308A0ADD2D84466AC8F4FD26E93289449
          1AB4113144C9151301004C71EAE01CCD75395CC2D9C681F579E3F7E1E4BE387E
          BAFA8D5B9BFA936BC9D65589DAB68818D5032F748189EF12311833E0F9262B82
          B667B8FDC92647788B15CFCBC20AFE41AE33676F5BA411400EA5012B24B0B76F
          20040F0F7323A1D791BA4DECF1B25BED17BB8C9A845E1DBD9E6EC17447227417
          ABDD42A34E3B4ECB58ECD2200A84C0418F1794E3E7DFDD8A92AA8F628CFF0032
          CD15AEB99B17D45750A2651945C5596D2E11E63A262B7970CD14E92FCE298407
          D5C6F14394AE288119CE2E3F8B61D9E0DDE57A4B6EFF001F3CCF73468D7B9E76
          B3B5AB2CE8CE8D6A93891DB380102F986258605662E3B086406E9F9AD7723497
          2A94A6FD83FC796149AAC26012826A99B4EA8A95336BCF401F8078BA7CA7715E
          12A50AF1133910E0F6F10CB793FE3D77BABA68C7A8B654EA1CA42DEB4482317D
          52F48F3FBD499EC3300EED76AECD4C4194ECB8FF0028616408E5C51E7A0E5A5D
          9D8A82B75F9AA44122661814AFAAEE95308A69117F399A826E90121FA4BCAB6C
          A171B6DA46DABD48C8F6E2E3B8E0011E191F12FEBDFD3DF4FF00AB1D27A173CB
          1CE3CC14B74E5F18509C49D54C77391E939B316EE5288DCC064F50F49CE22021
          A08184C2220251E651FD03A0E9C6B0F82F4C53A7ED890621E44FC4BA80AEF1F9
          F5E622CB7B128188CDF9DF6FCFE6321DD241CD9F0457E0ED561B43076E28F514
          2912D51B6E47A5D16C10333276428AC0F18D85D313205728332980543C2B6398
          4E77BDB9449DA33B82A6738A8A936CD7CF30C20051388B747550085F6485398A
          3C834D3D41C4AB3885E8E9FF00C56D75FE16DF27FF0053FC78C9FD2CCB1D71D5
          EDFE7775FFD69C8FE68A692EE7B52DB1489F385A32CEB849E58BC9F3449F5204
          EC8B628AFE5EA4F27EBB70CF513FB3D605F9DA71DC5D06F67FFA5F2F8AEC01A5
          7001E225FEDEA62FDACE3CD5B4D8CE382F9B20F9827F30AA2E92A9394D44D741
          6F2176EE0AE53541CA0B90A2B22EDAAC6F388720944AA17AB5D741E3DBF693A7
          285F6D979015295571EAF50E3C0B85ABD31FF484767D8DBBFE42E508CA6ECDF7
          CF7442172CB12B5AD618CEF637C0CE0F2C354008D2329B91651F9CC843649215
          44D264F57383799294802A15DF502DE47EAE747EF397BDFE62E5E8098AD22656
          F005A9E4D28C412044E646988C5C2D3D78D0A54E7791A8D5A944FA416D4E30C1
          F1C80F9F717FDB7DEDDC4DC56E773A6E837250ABAD4391CD37C1C718F64525DA
          A575240D8E4225BD96CC539C1C16A4884514193403F449682A2A506E09A66F27
          5AED3717F7952FF7CB5F66E213908D23E9D4320650203E6F887271E0BE76F207
          E9B2F39DBAAFCEDD4DEA3ED508EDF2BA99A169569834EEB51612AB4E60467180
          69B4A1279806241892A7F21E1622123D9C344C647C6C64720937651B1ECDB336
          0C9048BD0922D59364936ED914C800052940000038E514E11A4068888B060C19
          87606C97BEF65DA6D397F6DA3B76D76D4EDED29C5A30A5114E1103846306000E
          C017B254C9D3A74134D47974869E3F07191949DF515AE84E64399977ED550A64
          12894485128F897A4341F8434D388D5277D45D2A46356261540944E60E23E697
          969F2F609C8750F64390FAC3970249CCBA989D31118E11ECE0AA0294BC8A0000
          22223A000731F11E5E91E21DF3524939943CDB93B1CBE79EF2982303D4771391
          F178E17A552ECB3D4D80AF5A27B1E6457693E9FCA374A2CECA43CC054EAF7177
          4F8B8B7605B1C33E68EE34A506AF9B3AE86EE0A13BFEF769097B487709388682
          7DB4DF35E5CC03DDD21293A80A501227A8F4878E83CF98F052E7B57A5D25FC94
          F5D035FCADF4D740D74FC27786BC1D63A46AD6C35F6F1F8AFFD7336DFB6D7227
          797B3CDC16DAA54EDDB2F9531D4AC357A49C14872435D638C49DA2CDF528412A
          01116F8F68B18FA724CA6D796A1C6F9CB3BCDC72FEFF00B66EF44FF66A396CF4
          C818C9BBF49382B29969C4AF90CDBE9969C6F70B763CBE42BCAC5E283659CA7D
          D2BB2098A2F60ACB5B91562E5229D203ED11766BA4052806A6553129F4D0C1AF
          D24D8A769CCBCBD63B8EDB7308DD88832D648270070D2240F9B2D7B7F3058E2A
          4228064544FA9337250A6D00C0A0289A86EA274144C1AB74C3430F510C026288
          720E33954A06BD595E52352B90048100C300006F807C1451B6B234379378266E
          EA447B0DF48222DFD4721819760960888BB6A7F313EE7B64EC60315E728A7BBA
          6DBEC39116112C2666FDC330E3E896C88B66ACAA1777E5748596098A7EDA7193
          4073944C62A6F520D078E8BE7EE8FEDFCC62F374D98D2B7DE24448471109970F
          A8089C74BB4A21DC005C6544C4EF2C36F37B469D3DD6813FDA714E4188791689
          258E6607218E4C68DB49EF59DB7B786D631BE3CDC6546977A9048BE7E2BCC6E9
          9E2EBF3275A09946446563748C44EAC9187A7CC8C7CF523F2129B986BE65E61E
          9F73472FCAA46EAC7DCA23F3D32651F83098F38B788C551ED56C019031FB7C7C
          94AA339164FDB20F183849FB3725151078C5423B6AB27A7502892EDCCA26A90E
          03C84A2203C70BF6AB520615E06150662418FC16328E92C70579D7CBE49FE0D3
          9FFC74E2AAB53DB84A4226721C2399F076FBD43639AEA51CA4810EAAE604124C
          A273AAB095348850D444C750C60210A500D444440038C28D5AB5C88C6CEA891E
          0C1FE522A74F610532ACEDDC9B619B686ABAF9B376384296E50054060CF7B859
          CB42AA221A9D042AD5B71316159C6A3A0101B750FAB8E49B6F2C6FFBB111B2DA
          AACB1E23481E72202914E521A9BD299D76BF8FC5B9AEF39C77D380B705B98C99
          84B375EB254355E9F986095A7E3B3CB2D766560B1DD71BD6DE1D94B4BC3C43D6
          84AFB097918F6F202DDB28DBCC51BA09113A37ED9AEF976EE8595F4A12B99C41
          229932D0EEC264801F0FCBA865C141890F885B43BE0FF946F705FEED37DFDD90
          E36958ABAFE0A5FE96FF00E137822FFFD03F45922AC999337C9369E1A6BC8404
          0435010F10E0E4631CD482C5C2845EE67D8B768BDC4567D909CA0FF06EE49764
          08A39C31F4731595B2FB92644D8B2CA750585AC45F23922882655D43B5924531
          E94DD943420F61F2675277EE54AB4E31A9AEC410F025983E3A4E2D8702E3B182
          B45593E324137BC2EC0FDC83688E64A4D3C4AAEE3319C719C1D1C91B7B23BB81
          8B1C874F92E2C58FD42257EAF39310C0072A6CE41B10C03FDA0439F1EABE5EEB
          7F27EF56B6D1BAAA295FC9C4A3370707C8B1890C33123DEC705A8849E23D58A8
          619366F61651D414EC6C8C24D3138A4FE126983D889966B8008F94EA22510692
          4D7A0035EB51321750D039F1D9B61B8ED7762175655355618C40E3F2ECEF59E7
          9E6AC96448EC0DEF28A0E533180DFB54115523180003DA4D50508A1800A1CCC0
          3A8F1AF9CAD2E5CDE59828FC16E6C7DB8ADC4624E82E29DC066FC6C925A026DA
          8B956F15866402F3294AC22A71BB02A6411F6480901003C038D92F396391EFE7
          2AF77CB3EF55930326705830E1C32554A96A3A96F437729EE2866C2D14DF56EB
          0EDC43A4486CD16F298435D403CD23E2ADC843D06E3631C89D3C35A228F26D38
          567C2469C5878BC7EC505290CA5F7AD2779DC9EE4328955264CDC3E74C808AC0
          3E7A372CBD7E9C60A08F88AB1CFE7D58E389B4D0754B9E9A0F1BE5B72CF2ED9C
          44686D34A14C708C4003C8283449C64715EA6D436C3913785B89C6FB76C470CF
          642DD92AD1190B2730C183890674AADBB7088D92F96C74D1050917075B8A50CE
          9459D0A68287149229C4EA74857B9F3572DF206D7BB6E177631D13A24433FA84
          4E4DC5C85669D14DBC57D78B6F783685B6CC2D8BB036308B4E1B1FE25A4C0D26
          AEC914934054650CCC88AB22ED3480A43494CBD155E3B3E802AB95D438F330F1
          F346E775DDB79DFB7ADCAFE2051AD50CA3C736C062EC0601C64B492D3A411F57
          14C5BBE0FF00946F705FEED37DFDD90E3355ABAFE0A5FE96FF00E137822FFFD1
          3F35844133087572D07426BD420060D403A404DCC3972E7EAE3197D2548CD0F0
          EE13F9816A5813701BB7C2CDB63DBA8CC55DD923EAF2BB83CB18B96C732F5CA6
          54AC51B1D2085D5D423EB247CEA50A895E2C41012828516C739FA12EA392A38B
          C64E42C99D8ADA1BD9EFCBB55D9DE0EDA967E8AA8E46DC1D5B7715995C818F21
          7172510CAC7158B602063A7ACD902CB1F63771C68E8FAF124D26CE913094C9B8
          22A022514CDC4D314A94469800FD814312E1D60DDCFB7A1B01AA30DA7D67276C
          FA81BDCBB6F7619D5970540CDC6E14A943BEA6B48386B1AB6396CCF98DCC2C05
          4817653ED08D512BE2B978B1CA54C0A61294DBED8733733ED1A3FE0779BAA358
          6318C2ACE117381700B64FC1642751C3CCE1DEA1A7396DE7B2EBAC27B50CE571
          ED7BBAADB8CB6ECF740CF6AED31B475FA7B1458A8F717EA2697DB706D2F6C97A
          8DC71B392ADE6339585059B3C003F945D48250E6FB77577A9B68D4EB5F8AA47F
          DD91A848E04E11F2C8E18ACB54B232C7EDDEAEBBA67648ED4FDB436E89EE66E6
          EF7C76AA9AF926A98D7ECAE3BC9D8C9CCF367970465DCB494497BD53D066AB08
          94A11531C8754CB2A26297510E394D1FD44751E85316F6B42CE51188F41F13C4
          F1560A92ED3F14D1BF2DAED312F96B17E2EC1EE7B866E99FE6AD935977B78955
          C5B7BC1C88DE6BF5651EB35F1247C4BAA534972E4F70FA2166CB36504A56EF11
          51130029A871654FD45F52F133B3B234D8674C8FBC90C9EE49B390F35946C876
          DBDAF72E6E56436FADFB3FF724BA5AB1ADEEB94DCF7219B331C1CC41602565BD
          E8CDE4B2DD7E8364AEA71717EECC155552948A18C528EA3A871C6375EBAF54AE
          E1314E16F4CC87A4D3060E4FFA5E320F8B870CB1F727C265BEDDEA4EB683DECF
          6458469F8C1E611ED6B93B6D9B6CCBBB814B6C11B9A31FB4C14F63A432A1A4C9
          1E31D3F075CB39B2AD952646709AEABA76DD5D1BF5090E73A424E3AF773E66E6
          9E61943FF67DC2E2AD689C213A929420E19E312231048CC8887ED2B3225286A9
          4BCBEC7F822ED00D3A79730E5AFA7C07D23A88F1B7706192D2BE78E0A2BBBE11
          80BDA37B828984003F0D57C0D44740D4CDD02943E1111D38850AEFF8297FA5BF
          F84EE08BFFD23F53EA25100F11D03D3E910F56A3C4483820291814255B81ED39
          DD2E4F75DDD32E5B6CB06CE61B0FF7328781C7562B5E57B4E4E739031F63F8EA
          CB783949284AC55EA078A56C2EC8F1EA6292CE5D23E5992301887D74ACC24E71
          CD65A86182C58FFCBB7BA7B764BAED59EEEDAB988B6F9B7CD8D41ECAF074D572
          9303956F390606D916FDCE7F94BC52EF108DAB98F1B648B2D924BCB562DEBB7E
          DA3CA8249A8998A6506B952A84E120CAE855A71800462BDC37696EE54BEC6B66
          BB66CAD53D816ED6036B72392A9370C039D3ED12F5CC978CA4DEF9B896E144DC
          1B4A18E53C459069D18F948D76DD91BC9708316AAF9AA7B48F11EC4E4D194DA3
          DA1DFF000CF2C08C144A74FD5A5DCAC2EA3D8337A155DA86CDB0D2993712CD59
          30DF72663BC8B2D157BE5FE431CE15C40D5BB3648E1DC373D638195B0595C479
          5A8B937BDA11C82ABAA6D4C0601556A8EDB4E47D57F5DBCBF6AC3505333DE9F6
          2F97BB84ED369B83F0C3BA1B2B2C0EE5F0BE58963E49949189AD38A85024A55C
          59191CF19093CBBC7CF1AC8796922644892802603284E5AD91B2D264D7750024
          E1E2FC7BB30A350C314C2B685D8D6FFB2CEF0AEF77989AD54DFC139B1DE568FA
          362C7960B01AEB88A7B2D26DA4A72874FAFB98871065C74CAD445DE35326F915
          C13703E626A2A5139D0B49C4826F6A1CF02CDF6E2A090C714F27625DBFF38EDB
          77DDDD677257E91A0BAA06F5EFF52B6E216B5A9B9390B2308D8361646CED3BB4
          7BC838E6510ECEA4AA62983772F0860036A6010D06FF00648722EAA63E18620E
          1F729D41A2878711FF002DEF70EA931C77586896C87125E295B92699B9B6F7E9
          B907374C6E62BD586D632C9A945AFD79BD66128AE63936A1AA40B1115551004D
          45CA51130053909991A86596273568A9110D2F8E28F09AA6AA2D9B24B2E774AA
          48249AAE942249A8E54226043B83A689534533AC60EA1294A52808E80001C5AB
          4FDB8A691BFCDB44CEF23665B91DAE57AD51D459ACE98AAC98E63AE12F1CEE5A
          36BCE27D24920927B1B1EF18BC7CD9104C7AD14D64C4E03A6BA6BC428F35CFE1
          AE6FF019F840FB5113F68BF095F870FB69F573BFA97EB8FB9DFBB1FB51F54FBC
          7BFF00D59EFBFDAFDDFCEF3BC9F63AFAB9F045FFD33F53787A7C4BE3A7EB07AB
          D3C4A956E3E3ED75F806BAEBFAE3A6BE5FCFF83969E3E8E0A7E0B90D39E9AEBA
          8E9AF574F80FCBD796BEAD7D1C42C575ADF37E5E9D45EAF574748E9E3CF4D7F5
          7F69A78F2E08BBBE693C7A7CB0F93AE9E05D3C7F69A7ABF4F8F04540FA34E9F9
          63F0EBE58F8F5FCEF57CDFEAE313E68917C0BAF99F37A7C7FEDE8E7A6BFAFE9F
          D1C4638FD5F252BB07D3F2B5E7F23FF26BA975F1F67E1F47AB862DF9942A074F
          6F4EBF943AFCAD7FDDAF2E9FFA7863FCC8AE7FA7863FCC897F4F0C7F99171E9F
          4F138B7E658FE65FFFD9}
        mmHeight = 24077
        mmLeft = 3704
        mmTop = 4498
        mmWidth = 25135
        BandType = 0
      end
      object lblNamaDonatur: TppLabel
        UserName = 'lblNamaDonatur'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lblNamaDonatur'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 10583
        mmWidth = 22490
        BandType = 0
      end
      object lblAlamat: TppLabel
        UserName = 'lblNamaDonatur1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lblNamaDonatur'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 14817
        mmWidth = 22490
        BandType = 0
      end
      object lblTlp: TppLabel
        UserName = 'lblTlp'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lblNamaDonatur'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 19844
        mmWidth = 22490
        BandType = 0
      end
      object lbl5: TppLabel
        UserName = 'lbl5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rekening Koran'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Lucida Console'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7938
        mmTop = 529
        mmWidth = 25929
        BandType = 0
      end
      object lbl6: TppLabel
        UserName = 'lbl6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 7938
        mmTop = 35454
        mmWidth = 3969
        BandType = 0
      end
      object lbl7: TppLabel
        UserName = 'lbl7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tanggal'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 24871
        mmTop = 35454
        mmWidth = 11377
        BandType = 0
      end
      object lbl8: TppLabel
        UserName = 'lbl8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Jenis Donasi'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 35454
        mmWidth = 17198
        BandType = 0
      end
      object lbl9: TppLabel
        UserName = 'lbl9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Jumlah'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 166159
        mmTop = 35454
        mmWidth = 9790
        BandType = 0
      end
    end
    object lblL1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object pdbtxttanggal: TppDBText
        UserName = 'pdbtxttanggal'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tanggal'
        DataPipeline = pdbpln1
        DisplayFormat = 'mm/dd/yy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pdbpln1'
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object pdbtxtnama_perkiraan: TppDBText
        UserName = 'pdbtxtnama_perkiraan'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'nama_perkiraan'
        DataPipeline = pdbpln1
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbpln1'
        mmHeight = 3704
        mmLeft = 42598
        mmTop = 265
        mmWidth = 110861
        BandType = 4
      end
      object pdbtxtsubtotal: TppDBText
        UserName = 'pdbtxtsubtotal'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'subtotal'
        DataPipeline = pdbpln1
        DisplayFormat = '#,0;-#,0'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pdbpln1'
        mmHeight = 3704
        mmLeft = 156369
        mmTop = 265
        mmWidth = 32808
        BandType = 4
      end
      object pdbclc2: TppDBCalc
        UserName = 'pdbclc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'nama_perkiraan'
        DataPipeline = pdbpln1
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'pdbpln1'
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 265
        mmWidth = 11906
        BandType = 4
      end
    end
    object pftrbnd1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object psystmvrbl1: TppSystemVariable
        UserName = 'psystmvrbl1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 529
        mmWidth = 31750
        BandType = 8
      end
      object lbl3: TppLabel
        UserName = 'lbl3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cetak'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 529
        mmWidth = 8202
        BandType = 8
      end
    end
    object psmrybnd1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object pln2: TppLine
        UserName = 'pln2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 3704
        mmTop = 3175
        mmWidth = 188119
        BandType = 7
      end
      object pln1: TppLine
        UserName = 'pln1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 3704
        mmTop = 1058
        mmWidth = 188119
        BandType = 7
      end
      object pdbclc1: TppDBCalc
        UserName = 'pdbclc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'subtotal'
        DataPipeline = pdbpln1
        DisplayFormat = '#,0;-#,0'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pdbpln1'
        mmHeight = 3704
        mmLeft = 153723
        mmTop = 2117
        mmWidth = 35454
        BandType = 7
      end
      object lbl10: TppLabel
        UserName = 'lblNamaDonatur2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Zakat'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5821
        mmTop = 2117
        mmWidth = 16404
        BandType = 7
      end
      object lbl11: TppLabel
        UserName = 'lbl11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Infaq'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 69586
        mmTop = 2117
        mmWidth = 15875
        BandType = 7
      end
      object lblTotalZakat: TppLabel
        UserName = 'lblTotalZakat'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Zakat'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 47096
        mmTop = 2117
        mmWidth = 16404
        BandType = 7
      end
      object lblTotalInfaq: TppLabel
        UserName = 'lblTotalInfaq'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Infaq'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 112448
        mmTop = 2117
        mmWidth = 15875
        BandType = 7
      end
      object plnAlamat: TppLine
        UserName = 'plnAlamat'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 3704
        mmTop = 1058
        mmWidth = 13229
        BandType = 7
      end
      object pln4: TppLine
        UserName = 'pln4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 65352
        mmTop = 1058
        mmWidth = 13229
        BandType = 7
      end
      object pln5: TppLine
        UserName = 'pln5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 130440
        mmTop = 1058
        mmWidth = 13229
        BandType = 7
      end
      object pln6: TppLine
        UserName = 'pln6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 178594
        mmTop = 1058
        mmWidth = 13229
        BandType = 7
      end
      object lbl14: TppLabel
        UserName = 'lbl14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 132292
        mmTop = 2117
        mmWidth = 7408
        BandType = 7
      end
      object plblKemitraan: TppLabel
        UserName = 'plblKemitraan'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'plblKemitraan'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3792
        mmLeft = 170039
        mmTop = 8467
        mmWidth = 19138
        BandType = 7
      end
      object plblCKemitraan: TppLabel
        UserName = 'plblCKemitraan'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Kemitraan :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 108655
        mmTop = 8467
        mmWidth = 23901
        BandType = 7
      end
      object plnBawah: TppLine
        UserName = 'plnBawah'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 102394
        mmTop = 10848
        mmWidth = 89429
        BandType = 7
      end
      object plnKanan: TppLine
        UserName = 'plnKanan'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 178594
        mmTop = 6879
        mmWidth = 13229
        BandType = 7
      end
      object plnKiri: TppLine
        UserName = 'plnKiri'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 102394
        mmTop = 6879
        mmWidth = 13229
        BandType = 7
      end
    end
    object prmtrlst1: TppParameterList
    end
  end
  object pdbpln1: TppDBPipeline
    DataSource = dsTransaksi
    UserName = 'pdbpln1'
    Left = 283
    Top = 197
  end
  object sp1: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_rek_koran_total'
    Parameters = <
      item
        Name = 'donaur'
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = 'tgl1'
        DataType = ftString
        Size = 111
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftString
        Size = 111
        Value = Null
      end
      item
        Name = 'zkat'
        DataType = ftString
        Size = 16
        Value = '1'
      end
      item
        Name = 'infaq'
        DataType = ftString
        Size = 100
        Value = '4'
      end>
    Prepared = True
    Left = 616
    Top = 244
  end
end
