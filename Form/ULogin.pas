unit ULogin;

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
  dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControl, Menus, StdCtrls, cxButtons, cxTextEdit,
  dxLayoutLookAndFeels, UGeneral, pngimage, ExtCtrls, UHijriah,
  cxLookAndFeels;

type
  TfrmLogin = class(TFGeneral)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    eUserName: TcxTextEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    ePassword: TcxTextEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    btn1: TcxButton;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    btn2: TcxButton;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    img1: TImage;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    hjrh1: THijriah;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  UMenuUtama, UVariabel, Login, Pengaturan;

{$R *.dfm}

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  eUserName.Clear;
  ePassword.Clear;
  ePassword.Properties.ReadOnly := False;
  eUserName.Properties.ReadOnly := False;
  FLogin := TFLogin.Create(Application);
end;

procedure TfrmLogin.btn1Click(Sender: TObject);
begin
  if (cek_kosong) then
  begin
    FLogin.username := eUserName.Text;
    FLogin.password := ePassword.Text;
    if (FLogin.login = TRUE) then
    begin
      FPUser := eUserName.Text;
      FrmHalamanUtama.statusBarMenu.Panels[0].Text := 'Periode ' +
        FPPeriode;
      FrmHalamanUtama.statusBarMenu.Panels[1].Text := 'Tanggal ' +
        FormatDateTime('DD', FPPeriodeAwal) +
        ' s.d  '
        + FormatDateTime('dd MMMM yyyy', FPPeriodeAkhir);
      hjrh1.TangalMasehi := Now;
      FrmHalamanUtama.ModulLogout.Enabled := True;
      FrmHalamanUtama.statusBarMenu.Panels[2].Text := 'User login  ' +
        eUserName.Text +
        ' Mulai Jam ' + FormatDateTime('HH:MM:SS', Now) + ' Pada Hari ' +
        FormatDateTime('DDDD , ', Now) + hjrh1.TanggalHijriah + ' / ' +
        FormatDateTime('DD MMMM YYYY', Now) + ' M';
      FSetting := TFPengaturan.Create(Application);
      FSetting.Pengaturan;
      //FrmHalamanUtama.cek_key;
      //FrmHalamanUtama.cek_register;
      FrmHalamanUtama.loginUser;
      Close;
    end
    else
      MessageBox(Handle, PChar('Username dan Password Salah'), 'Login', MB_OK +
        MB_ICONWARNING + MB_DEFBUTTON1);
  end;

end;

procedure TfrmLogin.btn2Click(Sender: TObject);
begin
  //FrmHalamanUtama.ModulLogin.Enabled := True;
  Application.Terminate;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  eUserName.Clear;
  ePassword.Clear;
  eUserName.SetFocus;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.

