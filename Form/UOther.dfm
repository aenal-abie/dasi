object frmLain: TfrmLain
  Left = 108
  Top = 101
  Width = 928
  Height = 419
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
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 104
    Top = 48
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 0
    OnClick = btn1Click
  end
  object mmo1: TMemo
    Left = 392
    Top = 48
    Width = 313
    Height = 305
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
  object sp1: TADOStoredProc
    Tag = 1
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    ProcedureName = 'sp_add_modul'
    Parameters = <
      item
        Name = 'q'
        DataType = ftString
        Size = 2
        Value = 'wq'
      end
      item
        Name = 'qw'
        DataType = ftString
        Size = 4
        Value = 'wqwq'
      end
      item
        Name = 'w'
        DataType = ftString
        Size = 2
        Value = '12'
      end>
    Left = 312
    Top = 48
  end
end
