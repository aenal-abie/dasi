unit UMenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls,
  cxLookAndFeelPainters, dxBar, dxRibbon, cxClasses,
  ImgList, ActnList, StdActns, dxStatusBar, dxRibbonStatusBar, Menus,
  DB, ADODB, Buttons, UGeneral, dxRibbonForm, ULog,
  AppEvnts, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,  XPMan,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, icekey, ExtCtrls, cxLookAndFeels;

type

  TCalcThread = class(TThread)
  private
    procedure cek_register();
    function cek_key: Boolean;
    procedure aktif_menu(opt: Boolean);
  protected
    procedure Execute; override;
  public
    qryData: TADOQuery;
  end;
  TFrmHalamanUtama = class(TdxRibbonForm)
    //TFrmHalamanUtama = class(TForm)
    dxbrmngrMenu: TdxBarManager;
    groupAmil: TdxBar;
    TabDXUtama: TdxRibbonTab;
    dxrbn1: TdxRibbon;
    ModulAmil: TdxBarLargeButton;
    ModulLihatDonatur: TdxBarLargeButton;
    ModulTambahDonatur: TdxBarLargeButton;
    cxmglstLarg: TcxImageList;
    TabDXTransasksi: TdxRibbonTab;
    TabDXLaporan: TdxRibbonTab;
    actlstWindows: TActionList;
    wndwclsClose: TWindowClose;
    ModulClose: TdxBarLargeButton;
    groupDonatur: TdxBar;
    dxbrWindows: TdxBar;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    dxbrbtnTile: TdxBarButton;
    dxbrbtnMinimize: TdxBarButton;
    dxbrbtnHorz: TdxBarButton;
    dxbrbtnCassade: TdxBarButton;
    statusBarMenu: TdxRibbonStatusBar;
    groupSetting: TdxBar;
    ModulUser: TdxBarLargeButton;
    ModulHakAkses: TdxBarLargeButton;
    dxbrTransaski: TdxBar;
    ModulLihatTransaksi: TdxBarLargeButton;
    ModulTransaksi: TdxBarLargeButton;
    dxbrPengeluaran: TdxBar;
    ModulLihatPengeluaran: TdxBarLargeButton;
    ModulPengeluaran: TdxBarLargeButton;
    ModulKabupaten: TdxBarLargeButton;
    groupJatuhTempo: TdxBar;
    ModulJatuhTempo: TdxBarLargeButton;
    ModulPosisi: TdxBarLargeButton;
    ModulPenyimpanan: TdxBarLargeButton;
    dxbrLaporan: TdxBar;
    ModulLapHarian: TdxBarLargeButton;
    ModulPenjemput: TdxBarLargeButton;
    groupMaster: TdxBar;
    ModulPeriode: TdxBarLargeButton;
    ModulPerkiraan: TdxBarLargeButton;
    ModulNominal: TdxBarLargeButton;
    ModulKelompok: TdxBarLargeButton;
    ModulMutasi: TdxBarLargeButton;
    ModulLogout: TdxBarLargeButton;
    ModulLapPerAmil: TdxBarLargeButton;
    ModulRekapKencrengan: TdxBarLargeButton;
    groupLaporanBulanan: TdxBar;
    ModulLapPenerimaan: TdxBarLargeButton;
    ModulLogin: TdxBarLargeButton;
    cxmglstSmall: TcxImageList;
    ModulPengaturan: TdxBarLargeButton;
    qryData: TADOQuery;
    atncfldqry1id: TAutoIncField;
    intgrfldqry1id_modul: TIntegerField;
    fieldqry1modul_name: TStringField;
    fieldqry1id_user: TStringField;
    TabDXReg: TdxRibbonTab;
    groupMenuBar1: TdxBar;
    btnReg: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    ickyReg: Ticekey;
    eKey: TdxBarEdit;
    dlgOpenReg: TOpenDialog;
    groupSaldo: TdxBar;
    ModulSaldoHarian: TdxBarLargeButton;
    ModulSaldoBulanan: TdxBarLargeButton;
    ModulKecamatan: TdxBarLargeButton;
    groupLapLainnya: TdxBar;
    ModulRekKoran: TdxBarLargeButton;
    groupMenuBar2: TdxBar;
    ModulMutasiOperasional: TdxBarLargeButton;
    aplctnvnts1: TApplicationEvents;
    btn1: TdxBarButton;
    tmrKoneksi: TTimer;
    ModulPenerimaanPerkiraan: TdxBarLargeButton;
    ModulRekapPenerimaaManfaat: TdxBarLargeButton;
    groupMenuBar3: TdxBar;
    btn2: TdxBarButton;
    ModulSaldoAwalMitra: TdxBarLargeButton;
    ModulHiistoriTransaksiMitra: TdxBarLargeButton;
    ModulTutupSaldoMitra: TdxBarLargeButton;
    ModulMutasiTransaksi: TdxBarLargeButton;
    procedure ModulAmilClick(Sender: TObject);
    procedure ModulTambahDonaturClick(Sender: TObject);
    procedure ModulLihatDonaturClick(Sender: TObject);
    procedure ModulUserClick(Sender: TObject);
    procedure ModulHakAksesClick(Sender: TObject);
    procedure ModulKabupatenClick(Sender: TObject);
    procedure ModulLihatTransaksiClick(Sender: TObject);
    procedure ModulJatuhTempoClick(Sender: TObject);
    procedure ModulPosisiClick(Sender: TObject);
    procedure dxbrlrgbtn11Click(Sender: TObject);
    procedure ModulPenyimpananClick(Sender: TObject);
    procedure ModulLapHarianClick(Sender: TObject);
    procedure ModulPenjemputClick(Sender: TObject);
    procedure ModulPeriodeClick(Sender: TObject);
    procedure ModulKelompokClick(Sender: TObject);
    procedure ModulPerkiraanClick(Sender: TObject);
    procedure ModulNominalClick(Sender: TObject);
    procedure ModulMutasiClick(Sender: TObject);
    procedure ModulTransaksiClick(Sender: TObject);
    procedure ModulLihatPengeluaranClick(Sender: TObject);
    procedure ModulPengeluaranClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ModulLogoutClick(Sender: TObject);
    procedure ModulLapPerAmilClick(Sender: TObject);
    procedure ModulRekapKencrenganClick(Sender: TObject);
    procedure ModulLoginClick(Sender: TObject);
    procedure ModulLapPenerimaanClick(Sender: TObject);
    procedure ModulPengaturanClick(Sender: TObject);
    procedure btnRegClick(Sender: TObject);
    procedure ModulSaldoHarianClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ModulKecamatanClick(Sender: TObject);
    procedure ModulRekKoranClick(Sender: TObject);
    procedure ModulMutasiOperasionalClick(Sender: TObject);
    procedure ModulSaldoBulananClick(Sender: TObject);
    procedure aplctnvnts1Exception(Sender: TObject; E: Exception);
    procedure tmrKoneksiTimer(Sender: TObject);
    procedure ModulPenerimaanPerkiraanClick(Sender: TObject);
    procedure ModulRekapPenerimaaManfaatClick(Sender: TObject);
    procedure ModulMutasiTransaksiClick(Sender: TObject);
    procedure ModulHiistoriTransaksiMitraClick(Sender: TObject);
    procedure ModulSaldoAwalMitraClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure aktif_menu(menu: Boolean);
    procedure loginUser;
    procedure DelGroup;
    //procedure cek_register;
    //function cek_key: Boolean;
  end;

