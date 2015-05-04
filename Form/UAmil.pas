unit UAmil;

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
  dxSkinscxPCPainter, dxLayoutControl, StdCtrls, jpeg, dxGDIPlusClasses,
  pngimage, ExtCtrls, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, Menus, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxMemo, cxCalendar, dxLayoutLookAndFeels,
  ADODB,Amil, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, UGeneral,
  cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TFrmAmil = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    eNamaAill: TcxTextEdit;
    mAlamat: TcxMemo;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    eTempatLahir: TcxTextEdit;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    DtTglLahir1: TcxDateEdit;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    cmbJenisKelamin: TcxComboBox;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    eHandphone: TcxTextEdit;
    dxlytmdxlytcntrl1Item10: TdxLayoutItem;
    eAnak: TcxTextEdit;
    dxlytmdxlytcntrl1Item13: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    grid1Level1: TcxGridLevel;
    grid1: TcxGrid;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    eCari: TcxTextEdit;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    btn1: TcxButton;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    btnBatal: TcxButton;
    dxlytmdxlytcntrl1Item16: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group8: TdxLayoutGroup;
    btnBaru: TcxButton;
    dxlytmdxlytcntrl1Item17: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group9: TdxLayoutGroup;
    btnHapus: TcxButton;
    dxlytmdxlytcntrl1Item18: TdxLayoutItem;
    btnSimpan: TcxButton;
    dxlytmdxlytcntrl1Item19: TdxLayoutItem;
    cmbPendidikan: TcxComboBox;
    dxlytmdxlytcntrl1Item20: TdxLayoutItem;
    eSuamiIstri: TcxTextEdit;
    dxlytmdxlytcntrl1Item14: TdxLayoutItem;
    img1: TImage;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    dxlytcntrl1SeparatorItem2: TdxLayoutSeparatorItem;
    dxlytcntrl1SeparatorItem3: TdxLayoutSeparatorItem;
    dxlytcntrl1LabeledItem1: TdxLayoutLabeledItem;
    cmbStatusNikah: TcxComboBox;
    dxlytmdxlytcntrl1Item12: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    btnUbah: TcxButton;
    dxlytmdxlytcntrl1Item11: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group11: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group10: TdxLayoutGroup;
    qryAmil: TADOQuery;
    ds: TDataSource;
    gridAmil: TcxGridDBTableView;
    gcolmKode: TcxGridDBColumn;
    cxgrdbclmnAmilnama_amil: TcxGridDBColumn;
    cxgrdbclmnAmiltempat_lahir: TcxGridDBColumn;
    cxgrdbclmnAmiltgl_lahir: TcxGridDBColumn;
    cxgrdbclmnAmiljenis_kelamin: TcxGridDBColumn;
    cxgrdbclmnAmilalamat: TcxGridDBColumn;
    cxgrdbclmnAmilhandphone: TcxGridDBColumn;
    cxgrdbclmnAmilstatus_nikah: TcxGridDBColumn;
    cxgrdbclmnAmilistri_suami: TcxGridDBColumn;
    cxgrdbclmnAmiljumlah_anak: TcxGridDBColumn;
    cxgrdbclmnAmilpendidikan_terakhir: TcxGridDBColumn;
    cxgrdbclmnAmilkode_kab: TcxGridDBColumn;
    cxgrdbclmnAmilkode_posisi: TcxGridDBColumn;
    dxlytgrpdxlytcntrl1Group6: TdxLayoutGroup;
    eGelar: TcxTextEdit;
    dxlytmdxlytcntrl1Item21: TdxLayoutItem;
    gcolmAmilGelar: TcxGridDBColumn;
    gridKabupaten: TcxGridDBTableView;
    qryKabupaten: TADOQuery;
    ds1: TDataSource;
    gcolmKabupatenkode_kab: TcxGridDBColumn;
    gcolmKabupatennama_kab_kota: TcxGridDBColumn;
    cbbKabupaten: TcxExtLookupComboBox;
    dxlytmdxlytcntrl1Item15: TdxLayoutItem;
    cbbStruktural: TcxExtLookupComboBox;
    dxlytmdxlytcntrl1Item22: TdxLayoutItem;
    gridPosisi: TcxGridDBTableView;
    qryPosisi: TADOQuery;
    ds2: TDataSource;
    gcolmPosisikode_posisi: TcxGridDBColumn;
    gcolmPosisiposisi: TcxGridDBColumn;
    dxlytgrpdxlytcntrl1Group12: TdxLayoutGroup;
    gcolmAmilKab: TcxGridDBColumn;
    gcolmAmilposisi: TcxGridDBColumn;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btnRefresh: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBaruClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eAnakKeyPress(Sender: TObject; var Key: Char);
    procedure eAnakExit(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FAmil:TFAmil;
  public
    { Public declarations }
  end;

var
  FrmAmil: TFrmAmil;

implementation

uses
  UControl;

{$R *.dfm}

procedure TFrmAmil.FormCreate(Sender: TObject);
begin
  DoubleBuffered:=True;
  kosongkanInputan(Self);
  nonaktif_input(True,Self);
  FAmil:=TFAmil.Create(Self);
end;

procedure TFrmAmil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmAmil.btnBaruClick(Sender: TObject);
begin
  set_button('dedde',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
  nonaktif_input(False,Self);
  eNamaAill.SetFocus;
  eAnak.Text:='0';
  Tag:=1;
end;

procedure TFrmAmil.btnBatalClick(Sender: TObject);
begin
  set_button('edeed',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
  kosongkanInputan(Self);
  Tag:=0;
  nonaktif_input(True,Self);
end;

procedure TFrmAmil.btnUbahClick(Sender: TObject);
begin
  set_button('dedde',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
  nonaktif_input(False,Self);
  eNamaAill.SetFocus;
  Tag:=2;
  FAmil.Kode:=gridAmil.Columns[0].DataBinding.Field.AsString;
  eNamaAill.Text:=gridAmil.Columns[1].DataBinding.Field.AsString;
  eTempatLahir.Text:=gridAmil.Columns[2].DataBinding.Field.AsString;
  DtTglLahir1.Date:=gridAmil.Columns[3].DataBinding.Field.AsDateTime;
  cmbJenisKelamin.Text:=gridAmil.Columns[4].DataBinding.Field.AsString;
  cmbStatusNikah.Text:=gridAmil.Columns[7].DataBinding.Field.AsString;
  eSuamiIstri.Text:=gridAmil.Columns[8].DataBinding.Field.AsString;
  eHandphone.Text:=gridAmil.Columns[6].DataBinding.Field.AsString;
  eAnak.Text:=gridAmil.Columns[9].DataBinding.Field.AsString;
  cmbPendidikan.Text:=gridAmil.Columns[10].DataBinding.Field.AsString;
  eGelar.Text:=gridAmil.Columns[11].DataBinding.Field.AsString;
  mAlamat.Text:=gridAmil.Columns[5].DataBinding.Field.AsString;
  cbbKabupaten.EditValue:=gridAmil.Columns[12].DataBinding.Field.AsString;
  cbbStruktural.EditValue:=gridAmil.Columns[13].DataBinding.Field.AsString;
  cbbKabupaten.Text:=gcolmAmilKab.DataBinding.Field.AsString;
  cbbStruktural.Text:=gcolmAmilposisi.DataBinding.Field.AsString;

end;

procedure TFrmAmil.btnSimpanClick(Sender: TObject);
begin
  with famil do
  begin
    if(cek_kosong(1)=True) then
    begin
      Nama:=eNamaAill.Text;
      Alamat:=mAlamat.Text;
      TLahir:=eTempatLahir.Text;
      TglLahir:=DtTglLahir1.Date;
      sex:=cmbJenisKelamin.Text;
      Kabupaten:=cbbKabupaten.EditValue;
      Posisi:=cbbStruktural.EditValue;
      JAnak:=StrToInt(eAnak.Text);
      Hp:=eHandphone.Text;
      Status:=cmbStatusNikah.Text;
      Pendidikan:=cmbPendidikan.Text;
      Gelar:=eGelar.Text;;
      Suami:=eSuamiIstri.Text;
      if(Self.Tag=1) then
      begin
        if famil.Insert =TRUE then
        begin
          MessageBox(Handle,'Data berhasil ditambahkan','Tambah Data',MB_ICONINFORMATION+MB_OK);
          nonaktif_input(True,Self);
          Koneksikan;
          set_button('edeed',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
        end
        else
          MessageBox(Handle,'Data gagal ditambah','Tambah Data',MB_ICONWARNING+MB_OK);
      end else
      if(Self.Tag=2)  then
      begin
        if famil.Update =TRUE then
        begin
          MessageBox(Handle,'Data berhasil diubah','Ubah Data',MB_ICONINFORMATION+MB_OK);
          nonaktif_input(True,Self);
          Koneksikan;
          set_button('edeed',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
        end
        else
          MessageBox(Handle,'Data gagal diubah','Ubah Data',MB_ICONWARNING+MB_OK);
      end;
    end;
  end;
end;

procedure TFrmAmil.btnHapusClick(Sender: TObject);
begin
  if(qryAmil.RecordCount>0) then
  begin
    FAmil.Kode:=gridAmil.Columns[0].DataBinding.Field.AsString;
    if MessageDlg('Anda Yakin Hapus ?',mtConfirmation,mbOKCancel,0)=mrok then
      FAmil.Delete;
      Koneksikan();
  end;

end;

procedure TFrmAmil.FormShow(Sender: TObject);
begin
  eNamaAill.SetFocus;
end;

procedure TFrmAmil.eAnakKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then
    key:=#0;
end;

procedure TFrmAmil.eAnakExit(Sender: TObject);
begin
  if(eAnak.Text='') then
    eAnak.Text:='0';
end;

procedure TFrmAmil.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qryAmil);
end;

end.
