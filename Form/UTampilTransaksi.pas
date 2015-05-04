unit UTampilTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  dxLayoutControl, cxTextEdit, cxClasses, dxBar, 
  cxDataStorage, DB, cxDBData, Menus, StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, ADODB,
  UGeneral, Transaksi,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, pngimage, ExtCtrls, cxCurrencyEdit,
  SaldoHarian, cxButtonEdit, cxDBExtLookupComboBox, cxLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData, cxCheckBox;

type
  TfrmLihatTransaksi = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dariTgl: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    sampaiTgl: TcxDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    lkpAmil: TcxLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item6: TdxLayoutItem;
    btnFilter: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dsTransaksi: TDataSource;
    cxGrid1DBTableView1kode_kwitansi: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1kode_amil: TcxGridDBColumn;
    cxGrid1DBTableView1kode_donatur: TcxGridDBColumn;
    cxGrid1DBTableView1periode: TcxGridDBColumn;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    cxGrid1DBTableView1kode_penyimpanan: TcxGridDBColumn;
    cxGrid1DBTableView1nama_amil: TcxGridDBColumn;
    cxGrid1DBTableView1nama_lengkap: TcxGridDBColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    btnUbah1: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    btnHapus1: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    qryLookupDonatur: TADOQuery;
    qryLookupAmil: TADOQuery;
    dsLookupDonatur: TDataSource;
    dsLookupAmil: TDataSource;
    btnClear: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    spTransaksi: TADOStoredProc;
    dxlytgrpLayoutControl1Group1: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytgrpLayoutControl1Group4: TdxLayoutGroup;
    fieldTransaksikode_kwitansi: TStringField;
    dtmfldTransaksitanggal: TDateTimeField;
    fieldTransaksikode_amil: TStringField;
    fieldTransaksikode_donatur: TStringField;
    fieldTransaksiperiode: TStringField;
    fltfldTransaksitotal: TFloatField;
    smlntfldTransaksikode_penyimpanan: TSmallintField;
    fieldTransaksinama_amil: TStringField;
    fieldTransaksinama_lengkap: TStringField;
    eNoTransaski: TcxTextEdit;
    dxlytmLayoutControl1Item1: TdxLayoutItem;
    eDonatur: TcxButtonEdit;
    lblLayoutControl1Item1: TdxLayoutItem;
    FTransaksisaldo_kemitraan: TFloatField;
    gcolmGrid1DBTableView1saldo_kemitraan: TcxGridDBColumn;
    FTransaksinilai_kemitraan: TFloatField;
    cbbViewUser: TcxExtLookupComboBox;
    LCILayoutControl1Item1: TdxLayoutItem;
    spViewUser: TADOStoredProc;
    ds1: TDataSource;
    GridRepViewUser: TcxGridViewRepository;
    gridXViewUser: TcxGridDBTableView;
    gcolmXViewUserid_user: TcxGridDBColumn;
    gcolmXViewUsernama_amil: TcxGridDBColumn;
    cbxAllPetugas: TcxCheckBox;
    LCILayoutControl1Item2: TdxLayoutItem;
    procedure btnUbah1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHapus1Click(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure eDonaturPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure cbxAllPetugasClick(Sender: TObject);
  private
    { Private declarations }
    FTransaksi: TFTransaksi;
    FsaldoHarian: TSaldoHarian;
  public
    { Public declarations }
  end;

var
  frmLihatTransaksi: TfrmLihatTransaksi;

implementation

uses UTransaksi, UKoneksi, UDetailTransaksi, UFindDonatur, UVariabel;

{$R *.dfm}

procedure TfrmLihatTransaksi.btnUbah1Click(Sender: TObject);
begin
  if (FsaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Maaf transaksi hari ini sudah ditutup ' + #13#10 +
      'anda tidak bisa mengubah transaski hari ini ',
      'Perhatian', MB_ICONWARNING + MB_OK)
  else if (DateToStr(cxGrid1DBTableView1tanggal.DataBinding.Field.AsDateTime) =
    DateToStr(Date)) then
  begin
    if Application.FindComponent('frmTransaksi') = nil then
    begin
      Application.CreateForm(TfrmTransaksi, frmTransaksi);
    end;
    frmTransaksi.setParameter(cxGrid1DBTableView1tanggal.DataBinding.Field.AsString,
      cxGrid1DBTableView1nama_lengkap.DataBinding.Field.Value,
      cxGrid1DBTableView1kode_kwitansi.DataBinding.Field.Value,
      cxGrid1DBTableView1kode_amil.DataBinding.Field.Value,
      cxGrid1DBTableView1kode_donatur.DataBinding.Field.AsString,
      cxGrid1DBTableView1periode.DataBinding.Field.Value,
      cxGrid1DBTableView1kode_penyimpanan.DataBinding.Field.Value, 2,
      FTransaksisaldo_kemitraan.AsFloat,
      FTransaksinilai_kemitraan.AsInteger, fieldTransaksikode_donatur.AsString);
    frmTransaksi.BringToFront;
  end
  else
    MessageBox(Handle, 'Maaf transaksi hari ini tidak terjadi pada hari ini ' +
      #13#10 +
      'anda tidak dapat merubah transaksi hari ini',
      'Perhatian', MB_ICONWARNING + MB_OK);
end;

procedure TfrmLihatTransaksi.FormCreate(Sender: TObject);
begin
  FTransaksi := TFTransaksi.Create(Self);
  Koneksikan;
  //Koneksikan(spTransaksi);
  Logika_Button(True);
  dariTgl.Date := Date;
  sampaiTgl.Date := Date;
  cbbViewUser.EditValue := FPUserId;
  with spTransaksi do
  begin
    DisableControls;
    Close;
    Parameters[0].Value := FormatDateTime('YYYY-MM-DD', dariTgl.Date);
    Parameters[1].Value := FormatDateTime('YYYY-MM-DD', sampaiTgl.Date);
    Parameters[2].Value := '';
    Parameters[3].Value := '';
    Parameters[4].Value := '';
    Parameters[5].Value := cbbViewUser.EditValue;
    Open;
    EnableControls;
    FsaldoHarian := TSaldoHarian.Create(nil);
  end;
end;

procedure TfrmLihatTransaksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLihatTransaksi.btnHapus1Click(Sender: TObject);
begin
  if (FsaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Maaf transaksi hari ini sudah ditutup ' + #13#10 +
      'anda tidak bisa mengahapus transaski hari ini silahkan buka jika ingin menghapus ',
      'Perhatian', MB_ICONWARNING + MB_OK)
  else if (DateToStr(cxGrid1DBTableView1tanggal.DataBinding.Field.AsDateTime) =
    DateToStr(Date)) then
  begin
    if not spTransaksi.IsEmpty then
    begin
      if MessageDlg('Anda yakin ingin menghapus nomor kwitansi ' +
        cxGrid1DBTableView1kode_kwitansi.DataBinding.Field.AsString + '?',
        mtConfirmation, mbOKCancel, 0) =
        mrok then
      begin
        with FTransaksi do
        begin
          try
            periode := cxGrid1DBTableView1periode.DataBinding.Field.Value;
            kode_kwitansi :=
              cxGrid1DBTableView1kode_kwitansi.DataBinding.Field.Value;
            if not Delete then
              MessageBox(0, PChar('Periksa periode apakah sudah ditutup?'),
                PChar('Warning'), MB_ICONWARNING + MB_OK)
            else
              Koneksikan(spTransaksi);
            Selesai_Transaksi;
          except on E: Exception do
            begin
              Batalkan_Transaksi;
              //raise Exception.Create(E.Message);
              MessageBox(Handle, pchar('Data Gagal Dihapus :: Kesalahan Pada :'
                + #13 + E.message),
                'Error', MB_ICONERROR + MB_OK);
            end;

          end;
        end;
      end;
    end;
  end
  else
    MessageBox(Handle, 'Maaf transaksi hari ini tidak terjadi pada hari ini '
      +
      #13#10 +
      'anda tidak dapat menghapus transaksi hari ini',
      'Perhatian', MB_ICONWARNING + MB_OK);
end;

procedure TfrmLihatTransaksi.btnFilterClick(Sender: TObject);
begin
  if (cek_kosong(1)) then
  begin
    with spTransaksi do
    begin
      DisableControls;
      Close;
      Parameters[0].Value := FormatDateTime('yyyy-mm-dd', dariTgl.Date);
      Parameters[1].Value := FormatDateTime('yyyy-mm-dd', sampaiTgl.Date);
      Parameters[2].Value := (eNoTransaski.Text);
      if (eDonatur.Hint <> '') then
        Parameters[3].Value := QuotedStr(eDonatur.Hint)
      else
        Parameters[3].Value := '';
      if (lkpAmil.Text <> '') then
        Parameters[4].Value := lkpAmil.EditValue
      else
        Parameters[4].Value := '';
      if (cbbViewUser.EditText <> '') and (cbxAllPetugas.Checked=False) then
        Parameters[5].Value := cbbViewUser.EditValue
      else
        Parameters[5].Value := '';
      Open;
      EnableControls;
    end;
  end;
end;

procedure TfrmLihatTransaksi.btnClearClick(Sender: TObject);
begin
  FormCreate(Sender);
end;

procedure TfrmLihatTransaksi.cxButton1Click(Sender: TObject);
begin
  if not spTransaksi.IsEmpty then
  begin
    if not assigned(Application.FindComponent('frmDetailTransaksi')) then
    begin
      frmDetailTransaksi := TfrmDetailTransaksi.Create(Application);
      frmDetailTransaksi.FormStyle := fsStayOnTop;
    end;
    frmDetailTransaksi.LihatDetail(cxGrid1DBTableView1kode_kwitansi.DataBinding.Field.Value, 'IN');
    frmDetailTransaksi.BringToFront;
  end;
end;

procedure TfrmLihatTransaksi.eDonaturPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  frmFindDonatur := TfrmFindDonatur.Create(nil);
  with frmFindDonatur do
  begin
    if (ShowModal = mrOk) then
    begin
      eDonatur.EditValue :=
        gcolmDonaturnama_lengkap.DataBinding.Field.AsString;
      eDonatur.Hint := gcolmDonaturkode_donatur.DataBinding.Field.AsString;
    end;
  end;
  FreeAndNil(frmFindDonatur);
end;

procedure TfrmLihatTransaksi.FormActivate(Sender: TObject);
begin
  with spTransaksi do
  begin
    DisableControls;
    Close;
    Parameters[0].Value := FormatDateTime('YYYY-MM-DD', dariTgl.Date);
    Parameters[1].Value := FormatDateTime('YYYY-MM-DD', sampaiTgl.Date);
    Parameters[2].Value := '';
    Parameters[3].Value := '';
    Parameters[4].Value := '';
    Open;
    EnableControls;
    FsaldoHarian := TSaldoHarian.Create(nil);
  end;
end;

procedure TfrmLihatTransaksi.cbxAllPetugasClick(Sender: TObject);
begin
  cbbViewUser.Enabled:=not cbxAllPetugas.Checked;
end;

end.