var
  FrmHalamanUtama: TFrmHalamanUtama;

implementation

uses
  UAmil, UDonaturV2, UVDonatur, UUser, UHakakses, UKabupaten,
  UTransaksi, UJatuhTempo, UPosisi, UNominal, UPenyimpanan, ULaporanHarian,
  UKoneksi, USetAmilDonatur, UPriode, UKelompokPerkiraan, UPerkiraan,
  UMutasi, UTampilTransaksi, UVPengeluaran, UPengeluaranV2,
  URekapPendapatanPeramil, URekapKencrengan, ULogin, ULaporanBulanan,
  UPengaturan, UVariabel, eshardwareid, UControl, UTutupSaldoHarian,
  UKecamatan, URekKoran, UPeminjamanOperasional, UTtpSaldoBulanan,
  UViewPerPerkiraan, URekapPenerimaManfaat, UMutasiTransaksiDonatur,
  UHistoryMitra, USaldoAwalMitra;

{$R *.dfm}

procedure TFrmHalamanUtama.ModulAmilClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('FrmAmil')) then
    Application.CreateForm(TFrmAmil, FrmAmil);
  FrmAmil.BringToFront;
end;

procedure TFrmHalamanUtama.ModulTambahDonaturClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('FrmDataDonatur')) then
    Application.CreateForm(TFrmDonatur, FrmDonatur);
  FrmDonatur.BringToFront;
