unit UKelompokPerkiraan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, 
  cxDataStorage, DB, cxDBData, Menus,
  dxLayoutcxEditAdapters, dxLayoutControl, cxDropDownEdit, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxMaskEdit, dxGDIPlusClasses, pngimage, ExtCtrls, ADODB,
  dxLayoutLookAndFeels, UGeneral, Kelompok, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData;

type
  TFrmKelompokPerkiraan = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    dxlytcntrl1: TdxLayoutControl;
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
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    cmbJenis_trans: TcxComboBox;
    qry_kelompok: TADOQuery;
    ds_kelompok: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxlytcntrl1Item1: TdxLayoutItem;
    cxGrid1DBTableView1kd_kel: TcxGridDBColumn;
    cxGrid1DBTableView1nama_kel: TcxGridDBColumn;
    cxGrid1DBTableView1jenis: TcxGridDBColumn;
    eNama: TcxTextEdit;
    dxlytcntrl1Item2: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    qry_kelompoknama_kel: TStringField;
    qry_kelompokjenis: TStringField;
    qry_kelompokcalcJenis: TStringField;
    cxGrid1DBTableView1calcJenis: TcxGridDBColumn;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytsprtrtmdxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    img2: TImage;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    btnRefresh: TcxButton;
    F_kelompokkd_kel: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHapusClick(Sender: TObject);
    procedure qry_kelompokCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FKelompok:TFKelompok;
    jenis_trx:String;
  public
    { Public declarations }
  end;

var
  FrmKelompokPerkiraan: TFrmKelompokPerkiraan;

implementation

uses UKoneksi, cxGridDBDataDefinitions;

{$R *.dfm}

procedure TFrmKelompokPerkiraan.FormCreate(Sender: TObject);
begin
 FKelompok:=TFKelompok.Create(Self);
 Koneksikan;
 Logika_Button(False);
end;

procedure TFrmKelompokPerkiraan.btnBaruClick(Sender: TObject);
begin
 Logika_Button(True);
 eNama.SetFocus; 
 Tag:=1;
end;

procedure TFrmKelompokPerkiraan.btnBatalClick(Sender: TObject);
begin
 eNama.SetFocus;
 Logika_Button(False);
end;

procedure TFrmKelompokPerkiraan.btnSimpanClick(Sender: TObject);
begin
  if eNama.Text='' then
  begin
    ShowMessage('Isi nama kelompok penerimaan/pengeluaran!');
    eNama.SetFocus;
    Exit;
  end;
  if cmbJenis_trans.Text='' then
  begin
    ShowMessage('Isi nama jenis (penerimaan/pengeluaran)!');
    cmbJenis_trans.SetFocus;
    Exit;
  end;
  if cmbJenis_trans.Text='PENERIMAAN' then
    jenis_trx:='IN' else
    jenis_trx:='OUT';
  with FKelompok do
  begin
    nama_kel:=eNama.Text;
    jenis:=jenis_trx;
    if (Self.Tag=1) then
    begin
      if Insert then
      begin
        MessageBox(Handle,'Data berhasil ditambahkan','Tambah Data',MB_ICONINFORMATION+MB_OK);
        refresh_AdoQuery(qry_kelompok);
        Logika_Button(False);
      end else
        MessageBox(Handle,'Data gagal ditambah','Tambah Data',MB_ICONWARNING+MB_OK);
    end else
    if (Self.Tag=2) then
    begin
      kd_kel_lama:=cxGrid1.Hint;
      if Update then
      begin
        MessageBox(Handle,'Data berhasil diubah','Ubah Data',MB_ICONINFORMATION+MB_OK);
        refresh_AdoQuery(qry_kelompok);
        Logika_Button(False);
      end else
        MessageBox(Handle,'Data gagal diubah','Ubah Data',MB_ICONWARNING+MB_OK);
    end;
  end;
end;

procedure TFrmKelompokPerkiraan.btnUbahClick(Sender: TObject);
begin
    Self.Tag:=2;
    Logika_Button(True);
    eNama.Text:=qry_kelompoknama_kel.Value;
    if qry_kelompokjenis.Value='IN' then
      jenis_trx:='PENERIMAAN' else
      jenis_trx:='PENGELUARAN';
    cmbJenis_trans.Text:=jenis_trx;
    cxGrid1.Hint:=F_kelompokkd_kel.AsString;
    eNama.SetFocus;
end;

procedure TFrmKelompokPerkiraan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FKelompok.Free;
end;

procedure TFrmKelompokPerkiraan.btnHapusClick(Sender: TObject);
begin
  with FKelompok do
  begin
    if (qry_kelompok.RecordCount>0) then
    begin
      kd_kel_lama:=F_kelompokkd_kel.AsString;
      if MessageDlg('Anda Yakin Hapus ?',mtConfirmation,mbOKCancel,0)=mrok then
      Delete;
      refresh_AdoQuery(qry_kelompok);
    end;
  end;
end;

procedure TFrmKelompokPerkiraan.qry_kelompokCalcFields(DataSet: TDataSet);
begin
  if qry_kelompokjenis.Value='IN' then
    qry_kelompokcalcJenis.Value:='PENERIMAAN' else
    qry_kelompokcalcJenis.Value:='PENGELUARAN';
end;

procedure TFrmKelompokPerkiraan.FormDestroy(Sender: TObject);
begin
  //FKelompok.Destroy;
end;

procedure TFrmKelompokPerkiraan.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qry_kelompok);
end;

end.
