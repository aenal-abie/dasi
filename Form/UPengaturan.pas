unit UPengaturan;

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
  dxSkinscxPCPainter, dxLayoutLookAndFeels, StdCtrls, pngimage, ExtCtrls,
  dxLayoutControl, cxPC, Menus, cxButtons, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxGrid, DB, ADODB,
  cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, UGeneral, Pengaturan, cxLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData;

type
  TfrmPengaturan = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    cxpgcntrl1: TcxPageControl;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    cxtbsht1: TcxTabSheet;
    dxlytgrpLayoutControl1Group_Root1: TdxLayoutGroup;
    dxlytcntrl2: TdxLayoutControl;
    cbbPenyimpanan: TcxExtLookupComboBox;
    dxlytmdxlytcntrl2Item1: TdxLayoutItem;
    dxlytlbldtmdxlytcntrl2LabeledItem1: TdxLayoutLabeledItem;
    dxlytsprtrtmdxlytcntrl2SeparatorItem1: TdxLayoutSeparatorItem;
    spPenyimpanan: TADOStoredProc;
    smlntfldPenyimpanankode_penyimpanan: TSmallintField;
    fieldPenyimpanannama_tempat: TStringField;
    crncyfldPenyimpanansaldo_awal: TCurrencyField;
    dsPenyimpanan: TDataSource;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridMediaPenyimpanan: TcxGridDBTableView;
    gcolmMediaPenyimpanankode_penyimpanan: TcxGridDBColumn;
    gcolmMediaPenyimpanannama_tempat: TcxGridDBColumn;
    gcolmMediaPenyimpanansaldo_awal: TcxGridDBColumn;
    dxlytmdxlytcntrl2Item2: TdxLayoutItem;
    cbbPenyaluran: TcxExtLookupComboBox;
    dxlytlbldtmdxlytcntrl2LabeledItem2: TdxLayoutLabeledItem;
    spKabupaten: TADOStoredProc;
    dsKabupaten: TDataSource;
    cxgrdvwrpstryKab: TcxGridViewRepository;
    gridKabupaten: TcxGridDBTableView;
    gcolmKabupatenkode_kab: TcxGridDBColumn;
    gcolmKabupatennama_kab_kota: TcxGridDBColumn;
    cxtbsht2: TcxTabSheet;
    dxlytgrpLayoutControl1Group_Root2: TdxLayoutGroup;
    dxlytcntrl3: TdxLayoutControl;
    ePasswod: TcxTextEdit;
    dxlytmdxlytcntrl3Item2: TdxLayoutItem;
    dxlytmdxlytcntrl3Item3: TdxLayoutItem;
    btn4: TcxButton;
    eUlangPass: TcxTextEdit;
    dxlytmdxlytcntrl3Item4: TdxLayoutItem;
    dxlytmdxlytcntrl2Item4: TdxLayoutItem;
    btn1: TcxButton;
    dxlytlbldtmdxlytcntrl2LabeledItem3: TdxLayoutLabeledItem;
    dxlytgrpdxlytcntrl2Group1: TdxLayoutGroup;
    dxlytsprtrtmdxlytcntrl2SeparatorItem2: TdxLayoutSeparatorItem;
    dsKel: TDataSource;
    qryKelompok: TADOQuery;
    dxlytgrpdxlytcntrl2Group3: TdxLayoutGroup;
    GridRepKel: TcxGridViewRepository;
    gridKel: TcxGridDBTableView;
    gcolmKelkd_kel: TcxGridDBColumn;
    gcolmKelnama_kel: TcxGridDBColumn;
    gcolmKeljenis: TcxGridDBColumn;
    cbbOprerasional: TcxExtLookupComboBox;
    dxlytmdxlytcntrl2Item3: TdxLayoutItem;
    cbbZakat: TcxExtLookupComboBox;
    lbldxlytcntrl2Item1: TdxLayoutItem;
    dxlytlbldtmdxlytcntrl2LabeledItem4: TdxLayoutLabeledItem;
    qry1: TADOQuery;
    ds1: TDataSource;
    gridKelPen: TcxGridDBTableView;
    gcolmKelPenkd_kel: TcxGridDBColumn;
    gcolmKelPennama_kel: TcxGridDBColumn;
    gcolmKelPenjenis: TcxGridDBColumn;
    batasdxlytcntrl2SeparatorItem1: TdxLayoutSeparatorItem;
    batasdxlytcntrl2SeparatorItem2: TdxLayoutSeparatorItem;
    dxlytgrpdxlytcntrl2Group4: TdxLayoutGroup;
    dxlytlbldtmdxlytcntrl2LabeledItem5: TdxLayoutLabeledItem;
    cbbInfaq: TcxExtLookupComboBox;
    lbldxlytcntrl2Item2: TdxLayoutItem;
    batasdxlytcntrl2SeparatorItem4: TdxLayoutSeparatorItem;
    gridPerkiraan: TcxGridDBTableView;
    spPenerimaan: TADOStoredProc;
    ds2: TDataSource;
    gcolmPerkiraannama_perkiraan: TcxGridDBColumn;
    gcolmPerkiraannama_kel: TcxGridDBColumn;
    batasdxlytcntrl2SeparatorItem5: TdxLayoutSeparatorItem;
    dxlytlbldtmdxlytcntrl2LabeledItem6: TdxLayoutLabeledItem;
    cbbKemitraan: TcxExtLookupComboBox;
    LCIdxlytcntrl2Item1: TdxLayoutItem;
    ds3: TDataSource;
    sp1: TADOStoredProc;
    gridKemitraan: TcxGridDBTableView;
    gcolmKemitraanid_perkiraan: TcxGridDBColumn;
    gcolmKemitraannama_perkiraan: TcxGridDBColumn;
    gcolmKemitraannama_kel: TcxGridDBColumn;
    dxlytspltrtmdxlytcntrl2SplitterItem1: TdxLayoutSplitterItem;
    dxlytspltrtmdxlytcntrl2SplitterItem2: TdxLayoutSplitterItem;
    dxlytlbldtmdxlytcntrl2LabeledItem7: TdxLayoutLabeledItem;
    batasdxlytcntrl2SeparatorItem3: TdxLayoutSeparatorItem;
    cbbKelOperasional: TcxExtLookupComboBox;
    LCIdxlytcntrl2Item2: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPengaturan: TfrmPengaturan;