end;

procedure TFrmHalamanUtama.ModulLihatDonaturClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('FrmDataDonatur')) then
    Application.CreateForm(TFrmDataDonatur, FrmDataDonatur);
  FrmDataDonatur.BringToFront;
end;

procedure TFrmHalamanUtama.ModulUserClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('FrmUser')) then
    Application.CreateForm(TFrmUser, FrmUser);
  FrmUser.BringToFront;
end;

procedure TFrmHalamanUtama.ModulHakAksesClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('FrmHakAkses')) then
    Application.CreateForm(TFrmHakAkses, FrmHakAkses);
  FrmHakAkses.BringToFront;
end;

procedure TFrmHalamanUtama.ModulKabupatenClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('FrmKabupaten')) then
    Application.CreateForm(TFrmKabupaten, FrmKabupaten);
  FrmKabupaten.BringToFront;
end;

procedure TFrmHalamanUtama.ModulLihatTransaksiClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('frmLihatTransaksi')) then
    Application.CreateForm(TfrmLihatTransaksi, frmLihatTransaksi);
  frmLihatTransaksi.BringToFront;
end;

procedure TFrmHalamanUtama.ModulJatuhTempoClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmJatuhTempo')) then
    Application.CreateForm(TfrmJatuhTempo, frmJatuhTempo);
  frmJatuhTempo.BringToFront;
end;

procedure TFrmHalamanUtama.ModulPosisiClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('FrmPosisi')) then
    Application.CreateForm(TFrmPosisi, FrmPosisi);
  FrmPosisi.BringToFront;
end;

procedure TFrmHalamanUtama.dxbrlrgbtn11Click(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('FrmNominal')) then
    FrmNominal := TFrmNominal.Create(Application);
  FrmNominal.BringToFront;
end;

procedure TFrmHalamanUtama.ModulPenyimpananClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmPenyimpanan')) then
    frmPenyimpanan := TfrmPenyimpanan.Create(Application);
  frmPenyimpanan.BringToFront;
end;

procedure TFrmHalamanUtama.ModulLapHarianClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('FrmLaporanHarian')) then
    Application.CreateForm(TFrmLaporanHarian, FrmLaporanHarian);
  FrmLaporanHarian.BringToFront;
end;

procedure TFrmHalamanUtama.ModulPenjemputClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmSetAmilDonatur')) then
    Application.CreateForm(TfrmSetAmilDonatur, frmSetAmilDonatur);
  frmSetAmilDonatur.BringToFront;
end;

procedure TFrmHalamanUtama.ModulPeriodeClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('FrmPriode')) then
    Application.CreateForm(TFrmPriode, FrmPriode);
  FrmPriode.BringToFront;

end;

