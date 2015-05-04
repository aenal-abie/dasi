unit UDetailTransaksi;

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
  dxSkinXmas2008Blue, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData;

type
  TfrmDetailTransaksi = class(TFGeneral)
    dxLayoutControl1: TdxLayoutControl;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    btnLihatKencrengan: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    qryDetailTransaksi: TADOQuery;
    dsDetailTransaksi: TDataSource;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1kode_kwitansi: TcxGridDBColumn;
    cxGrid1DBTableView1id_perkiraan: TcxGridDBColumn;
    cxGrid1DBTableView1subtotal: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1nama_perkiraan: TcxGridDBColumn;
    qryDetailTransaksiid: TLargeintField;
    qryDetailTransaksikode_kwitansi: TStringField;
    qryDetailTransaksiid_perkiraan: TStringField;
    qryDetailTransaksisubtotal: TFloatField;
    qryDetailTransaksiketerangan: TStringField;
    qryDetailTransaksinama_perkiraan: TStringField;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    FDetailTransaksijumlah: TSmallintField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnLihatKencrenganClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDetailTransaksi:TFDetailTransaksi;
  public
    { Public declarations }
    procedure LihatDetail(noKwitansi, INOUT:String);
  end;

var
  frmDetailTransaksi: TfrmDetailTransaksi;

implementation

uses UKencrengan;

{$R *.dfm}

procedure TfrmDetailTransaksi.cxButton1Click(Sender: TObject);
begin
  Release;
end;

procedure TfrmDetailTransaksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmDetailTransaksi.LihatDetail(noKwitansi, INOUT: String);
begin
  FDetailTransaksi.LihatDetailTransaksi(noKwitansi, INOUT);
end;

procedure TfrmDetailTransaksi.FormCreate(Sender: TObject);
begin
  FDetailTransaksi:=TFDetailTransaksi.Create(Self);
  Koneksikan;
  FDetailTransaksi.ADOQuery:=qryDetailTransaksi;
end;

procedure TfrmDetailTransaksi.btnLihatKencrenganClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmKencrengan')) then
  begin
    frmKencrengan:=TfrmKencrengan.Create(Application);
    frmKencrengan.FormStyle:=fsStayOnTop;
  end;
  frmKencrengan.Tag:=1;
  frmKencrengan.setKencrengan(qryDetailTransaksikode_kwitansi.Value,FDetailTransaksijumlah.Value);
  frmKencrengan.BringToFront;
end;

procedure TfrmDetailTransaksi.FormShow(Sender: TObject);
begin
  cxGrid1.SetFocus;
end;

end.
