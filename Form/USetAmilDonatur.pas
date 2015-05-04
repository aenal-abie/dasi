unit USetAmilDonatur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, 
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, 
  cxDBLookupComboBox, Menus, StdCtrls, cxButtons,
  dxSkinsdxBarPainter, dxBar, ADODB, dxGDIPlusClasses, pngimage,
  ExtCtrls, cxDBExtLookupComboBox,UGeneral, dxLayoutLookAndFeels, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppParameter, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, jpeg, UHijriah, ppModule, raCodMod,
  cxPC, dxLayoutControlAdapters, ppViewr, ActnList, cxLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmSetAmilDonatur = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dsDonatur: TDataSource;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridAmil: TcxGridDBTableView;
    gcolmgridcxgrdvwrpstry1DBTableView1kode_amil: TcxGridDBColumn;
    gcolmgridcxgrdvwrpstry1DBTableView1nama_amil: TcxGridDBColumn;
    gcolmgridcxgrdvwrpstry1DBTableView1handphone: TcxGridDBColumn;
    spAmil: TADOStoredProc;
    dsAmil: TDataSource;
    spDonatur: TADOStoredProc;
    cxpgcntrl1: TcxPageControl;
    dxlytmLayoutControl1Item2: TdxLayoutItem;
    cxtbsht1: TcxTabSheet;
    lbl3: TLabel;
    dxlytgrpLayoutControl2Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    grid: TcxGrid;
    gridDonatur: TcxGridDBTableView;
    gcolmDonaturkode_amil: TcxGridDBColumn;
    gcolmDonaturkode_donatur: TcxGridDBColumn;
    gcolmDonaturnama_lengkap: TcxGridDBColumn;
    gcolmDonaturnama_laporan: TcxGridDBColumn;
    gcolmDonaturtempat_lahir: TcxGridDBColumn;
    gcolmDonaturtanggal_lahir: TcxGridDBColumn;
    gcolmDonatursuami_istri: TcxGridDBColumn;
    gcolmDonaturalamat_rumah: TcxGridDBColumn;
    gcolmDonaturtlp_rumah: TcxGridDBColumn;
    gcolmDonaturhandphone: TcxGridDBColumn;
    gcolmDonaturkantor: TcxGridDBColumn;
    gcolmDonaturalamat_kantor: TcxGridDBColumn;
    gcolmDonaturtelp_kantor: TcxGridDBColumn;
    gcolmDonaturmulai_bulan: TcxGridDBColumn;
    gcolmDonaturmulai_tahun: TcxGridDBColumn;
    gcolmDonaturcara_bayar: TcxGridDBColumn;
    gcolmDonaturjemput: TcxGridDBColumn;
    gcolmDonatursetiap_tanggal: TcxGridDBColumn;
    gcolmDonaturkode_kab: TcxGridDBColumn;
    cxgrdlvl: TcxGridLevel;
    cxtbsht2: TcxTabSheet;
    dxlytgrpLayoutControl2Group_Root1: TdxLayoutGroup;
    dxlytcntrl2: TdxLayoutControl;
    ds: TDataSource;
    qryAmil: TADOQuery;
    dxlytmdxlytcntrl2Item1: TdxLayoutItem;
    grid1: TcxGrid;
    grid2: TcxGridDBTableView;
    gcolmKode: TcxGridDBColumn;
    gcolmAmilnama_amil: TcxGridDBColumn;
    gcolmAmiltempat_lahir: TcxGridDBColumn;
    gcolmAmiltgl_lahir: TcxGridDBColumn;
    gcolmAmiljenis_kelamin: TcxGridDBColumn;
    gcolmAmilalamat: TcxGridDBColumn;
    gcolmAmilhandphone: TcxGridDBColumn;
    gcolmAmilstatus_nikah: TcxGridDBColumn;
    gcolmAmilistri_suami: TcxGridDBColumn;
    gcolmAmiljumlah_anak: TcxGridDBColumn;
    gcolmAmilpendidikan_terakhir: TcxGridDBColumn;
    gcolmAmilGelar: TcxGridDBColumn;
    gcolmAmilkode_kab: TcxGridDBColumn;
    gcolmAmilkode_posisi: TcxGridDBColumn;
    gcolmAmilKab: TcxGridDBColumn;
    gcolmAmilposisi: TcxGridDBColumn;
    gridKabupaten: TcxGridDBTableView;
    gcolmKabupatenkode_kab: TcxGridDBColumn;
    gcolmKabupatennama_kab_kota: TcxGridDBColumn;
    gridPosisi: TcxGridDBTableView;
    gcolmPosisikode_posisi: TcxGridDBColumn;
    gcolmPosisiposisi: TcxGridDBColumn;
    cxgrdlvlgrid1Level1: TcxGridLevel;
    btn2: TcxButton;
    dxlytmdxlytcntrl2Item2: TdxLayoutItem;
    dxlytgrpdxlytcntrl2Group1: TdxLayoutGroup;
    actlst1: TActionList;
    act1: TAction;
    LCIdxlytcntrl2Item1: TdxLayoutItem;
    btn1: TcxButton;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btn3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCheckClick(Sender: TObject);
    procedure gcolmDonaturkode_amilPropertiesChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetAmilDonatur: TfrmSetAmilDonatur;

implementation

uses
  UDetailDonaurPerAmil;


{$R *.dfm}

procedure TfrmSetAmilDonatur.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfrmSetAmilDonatur.btnCheckClick(Sender: TObject);
begin
  if(cek_kosong=True) then
  begin
    with spDonatur do
    begin
      Close;
      Parameters[0].Value:=1;
      Parameters[1].Value:=100;
      Open;
    end;
  end;
end;

procedure TfrmSetAmilDonatur.gcolmDonaturkode_amilPropertiesChange(
  Sender: TObject);
begin
  spDonatur.Post;
end;

procedure TfrmSetAmilDonatur.btn1Click(Sender: TObject);
begin

if not spAmil.IsEmpty then
  begin
    if not assigned(Application.FindComponent('frmDetailPengeluaran')) then
    begin
      frmDetailPerAmil := TfrmDetailPerAmil.Create(Application);
    end;
    frmDetailPerAmil.LihatDetail(gcolmKode.DataBinding.Field.AsString);
    frmDetailPerAmil.BringToFront;
  end;
end;

procedure TfrmSetAmilDonatur.btn3Click(Sender: TObject);
begin
  Koneksikan(spDonatur);
end;

end.