procedure TFrmHalamanUtama.ModulKelompokClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('FrmKelompokPerkiraan')) then
    Application.CreateForm(TFrmKelompokPerkiraan, FrmKelompokPerkiraan);
  //FrmKelompokPerkiraan:=TFrmKelompokPerkiraan.Create(nil);
  FrmKelompokPerkiraan.BringToFront;

end;

procedure TFrmHalamanUtama.ModulPerkiraanClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('FrmPerkiraan')) then
    Application.CreateForm(TFrmPerkiraan, FrmPerkiraan);
  FrmPerkiraan.BringToFront;

end;

procedure TFrmHalamanUtama.ModulNominalClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('frmNominal')) then
    Application.CreateForm(TfrmNominal, frmNominal);
  frmNominal.BringToFront;

end;

procedure TFrmHalamanUtama.ModulMutasiClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmMutasi')) then
    Application.CreateForm(TfrmMutasi, frmMutasi);
  frmMutasi.BringToFront;

end;

procedure TFrmHalamanUtama.ModulTransaksiClick(Sender: TObject);
begin

  if not Assigned(Application.FindComponent('frmTransaksi')) then
    Application.CreateForm(TfrmTransaksi, frmTransaksi);
  frmTransaksi.BringToFront;

end;

procedure TFrmHalamanUtama.ModulLihatPengeluaranClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmDataPengeluaran')) then
    Application.CreateForm(TfrmDataPengeluaran, frmDataPengeluaran);
  frmDataPengeluaran.BringToFront;
end;

procedure TFrmHalamanUtama.ModulPengeluaranClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmPenyaluranV2')) then
    Application.CreateForm(TfrmPenyaluranV2, frmPenyaluranV2);
  frmPenyaluranV2.BringToFront;

end;

procedure TFrmHalamanUtama.aktif_menu(menu: Boolean);
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TdxBarLargeButton) then
      TdxBarLargeButton(Components[i]).Enabled := menu;
  end;
end;

procedure TFrmHalamanUtama.FormCreate(Sender: TObject);
begin
  aktif_menu(False);
  Caption := Application.Title;
  TabDXReg.Visible := False;
  qryData.Connection := ADOKoneksi;
  //dxrbn1.SupportNonClientDrawing := not dxrbn1.SupportNonClientDrawing;
  //statusBarMenu.Invalidate;
  FLog := TFLog.Create;
end;

procedure TFrmHalamanUtama.ModulLogoutClick(Sender: TObject);
var
  i: Byte;
begin
  aktif_menu(False);
  if (Self.MDIChildCount > 0) then
  begin
    for i := 0 to Self.MDIChildCount - 1 do
    begin
      Self.MDIChildren[i].Close;
    end;
  end;
  ModulLogin.Enabled := True;
end;

procedure TFrmHalamanUtama.ModulLapPerAmilClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmRekapPenerimaanAmil')) then
    Application.CreateForm(TfrmRekapPenerimaanAmil, frmRekapPenerimaanAmil);
  frmRekapPenerimaanAmil.BringToFront;
end;

procedure TFrmHalamanUtama.ModulRekapKencrenganClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmRekapKencrengan')) then
    Application.CreateForm(TfrmRekapKencrengan, frmRekapKencrengan);
  frmRekapKencrengan.BringToFront;
end;

procedure TFrmHalamanUtama.ModulLoginClick(Sender: TObject);

begin
  Application.CreateForm(TfrmLogin, frmLogin);
  frmLogin.Show;
  frmLogin.BringToFront;
end;

procedure TFrmHalamanUtama.DelGroup;
var
  i: Byte;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TdxBar) and (TdxBar(Components[i]).ItemLinks.Count < 1)
      then
    begin
      TdxBar(Components[i]).Visible := False;
    end;
  end;

end;

procedure TFrmHalamanUtama.ModulLapPenerimaanClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmLaporanBulanan')) then
    Application.CreateForm(TfrmLaporanBulanan, frmLaporanBulanan);
  frmLaporanBulanan.BringToFront;
