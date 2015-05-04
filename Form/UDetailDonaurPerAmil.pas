unit UDetailDonaurPerAmil;

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
  cxData, scExcelExport;

type
  TfrmDetailPerAmil = class(TFGeneral)
    dxLayoutControl1: TdxLayoutControl;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dsDetailDonatur: TDataSource;
    GridRepcxgrdvwrpstry2: TcxGridViewRepository;
    gridDetailDonatur: TcxGridDBTableView;
    gcolmgrid3kode_donatur: TcxGridDBColumn;
    gcolmgrid3nama_lengkap: TcxGridDBColumn;
    gcolmgrid3suami_istri: TcxGridDBColumn;
    gcolmgrid3alamat_rumah: TcxGridDBColumn;
    gcolmgrid3tlp_rumah: TcxGridDBColumn;
    gcolmgrid3handphone: TcxGridDBColumn;
    gcolmgrid3kantor: TcxGridDBColumn;
    gcolmgrid3alamat_kantor: TcxGridDBColumn;
    gcolmgrid3telp_kantor: TcxGridDBColumn;
    gcolmgrid3jemput: TcxGridDBColumn;
    gcolmgrid3setiap_tanggal: TcxGridDBColumn;
    gcolmgrid3nama_kab_kota: TcxGridDBColumn;
    LCILayoutControl1Item1: TdxLayoutItem;
    btn3: TcxButton;
    qryDetailDonatur: TADOQuery;
    btnEksport: TcxButton;
    LCILayoutControl1Item2: TdxLayoutItem;
    scxclxprtLap: TscExcelExport;
    qryEksport: TADOQuery;
    Fqry1kode_donatur: TStringField;
    Fqry1nama_lengkap: TStringField;
    Fqry1tempat_lahir: TStringField;
    dtfldqry1tanggal_lahir: TDateField;
    Fqry1suami_istri: TStringField;
    Fqry1alamat_rumah: TStringField;
    Fqry1tlp_rumah: TStringField;
    Fqry1handphone: TStringField;
    Fqry1kantor: TStringField;
    Fqry1alamat_kantor: TStringField;
    Fqry1telp_kantor: TStringField;
    Fqry1mulai_bulan: TStringField;
    Fqry1mulai_tahun: TStringField;
    Fqry1cara_bayar: TStringField;
    Fqry1jemput: TStringField;
    Fqry1setiap_tanggal: TSmallintField;
    Fqry1nama_kab_kota: TStringField;
    Fqry1nama_kecamatan: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btnEksportClick(Sender: TObject);
  private
    { Private declarations }
    FDetailTransaksi: TFDetailTransaksi;
    kode_amil:String;
  public
    { Public declarations }
    procedure LihatDetail(kode_amil: string);
  end;

var
  frmDetailPerAmil: TfrmDetailPerAmil;

implementation

uses UKoneksi;

{$R *.dfm}

procedure TfrmDetailPerAmil.cxButton1Click(Sender: TObject);
begin
  Release;
end;

procedure TfrmDetailPerAmil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDetailPerAmil.LihatDetail(kode_amil: string);
begin
  Self.kode_amil:=kode_amil;
  with qryDetailDonatur do
  begin
    DisableControls;
    Close;
    Parameters[0].Value := kode_amil;
    Open;
    EnableControls;
  end;

end;

procedure TfrmDetailPerAmil.FormCreate(Sender: TObject);
begin
  FDetailTransaksi := TFDetailTransaksi.Create(Self);
  Koneksikan;
end;

procedure TfrmDetailPerAmil.FormShow(Sender: TObject);
begin
  cxGrid1.SetFocus;
end;

procedure TfrmDetailPerAmil.btn3Click(Sender: TObject);
var
  pado: TADOQuery;
  str: string;
  begin
    try
      str := QuotedStr(gcolmgrid3kode_donatur.DataBinding.Field.AsString);
      pado := TADOQuery.Create(Application);
      pado.Connection := ADOKoneksi;
      pado.SQL.Add('update tbl_donatur set kode_amil=null where ' +
        'kode_donatur=' + str);
      pado.ExecSQL;
      pado.Free;
      Koneksikan(qryDetailDonatur);
    finally

    end;
  end;

procedure TfrmDetailPerAmil.btnEksportClick(Sender: TObject);
begin
  with qryEksport do
  begin
    DisableControls;
    Close;
    Parameters[0].Value := kode_amil;
    Open;
    EnableControls;
  end;
  scxclxprtLap.Disconnect();
  scxclxprtLap.Dataset:=qryEksport;
  scxclxprtLap.LoadDefaultProperties;
  scxclxprtLap.FontHeader.Size := 14;
  scxclxprtLap.StyleColumnWidth := cwAutoFit;
  scxclxprtLap.ExportDataset;
end;

end.

