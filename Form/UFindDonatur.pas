unit UFindDonatur;

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
  dxSkinscxPCPainter, 
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, Menus,
  dxLayoutcxEditAdapters, dxLayoutControl, ADODB, dxLayoutLookAndFeels,
  dxGDIPlusClasses, StdCtrls, pngimage, ExtCtrls, cxMaskEdit, cxSpinEdit,
  cxButtons, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  UGeneral, cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmFindDonatur = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    grid: TcxGrid;
    gridDonatur: TcxGridDBTableView;
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
    gcolmDonaturkode_amil: TcxGridDBColumn;
    gcolmDonaturnama_kab_kota: TcxGridDBColumn;
    gcolmDonaturKemitraan: TcxGridDBColumn;
    cxgrdlvl: TcxGridLevel;
    eNamaDonatur: TcxTextEdit;
    btnCari: TcxButton;
    btnUbah: TcxButton;
    btnBatal: TcxButton;
    spePage: TcxSpinEdit;
    spePerPage: TcxSpinEdit;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    dxlytsprtrtm1: TdxLayoutSeparatorItem;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    dxlytsprtrtmdxlytcntrl1SeparatorItem2: TdxLayoutSeparatorItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dsDonatur: TDataSource;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    spDonatur: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure spePagePropertiesChange(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFindDonatur: TfrmFindDonatur;

implementation

{$R *.dfm}

procedure TfrmFindDonatur.FormShow(Sender: TObject);
begin
  Koneksikan(spDonatur);
end;

procedure TfrmFindDonatur.spePagePropertiesChange(Sender: TObject);
begin
  spDonatur.Parameters[0].Value := (spePage.Value * speperPage.Value) -
    speperPage.Value;
  spDonatur.Parameters[1].Value := speperPage.Value;
  Koneksikan(spDonatur);
end;

procedure TfrmFindDonatur.btnCariClick(Sender: TObject);
begin
  spDonatur.DisableControls;
  spDonatur.Parameters[0].Value := (spePage.Value * speperPage.Value) -
    speperPage.Value;
  spDonatur.Parameters[1].Value := speperPage.Value;
  spDonatur.Parameters[2].Value := eNamaDonatur.Text;
  Koneksikan(spDonatur);
  spDonatur.EnableControls;
end;

procedure TfrmFindDonatur.FormCreate(Sender: TObject);
begin
  eNamaDonatur.Clear;
end;

end.