end;

procedure TFrmHalamanUtama.ModulPengaturanClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmPengaturan')) then
    Application.CreateForm(TfrmPengaturan, frmPengaturan);
  frmPengaturan.BringToFront;
end;

procedure TFrmHalamanUtama.loginUser;
var
  CalcThread: TCalcThread;

begin
  {  with qryData do
    begin
      Close;
      Parameters[0].Value := FPUser;
      Open;
      //ShowMessage(IntToStr(qryData.RecordCount));
      First;
      while not eof do
      begin
        if (FrmHalamanUtama.Components[intgrfldqry1id_modul.AsInteger] is
          TdxBarLargeButton) and
          (TdxBarLargeButton(FrmHalamanUtama.Components[intgrfldqry1id_modul.AsInteger])
          .Name = fieldqry1modul_name.AsString) then
        begin
          TdxBarLargeButton(FrmHalamanUtama.Components[intgrfldqry1id_modul.AsInteger]).
            Enabled := True;
        end;
        qryData.Next;
      end;
    end;}
  CalcThread := TCalcThread.Create(true);
  CalcThread.FreeOnTerminate := true;
  CalcThread.qryData := qryData;
  CalcThread.Resume;
  ModulLogin.Enabled := False;

end;

{procedure TFrmHalamanUtama.cek_register;
var
  ado: TADOQuery;
begin
  with ado do
  begin
    ado := TADOQuery.Create(Application);
    Connection := ADOKoneksi;
    Close;
    SQL.Clear;
    SQL.Add('SELECT count(*) as total from tbl_detail_transaksi');
    Open;
    if (cek_key = False) and (FieldByName('total').AsInteger < 200) then
    begin
      eshardwareid.gethardwareid;
      eKey.Text := IntToStr(StrToInt(eshardwareid.HDDSerialno) div 200000);
      TabDXReg.Active := True;
      Caption := '[UNREGISTRASI] ' + Application.Title;
    end
    else if ((FieldByName('total').AsInteger) > 200) and (cek_key = False) then
    begin
      aktif_menu(false);
      eshardwareid.gethardwareid;
      eKey.Text := IntToStr(Abs(StrToInt(eshardwareid.HDDSerialno) div 200000));
      TabDXReg.Active := True;
      Caption := '[UNREGISTRASI] ' + Application.Title;
    end
    else
    begin
      TabDXReg.Visible := False;
      TabDXUtama.Active := True;
    end;
    FreeAndNil(ado);
  end;
end;  }

{function TFrmHalamanUtama.cek_key: Boolean;
var
  key: string;
begin
  try
    eshardwareid.gethardwareid;
    eKey.Text := IntToStr(StrToInt(eshardwareid.HDDSerialno) div 200000);
    key := eKey.Text + 'DASI NTB' + 'DASI.NTB';
    ickyReg.CreateIcekey(key);
    if (BacaRegistry('registrasi') = ickyReg.GetIcekey) then
      Result := True
    else
      Result := False;
  except
    Result := False;
  end;
end;
 }

procedure TFrmHalamanUtama.btnRegClick(Sender: TObject);
var
  myfile: TextFile;
  ch, key: string;
begin
  key := eKey.Text + 'DASI NTB' + 'DASI.NTB';
  ickyReg.CreateIcekey(key);
  if (dlgOpenReg.Execute) then
  begin
    assignfile(myfile, dlgOpenReg.FileName);
    reset(myfile);
    readln(myfile, ch);
    if (ch = ickyReg.GetIcekey) then
    begin
      TulisRegistry('registrasi', ickyReg.GetIcekey);
      MessageBox(Handle, 'Registrasi Berhasil !!!', 'Registrasi',
        MB_ICONINFORMATION + MB_OK);
      ModulLoginClick(Sender);
    end
    else
      MessageBox(Handle, 'Registrasi Gagal !!!', 'Registrasi',
        MB_ICONERROR + MB_OK);
  end;