implementation

uses
  UVariabel;

{$R *.dfm}

procedure TfrmPengaturan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPengaturan.FormCreate(Sender: TObject);
begin
  if (FSetting = nil) then
    FSetting := TFPengaturan.Create(Application);
  FSetting.Pengaturan;
  cbbPenyimpanan.EditValue := FPPenyimpanan;
  cbbPenyaluran.EditValue := FPPenyaluran;
  cbbOprerasional.EditValue := FPOperasional;
  cbbZakat.EditValue := FPZakat;
  cbbInfaq.EditValue := FPInfaq;
  cbbKemitraan.EditValue:=FPKemitraan;
  cbbKelOperasional.EditValue:=FPKOperasional;
end;

procedure TfrmPengaturan.btn1Click(Sender: TObject);
begin
  with FSetting do
  begin
    VPenyimpanan := cbbPenyimpanan.EditValue;
    VPenyaluran := cbbPenyaluran.EditValue;
    VOperasional := cbbOprerasional.EditValue;
    VZakat := cbbZakat.EditValue;
    VInfaq := cbbInfaq.EditValue;
    VKemitraan := cbbKemitraan.EditValue;
    VKOperasioanl:=cbbKelOperasional.EditValue;
    if (FSetting.Insert = True) then
      MessageBox(Handle, 'Sudah dirubah', 'Pengaturan',
        MB_ICONINFORMATION + MB_OK)
    else
      MessageBox(Handle, 'Gagal dirubah ', 'Pengaturan',
        MB_ICONWARNING + MB_OK)
  end;
  FSetting.Pengaturan;
end;

procedure TfrmPengaturan.btn4Click(Sender: TObject);
begin
  if (ePasswod.Text <> eUlangPass.Text) then
    MessageBox(Handle, 'Password  tidak sama cek lagi', 'Pengaturan',
      MB_ICONWARNING + MB_OK)
  else
  begin
    with FSetting do
    begin
      password := ePasswod.Text;
      if FSetting.UpdatePassword = true then
        MessageBox(Handle, 'Password  berhasil di rubah', 'Pengaturan',
          MB_ICONINFORMATION + MB_OK)
      else
        MessageBox(Handle, 'Password gagal diubah', 'Pengaturan',
          MB_ICONWARNING + MB_OK)
    end;
  end;
end;

end.

