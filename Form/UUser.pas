unit UUser;

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
  dxLayoutControl, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, 
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtons, cxDBExtLookupComboBox, ADODB,UGeneral,User,
  dxLayoutLookAndFeels, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData;

type
  TFrmUser = class(TFGeneral)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    eUserName: TcxTextEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    ePass: TcxTextEdit;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    eUPass: TcxTextEdit;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    btnTambah: TcxButton;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    btnSimpan: TcxButton;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    btnBatal: TcxButton;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    gridUser: TcxGridDBTableView;
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
    cbbAmil: TcxExtLookupComboBox;
    dxlytmdxlytcntrl1Item11: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    spUser: TADOStoredProc;
    spAmil: TADOStoredProc;
    dsAmil: TDataSource;
    dsUser: TDataSource;
    gridAmil: TcxGridDBTableView;
    gcolmUserid_user: TcxGridDBColumn;
    gcolmUserusername: TcxGridDBColumn;
    gcolmUserpassword: TcxGridDBColumn;
    gcolmUserkode_amil: TcxGridDBColumn;
    gcolmUsernama_amil: TcxGridDBColumn;
    gcolmAmilkode_amil: TcxGridDBColumn;
    gcolmAmilnama_amil: TcxGridDBColumn;
    gcolmAmilColumn1: TcxGridDBColumn;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridcxgrdvwrpstry1DBTableView1: TcxGridDBTableView;
    gcolmgridcxgrdvwrpstry1DBTableView1kode_amil: TcxGridDBColumn;
    gcolmgridcxgrdvwrpstry1DBTableView1nama_amil: TcxGridDBColumn;
    gcolmgridcxgrdvwrpstry1DBTableView1handphone: TcxGridDBColumn;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btnRefresh: TcxButton;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    Fuser:TFUser;
    function  cek_pass_sama:Boolean;
  public
    { Public declarations }
  end;

var
  FrmUser: TFrmUser;

implementation

{$R *.dfm}

procedure TFrmUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmUser.FormCreate(Sender: TObject);
begin
  Logika_Button(False);
  Fuser:=TFUser.Create(Application);
  Koneksikan(spUser);
  Koneksikan(spAmil);

end;

procedure TFrmUser.btnTambahClick(Sender: TObject);
begin
  Logika_Button(True);
  cbbAmil.SetFocus;
  Tag:=1;

end;

procedure TFrmUser.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  Tag:=0;

end;

procedure TFrmUser.btnHapusClick(Sender: TObject);
begin
    if(spUser.RecordCount>0) then
  begin
    Fuser.Kode:=gcolmUserid_user.DataBinding.Field.AsInteger;
    if MessageDlg('Anda Yakin Hapus ?',mtConfirmation,mbOKCancel,0)=mrok then
      Fuser.Delete;
      Koneksikan(spUser);
  end;

end;

procedure TFrmUser.btnSimpanClick(Sender: TObject);
begin
  with FUser do
  begin
    if(cek_kosong=True) and (cek_pass_sama=TRUE) then
    begin
      UserName:=eUserName.Text;
      password:=ePass.Text;
      kode_amil:=cbbAmil.EditValue;
      if(Self.Tag=1) then
      begin
        if FUser.Insert =TRUE then
        begin
          MessageBox(Handle,'Data berhasil ditambahkan','Tambah Data',MB_ICONINFORMATION+MB_OK);
          Logika_Button(False);
          Koneksikan(spUser);
        end
        else
          MessageBox(Handle,'Data gagal ditambah','Tambah Data',MB_ICONWARNING+MB_OK);
      end else
      if(Self.Tag=2)  then
      begin
        if FUser.Update =TRUE then
        begin
          MessageBox(Handle,'Data berhasil diubah','Ubah Data',MB_ICONINFORMATION+MB_OK);
          Logika_Button(False);
          Koneksikan(spUser);
        end
        else
          MessageBox(Handle,'Data gagal diubah','Ubah Data',MB_ICONWARNING+MB_OK);
      end;
    end;
  end;

end;

procedure TFrmUser.btnUbahClick(Sender: TObject);
begin
  Logika_Button(Enabled);
  Fuser.Kode:=gcolmUserid_user.DataBinding.Field.AsInteger;
  cbbAmil.EditValue:=gcolmUserkode_amil.DataBinding.Field.AsString;
  eUserName.Text:=gcolmUserusername.DataBinding.Field.AsString;
  ePass.Text:=gcolmUserpassword.DataBinding.Field.AsString;
  eUPass.Text:=gcolmUserpassword.DataBinding.Field.AsString;
  Tag:=2;
end;

function TFrmUser.cek_pass_sama: Boolean ;
begin
  if (ePass.Text=eUPass.Text) then
    Result:=true else
    begin
      Result:=false;
      MessageBox(Handle,'Password tidak sama degan ulangan pasword','Password',MB_ICONWARNING+MB_OK);
    end;
end;

procedure TFrmUser.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(spUser);
end;

end.
