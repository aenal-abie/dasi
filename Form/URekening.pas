unit URekening;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxGDIPlusClasses, StdCtrls, pngimage, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinscxPCPainter, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, Menus, cxButtons, Provider, DBClient, ADODB,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxLayoutLookAndFeels, ActnList,UGeneral,
  cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TFrmRekening = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    grid: TcxGrid;
    gridRekening: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    btnOK: TcxButton;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    spNull: TADOStoredProc;
    ds1: TDataSource;
    cdsRekening: TClientDataSet;
    dtstprvdr1: TDataSetProvider;
    strngfldds2no_rekening: TStringField;
    strngfldds2bank: TStringField;
    gcolmRekeningno_rekening: TcxGridDBColumn;
    gcolmRekeningbank: TcxGridDBColumn;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    actlstRek: TActionList;
    actAdd: TAction;
    btn1: TcxButton;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    procedure actAddExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRekening: TFrmRekening;

implementation

{$R *.dfm}

procedure TFrmRekening.actAddExecute(Sender: TObject);
begin
  cdsRekening.Append;
  cdsRekening.Post;
end;

procedure TFrmRekening.FormCreate(Sender: TObject);
begin
  Koneksikan(spNull);
  cdsRekening.Open;
end;

end.
