unit UDetailPengeluaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, 
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, Menus,
  dxLayoutControl, StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxPC, UGeneral, Transaksi, ADODB, dxLayoutLookAndFeels, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxCurrencyEdit, cxLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData;

type
  TfrmDetailPengeluaran = class(TFGeneral)
    dxLayoutControl1: TdxLayoutControl;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    gridDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    qryDetailTransaksi: TADOQuery;
    dsDetailTransaksi: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    gcolmDetailno_bukti: TcxGridDBColumn;
    gcolmDetailsub_total: TcxGridDBColumn;
    gcolmDetailnama_perkiraan: TcxGridDBColumn;
    gcolmDetailketerangan: TcxGridDBColumn;
    gcolmDetailpenerima_manfaat: TcxGridDBColumn;
    gcolmDetailnama_kab_kota: TcxGridDBColumn;
    gcolmDetailnama_lengkap: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDetailTransaksi:TFDetailTransaksi;
  public
    { Public declarations }
    procedure LihatDetail(noKwitansi:String);
  end;

var
  frmDetailPengeluaran: TfrmDetailPengeluaran;

implementation



{$R *.dfm}

procedure TfrmDetailPengeluaran.cxButton1Click(Sender: TObject);
begin
  Release;
end;

procedure TfrmDetailPengeluaran.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmDetailPengeluaran.LihatDetail(noKwitansi:String);
begin
  qryDetailTransaksi.DisableControls;
  qryDetailTransaksi.Close;
  qryDetailTransaksi.Parameters[0].Value:=noKwitansi;
  qryDetailTransaksi.Open;
  qryDetailTransaksi.EnableControls;
end;

procedure TfrmDetailPengeluaran.FormCreate(Sender: TObject);
begin
  FDetailTransaksi:=TFDetailTransaksi.Create(Self);
  Koneksikan;
  FDetailTransaksi.ADOQuery:=qryDetailTransaksi;
end;

procedure TfrmDetailPengeluaran.FormShow(Sender: TObject);
begin
  cxGrid1.SetFocus;
end;

end.
