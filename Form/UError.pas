unit UError;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, cxMemo,
  pngimage, ExtCtrls, dxLayoutControl, dxLayoutcxEditAdapters,dxSkinOffice2007Silver,
  dxLayoutLookAndFeels, cxLookAndFeels;

type
  TfrmError = class(TForm)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    img1: TImage;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    m1: TcxMemo;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    e1: TcxTextEdit;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    e2: TcxTextEdit;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    btn1: TcxButton;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmError: TfrmError;

implementation

{$R *.dfm}

end.
