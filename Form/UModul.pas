unit UModul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, Menus, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxMaskEdit, cxDropDownEdit, cxMemo, cxTextEdit,
  dxGDIPlusClasses, pngimage, ExtCtrls;

type
  TFrmModul = class(TForm)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    e1: TcxTextEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    m1: TcxMemo;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    cmb1: TcxComboBox;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    grid1DBTableView1: TcxGridDBTableView;
    grid1Level1: TcxGridLevel;
    grid1: TcxGrid;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    btn1: TcxButton;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    btn2: TcxButton;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    btn3: TcxButton;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    btn4: TcxButton;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup;
    btn5: TcxButton;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModul: TFrmModul;

implementation

{$R *.dfm}

end.