end;

procedure TFrmHalamanUtama.ModulSaldoHarianClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('frmTtpSaldoHarian')) then
    Application.CreateForm(TfrmTtpSaldoHarian, frmTtpSaldoHarian);
  frmTtpSaldoHarian.BringToFront;
end;

procedure TFrmHalamanUtama.FormActivate(Sender: TObject);
begin
  if Assigned(Application.FindComponent('frmLogin')) then
    frmLogin.BringToFront;
end;

procedure TFrmHalamanUtama.ModulKecamatanClick(Sender: TObject);
begin
  if not assigned(Application.FindComponent('frmKecamatan')) then
    Application.CreateForm(TfrmKecamatan, frmKecamatan);
  frmKecamatan.BringToFront;

end;

{ TCalcThread }

function TCalcThread.cek_key: Boolean;
var
  key: string;
begin
  try
    eshardwareid.gethardwareid;
    FrmHalamanUtama.eKey.Text := IntToStr(Abs(StrToInt(eshardwareid.HDDSerialno)
      div
      200000));
    key := FrmHalamanUtama.eKey.Text + 'DASI NTB' + 'DASI.NTB';
    FrmHalamanUtama.ickyReg.CreateIcekey(key);
    if (BacaRegistry('registrasi') = FrmHalamanUtama.ickyReg.GetIcekey) then
      Result := True
    else
      Result := False;
  except
    Result := False;
  end;
end;

procedure TCalcThread.cek_register;
var
  ado: TADOQuery;
begin
  with FrmHalamanUtama, ado do
  begin
    ado := TADOQuery.Create(Application);
    Connection := ADOKoneksi;
    Close;
    SQL.Clear;
    SQL.Add('SELECT count(*) as total from tbl_detail_transaksi');
    Open;
    if (self.cek_key = False) and (FieldByName('total').AsInteger < 200) then
    begin
      eshardwareid.gethardwareid;
      FrmHalamanUtama.eKey.Text :=
        IntToStr(abs(StrToInt(eshardwareid.HDDSerialno)
        div 200000));
      FrmHalamanUtama.TabDXReg.Active := True;
      FrmHalamanUtama.Caption := '[UNREGISTRASI] ' + Application.Title;
    end
    else if ((FieldByName('total').AsInteger) > 200) and (self.cek_key = False)
      then
    begin
      Self.aktif_menu(false);
      eshardwareid.gethardwareid;
      eKey.Text := IntToStr(Abs(StrToInt(eshardwareid.HDDSerialno) div 200000));
      TabDXReg.Active := True;
      Caption := '[UNREGISTRASI] ' + Application.Title;
    end
    else
    begin
      TabDXReg.Visible := False;
      TabDXUtama.Active := True;
    end;
    FreeAndNil(ado);
  end;
end;

procedure TCalcThread.Execute;
begin
  inherited;
  //FrmHalamanUtama.statusBarMenu.Panels[0].
  //Synchronize(cek_register);
  with qryData do
  begin
    Close;
    Parameters[0].Value := FPUser;
    Open;
    //ShowMessage(IntToStr(qryData.RecordCount));
    First;
    while not eof do
    begin
      if (FrmHalamanUtama.Components[FieldByName('id_modul').AsInteger] is
        TdxBarLargeButton) and
      (TdxBarLargeButton(FrmHalamanUtama.Components[FieldByName('id_modul').AsInteger])
        .Name = FieldByName('modul_name').AsString) then
      begin
        TdxBarLargeButton(FrmHalamanUtama.Components[FieldByName('id_modul').AsInteger]).
        Enabled := True;
      end;
      qryData.Next;
    end;
  end;
  FrmHalamanUtama.ModulLogin.Enabled := False;
  //Synchronize(cek_key);
end;

