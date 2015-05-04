unit UKecamatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, 
  cxDataStorage, DB, cxDBData, Menus,
  dxLayoutcxEditAdapters, dxLayoutControl, StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, dxGDIPlusClasses, pngimage, ExtCtrls, ADODB,
    Kecamatan, UGeneral,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxLayoutLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData;

type
  TfrmKecamatan = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytcntrl1: TdxLayoutControl;
    grid1: TcxGrid;
    gridKec: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    btnBatal: TcxButton;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    dxlytm1: TdxLayoutItem;
    qry: TADOQuery;
    ds: TDataSource;
    eNama: TcxTextEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    eKode: TcxTextEdit;
    lbldxlytcntrl1Item1: TdxLayoutItem;
    cbbKab: TcxExtLookupComboBox;
    lbldxlytcntrl1Item2: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    gcolmKecnama_kecamatan: TcxGridDBColumn;
    gcolmKeckode_kec: TcxGridDBColumn;
    gcolmKeckode_kab: TcxGridDBColumn;
    gcolmKecnama_kab_kota: TcxGridDBColumn;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridKab: TcxGridDBTableView;
    spKabupaten: TADOStoredProc;
    fieldKabupatenkode_kab: TStringField;
    fieldKabupatennama_kab_kota: TStringField;
    fieldKabupatenalias: TStringField;
    dsKabupaten: TDataSource;
    gcolmKabkode_kab: TcxGridDBColumn;
    gcolmKabnama_kab_kota: TcxGridDBColumn;
    gcolmKabalias: TcxGridDBColumn;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btnRefresh: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure cbbKabPropertiesChange(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FKecamatan: TKecamatan;
  public
    { Public declarations }
  end;

var
  frmKecamatan: TfrmKecamatan;

implementation

uses
  UControl, cxGridDBDataDefinitions;

{$R *.dfm}

procedure TfrmKecamatan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmKecamatan.btnSimpanClick(Sender: TObject);
begin
  with FKecamatan do
  begin
    if (cek_kosong = True) then
    begin
      KodeKec := eKode.Text;
      NamaKec := eNama.Text;
      KodeKab := cbbKab.EditValue;
      KodeLama := grid1.Hint;
      KodeLamaKab := frmKecamatan.Hint;
      if (Self.Tag = 1) then
      begin
        if Insert = TRUE then
        begin
          MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
            MB_ICONINFORMATION + MB_OK);
          nonaktif_input(True, Self);
          cbbKab.Properties.ReadOnly := false;
          set_button('edeed', btnBaru, btnBatal, btnHapus, btnUbah, btnSimpan);
          kosongkanInputan(Self);
          qry.Close;
          qry.Open;
          Tag := 0;
        end
        else
          MessageBox(Handle, 'Data gagal ditambah', 'Tambah Data', MB_ICONWARNING
            + MB_OK);
      end
      else if (Self.Tag = 2) then
      begin
        if Update = TRUE then
        begin
          MessageBox(Handle, 'Data berhasil diubah', 'Ubah Data',
            MB_ICONINFORMATION + MB_OK);
          nonaktif_input(True, Self);
          cbbKab.Properties.ReadOnly := false;
          set_button('edeed', btnBaru, btnBatal, btnHapus, btnUbah, btnSimpan);
          kosongkanInputan(Self);
          qry.Close;
          qry.Open;
          Tag := 0;
        end
        else
          MessageBox(Handle, 'Data gagal diubah', 'Ubah Data', MB_ICONWARNING +
            MB_OK);
      end;
    end;
  end;

end;

procedure TfrmKecamatan.btnBaruClick(Sender: TObject);
begin
  set_button('dedde', btnBaru, btnBatal, btnHapus, btnUbah, btnSimpan);
  nonaktif_input(False, Self);
  eKode.SetFocus;
  Tag := 1;
end;

procedure TfrmKecamatan.FormCreate(Sender: TObject);
begin
  FKecamatan := TKecamatan.Create(Self);
  nonaktif_input(True, Self);
  kosongkanInputan(Self);
  Koneksikan(qry);
  Logika_Button(False);
end;

procedure TfrmKecamatan.btnBatalClick(Sender: TObject);
begin
  set_button('edeed', btnBaru, btnBatal, btnHapus, btnUbah, btnSimpan);
  kosongkanInputan(Self);
  Tag := 0;
  btnBaru.SetFocus;
  nonaktif_input(True, Self);
  cbbKab.Properties.ReadOnly := false;

end;

procedure TfrmKecamatan.btnHapusClick(Sender: TObject);
begin
  if (qry.RecordCount > 0) then
  begin
    FKecamatan.KodeKec := gridKec.Columns[0].DataBinding.Field.Value;
    FKecamatan.KodeKab := gridKec.Columns[2].DataBinding.Field.Value;
    if MessageDlg('Anda Yakin Hapus ?', mtConfirmation, mbOKCancel, 0) = mrok
      then
      FKecamatan.Delete;
    qry.Close;
    qry.Open;
  end;
end;

procedure TfrmKecamatan.btnUbahClick(Sender: TObject);
begin
  set_button('dedde', btnBaru, btnBatal, btnHapus, btnUbah, btnSimpan);
  nonaktif_input(False, Self);
  eKode.SetFocus;
  Tag := 2;
  grid1.Hint := gridKec.Columns[0].DataBinding.Field.AsString;
  eKode.Text := gridKec.Columns[0].DataBinding.Field.AsString;
  eNama.Text := gridKec.Columns[1].DataBinding.Field.AsString;
  cbbKab.EditValue := gridKec.Columns[2].DataBinding.Field.AsString;
  //ShowMessage(grid1.Hint);
  frmKecamatan.Hint := gridKec.Columns[2].DataBinding.Field.AsString
end;

procedure TfrmKecamatan.cbbKabPropertiesChange(Sender: TObject);
begin
  qry.Close;
  qry.Parameters[0].Value := cbbKab.EditValue;
  qry.Open;
end;

procedure TfrmKecamatan.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qry);
end;

end.

