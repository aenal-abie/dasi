unit UPenyimpanan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, dxGDIPlusClasses, StdCtrls, pngimage, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControl, cxTextEdit, cxMaskEdit, cxDropDownEdit, 
  cxDBLookupComboBox, Menus, 
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtons, cxDBExtLookupComboBox, ADODB, UGeneral,
  Penyimpanan,
  cxCurrencyEdit, dxLayoutLookAndFeels, cxCheckBox, cxLabel, cxCalendar,
  cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmPenyimpanan = class(TFGeneral)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    eTempat: TcxTextEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    btnTambah: TcxButton;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    btnSimpan: TcxButton;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    btnBatal: TcxButton;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    gridPenyimpanan: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    grid: TcxGrid;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    btnHapus: TcxButton;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    btnUbah: TcxButton;
    dxlytmdxlytcntrl1Item10: TdxLayoutItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    spPenyimpanan: TADOStoredProc;
    dsAmil: TDataSource;
    eCrSaldo: TcxCurrencyEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    gcolmPenyimpanankode: TcxGridDBColumn;
    gcolmPenyimpanantempat: TcxGridDBColumn;
    gcolmPenyimpanansaldo: TcxGridDBColumn;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    smlntfldPenyimpanankode_penyimpanan: TSmallintField;
    strngfldPenyimpanannama_tempat: TStringField;
    crncyfldPenyimpanansaldo_awal: TCurrencyField;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btnRefresh: TcxButton;
    cbxAkumulasi: TcxCheckBox;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    FPenyimpananakumulasi: TStringField;
    gcolmPenyimpananakumulasi: TcxGridDBColumn;
    DtdtPengakuan: TcxDateEdit;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    dtfldPenyimpanantgl: TDateField;
    gcolmPenyimpanantgl: TcxGridDBColumn;
    dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup;
    eNoRek: TcxTextEdit;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group6: TdxLayoutGroup;
    FPenyimpananno_rekening: TStringField;
    gcolmPenyimpananno_rekening: TcxGridDBColumn;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    btn1: TcxButton;
    dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup;
    batasdxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    dxlytgrpdxlytcntrl1Group9: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    LCIdxlytcntrl1Item6: TdxLayoutItem;
    Dt1: TcxDateEdit;
    dxlytlbldtmdxlytcntrl1LabeledItem1: TdxLayoutLabeledItem;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    LCIdxlytcntrl1Item7: TdxLayoutItem;
    btn2: TcxButton;
    batasdxlytcntrl1SeparatorItem2: TdxLayoutSeparatorItem;
    spTgl: TADOStoredProc;
    F1: TSmallintField;
    F2: TStringField;
    crncyfld1: TCurrencyField;
    F3: TStringField;
    dtfld1: TDateField;
    F4: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FPenyimpanan: TFPenyimpanan;
  public
    { Public declarations }
  end;

var
  frmPenyimpanan: TfrmPenyimpanan;

implementation

uses
  UHistoriBank;

{$R *.dfm}

procedure TfrmPenyimpanan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPenyimpanan.FormCreate(Sender: TObject);
begin
  Logika_Button(False);
  FPenyimpanan := TFPenyimpanan.Create(Application);
  Koneksikan(spPenyimpanan);
end;

procedure TfrmPenyimpanan.btnTambahClick(Sender: TObject);
begin
  Logika_Button(True);
  Tag := 1;
end;

procedure TfrmPenyimpanan.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  Tag := 0;

end;

procedure TfrmPenyimpanan.btnHapusClick(Sender: TObject);
begin
  if (spPenyimpanan.RecordCount > 0) then
  begin
    FPenyimpanan.kode := gcolmPenyimpanankode.DataBinding.Field.AsInteger;
    if MessageDlg('Anda Yakin Hapus ?', mtConfirmation, mbOKCancel, 0) = mrok
      then
      FPenyimpanan.Delete;
    Koneksikan(spPenyimpanan);
  end;

end;

procedure TfrmPenyimpanan.btnSimpanClick(Sender: TObject);
begin
  with FPenyimpanan do
  begin
    if (cek_kosong(0) = True) then
    begin
      tempat := eTempat.Text;
      saldo := eCrSaldo.Value;
      tanggal_pengakuan := DtdtPengakuan.Date;
      no_rek := eNoRek.Text;
      if (cbxAkumulasi.Checked = true) then
        akumulasi := 'Y'
      else
        akumulasi := 'N';
      if (Self.Tag = 1) then
      begin
        try
          FPenyimpanan.Mulai_Transaksi;
          if FPenyimpanan.Insert = TRUE then
          begin
            MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
              MB_ICONINFORMATION + MB_OK);
            Logika_Button(False);
            Koneksikan(spPenyimpanan);
          end;
          FPenyimpanan.Selesai_Transaksi;
        except on E: Exception do
          begin
            FPenyimpanan.Batalkan_Transaksi;
            MessageBox(Handle, PChar('Data gagal ditambah' + #13 + e.Message),
              'Tambah Data', MB_ICONWARNING + MB_OK);
          end;
        end;
      end
      else if (Self.Tag = 2) then
      begin
        try
          if FPenyimpanan.Update = TRUE then
          begin
            MessageBox(Handle, 'Data berhasil diubah', 'Ubah Data',
              MB_ICONINFORMATION + MB_OK);
            Logika_Button(False);
            Koneksikan(spPenyimpanan);
          end;
        except on e: Exception do
          begin
            MessageBox(Handle, PChar('Data gagal diubah' + #13 + e.Message),
              'Ubah Data', MB_ICONWARNING + MB_OK);
          end;
        end;
      end;
    end;
  end;

end;

procedure TfrmPenyimpanan.btnUbahClick(Sender: TObject);
begin
  Logika_Button(Enabled);
  FPenyimpanan.Kode := gcolmPenyimpanankode.DataBinding.Field.AsInteger;
  eTempat.Text := gcolmPenyimpanantempat.DataBinding.Field.AsString;
  eCrSaldo.Value := gcolmPenyimpanansaldo.DataBinding.Field.AsCurrency;
  DtdtPengakuan.Date := gcolmPenyimpanantgl.DataBinding.Field.AsDateTime;
  eNoRek.Text := gcolmPenyimpananno_rekening.DataBinding.Field.AsString;
  if (gcolmPenyimpananakumulasi.DataBinding.Field.AsString = 'Y') then
    cbxAkumulasi.Checked := True;
  Tag := 2;
end;

procedure TfrmPenyimpanan.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(spPenyimpanan);
end;

procedure TfrmPenyimpanan.btn1Click(Sender: TObject);
begin
  if not assigned(Application.FindComponent('frmTtpSaldoHarian')) then
    Application.CreateForm(TfrmFrmHistoriMutasi, frmFrmHistoriMutasi);
  frmFrmHistoriMutasi.Tag := gcolmPenyimpanankode.DataBinding.Field.AsInteger;
  frmFrmHistoriMutasi.btn9Click(Sender);
  frmFrmHistoriMutasi.BringToFront;
end;

procedure TfrmPenyimpanan.btn2Click(Sender: TObject);
begin
  Dt1.Properties.ReadOnly:=False;
  with spTgl do
  begin
    Close;
    Parameters[0].Value:=FormatDateTime('YYYY-MM-DD',Dt1.Date);
    Open;
  end;
  dsAmil.DataSet:=spTgl;
end;

procedure TfrmPenyimpanan.FormShow(Sender: TObject);
begin
  Dt1.Properties.ReadOnly:=False;
end;

end.