procedure TCalcThread.aktif_menu(opt: Boolean);
var
  i: integer;
begin
  with FrmHalamanUtama do
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      if (Components[i] is TdxBarLargeButton) then
        TdxBarLargeButton(Components[i]).Enabled := opt;
    end;
  end;
end;

procedure TFrmHalamanUtama.ModulRekKoranClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmRekKoran')) then
    Application.CreateForm(TfrmRekKoran, frmRekKoran);
  frmRekKoran.BringToFront;
end;

procedure TFrmHalamanUtama.ModulMutasiOperasionalClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmPeminjamanOperasional')) then
    Application.CreateForm(TfrmPeminjamanOperasional, frmPeminjamanOperasional);
  frmPeminjamanOperasional.BringToFront;
end;

procedure TFrmHalamanUtama.ModulSaldoBulananClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmTtpSaldoBulanan')) then
    Application.CreateForm(TfrmTtpSaldoBulanan, frmTtpSaldoBulanan);
  frmTtpSaldoBulanan.BringToFront;
end;

procedure TFrmHalamanUtama.aplctnvnts1Exception(Sender: TObject;
  E: Exception);
begin
  if (fpbug = 1) then
  begin
    MessageBox(Handle, PChar('Kesalahan :' + #13 +
      e.Message), 'Bugs', MB_ICONERROR + MB_OK);
  end
  else
  begin
    if (pos('MySQL server has gone away', e.Message) > 0) then
    begin
      FLog.Pesan := Sender.ClassName + ':' + E.Message;
      FLog.SimpanPesan;
      tmrKoneksi.Enabled := True;
      statusBarMenu.Panels[3].PanelStyle.Font.Color := clRed;
      statusBarMenu.Panels[3].Text := #187 + ' Not Connected';
      ADOKoneksi.Free;
      ADOKoneksi := TKoneksi.Create(Application);
      ADOKoneksi.myKoneksi;
    end
    else
    begin
      FLog.Pesan := Sender.ClassName + ':' + E.Message;
      FLog.SimpanPesan;
      Exit;
    end;
  end;
end;

procedure TFrmHalamanUtama.tmrKoneksiTimer(Sender: TObject);
begin
  if (ADOKoneksi.Connected = true) then
  begin
    statusBarMenu.Panels[3].PanelStyle.Font.Color := clHotLight;
    statusBarMenu.Panels[3].Text := #187 + ' Connected';
    tmrKoneksi.Enabled := False;
  end;

end;

procedure TFrmHalamanUtama.ModulPenerimaanPerkiraanClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmTransaksiPePerkiraan')) then
    Application.CreateForm(TfrmTransaksiPePerkiraan, frmTransaksiPePerkiraan);
  frmTransaksiPePerkiraan.BringToFront;
end;

procedure TFrmHalamanUtama.ModulRekapPenerimaaManfaatClick(
  Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmRekapPenerimaManfaat')) then
    Application.CreateForm(TfrmRekapPenerimaManfaat, frmRekapPenerimaManfaat);
  frmRekapPenerimaManfaat.BringToFront;
end;

procedure TFrmHalamanUtama.ModulMutasiTransaksiClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmMutasiTransaksiDonatur')) then
    Application.CreateForm(TfrmMutasiTransaksiDonatur,
      frmMutasiTransaksiDonatur);
  frmMutasiTransaksiDonatur.ShowModal;
end;

procedure TFrmHalamanUtama.ModulHiistoriTransaksiMitraClick(
  Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmHistoryMitra')) then
    Application.CreateForm(TfrmHistoryMitra,
      frmHistoryMitra);
  frmHistoryMitra.BringToFront;
end;

procedure TFrmHalamanUtama.ModulSaldoAwalMitraClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmSaldoAwalMitra')) then
    Application.CreateForm(TfrmSaldoAwalMitra,
      frmSaldoAwalMitra);
  frmSaldoAwalMitra.BringToFront;

end;

end.

