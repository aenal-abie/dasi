unit UGeneral;
interface

uses SysUtils, Controls, Forms, ADODB, UKoneksi, cxTextEdit, Windows,
  cxDropDownEdit, cxCalendar, cxMemo, cxDBExtLookupComboBox, cxButtons,
  cxRadioGroup, cxButtonEdit,
  cxCurrencyEdit, cxSpinEdit, Classes, cxMaskEdit, DBClient, cxDBLookupComboBox;

type
  TFGeneral = class(TForm)
  private
  protected
    procedure Koneksikan(); overload;
    procedure Koneksikan(AdoQry: TADOQuery); overload;
    procedure Koneksikan(AdoQry: TADOStoredProc); overload;
    procedure Koneksikan(AdoQry1, AdoQry2: TADOQuery); overload;
    procedure Koneksikan(AdoQry1, AdoQry2, AdoQry3: TADOQuery); overload;
    procedure Logika_Button(btnSimpanEnable: Boolean);
    function cek_kosong(): Boolean; overload;
    function cek_kosong(option: Byte): Boolean; overload;
    procedure msgSuksesAdd(msg: string); overload;
    procedure msgSuksesAdd(); overload;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{ TGeneral }

procedure TFGeneral.Koneksikan(AdoQry: TADOQuery);
begin
  AdoQry.DisableControls;
  AdoQry.Close;
  AdoQry.Connection := ADOKoneksi;
  AdoQry.Open;
  AdoQry.EnableControls;
end;

procedure TFGeneral.Koneksikan(AdoQry1, AdoQry2, AdoQry3: TADOQuery);
begin
  AdoQry1.DisableControls;
  AdoQry1.Close;
  AdoQry1.Connection := ADOKoneksi;
  AdoQry1.Open;
  AdoQry2.Close;
  AdoQry2.Connection := ADOKoneksi;
  AdoQry2.Open;
  AdoQry3.Close;
  AdoQry3.Connection := ADOKoneksi;
  AdoQry3.Open;
  AdoQry1.EnableControls;
end;

function TFGeneral.cek_kosong: Boolean;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TcxTextEdit) and (TcxTextEdit(Components[I]).Text = '')
      then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxTextEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxComboBox) and (TcxComboBox(Components[I]).Text
      =
      '') then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxComboBox(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxDateEdit) and (TcxDateEdit(Components[I]).Text
      =
      '') then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxDateEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxMemo) and (TcxMemo(Components[I]).Text = '')
      then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxMemo(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxExtLookupComboBox) and
      (TcxExtLookupComboBox(Components[I]).Text = '') then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxExtLookupComboBox(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxCurrencyEdit) and
      (TcxCurrencyEdit(Components[I]).Text = '') then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxCurrencyEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxMaskEdit) and (TcxMaskEdit(Components[I]).Text
      =
      '') then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxMaskEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxSpinEdit) and (TcxSpinEdit(Components[I]).Text
      =
      '') then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxSpinEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxButtonEdit) and
      (TcxButtonEdit(Components[I]).Text = '') then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxButtonEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxLookupComboBox) and
      (TcxLookupComboBox(Components[I]).Text = '') then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxLookupComboBox(Components[I]).SetFocus;
      Exit;
    end;
  end;
  Result := True;

end;

procedure TFGeneral.Koneksikan(AdoQry1, AdoQry2: TADOQuery);
begin
  AdoQry1.Close;
  AdoQry1.Connection := ADOKoneksi;
  AdoQry1.Open;
  AdoQry2.Close;
  AdoQry2.Connection := ADOKoneksi;
  AdoQry2.Open;
end;

procedure TFGeneral.Logika_Button(btnSimpanEnable: Boolean);
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TcxButton then
    begin
      with (Components[i] as TcxButton) do
      begin
        if Name = 'btnSimpan' then
          Enabled := btnSimpanEnable
        else if Name = 'btnUbah' then
          Enabled := not btnSimpanEnable
        else if Name = 'btnBatal' then
          Enabled := btnSimpanEnable
        else if Name = 'btnHapus' then
          Enabled := not btnSimpanEnable
        else if Name = 'btnTambah' then
          Enabled := not btnSimpanEnable
        else if Name = 'btnRefresh' then
          Enabled := not btnSimpanEnable;
      end;
    end
    else if (Components[I] is TcxTextEdit) then
    begin
      TcxTextEdit(Components[I]).Properties.ReadOnly := not btnSimpanEnable;
      TcxTextEdit(Components[I]).Clear;
    end
    else if (Components[I] is TcxComboBox) then
    begin
      TcxComboBox(Components[I]).Properties.ReadOnly := not btnSimpanEnable;
      TcxTextEdit(Components[I]).Text := '';
    end
    else if (Components[I] is TcxDateEdit) then
    begin
      TcxDateEdit(Components[I]).Properties.ReadOnly := not btnSimpanEnable;
      TcxDateEdit(Components[I]).Date := Now;
    end
    else if (Components[I] is TcxMemo) then
    begin
      TcxMemo(Components[I]).Properties.ReadOnly := not btnSimpanEnable;
      TcxMemo(Components[I]).Clear;
    end
    else if (Components[I] is TcxExtLookupComboBox) then
    begin
      TcxExtLookupComboBox(Components[I]).Properties.ReadOnly := not
        btnSimpanEnable;
      //TcxExtLookupComboBox(Components[I]).Text := '';
    end
    else if (Components[I] is TcxRadioButton) then
    begin
      TcxRadioButton(Components[I]).Checked := False;
    end
    else if (Components[I] is TcxCurrencyEdit) then
    begin
      TcxCurrencyEdit(Components[I]).Properties.ReadOnly := not btnSimpanEnable;
      TcxCurrencyEdit(Components[I]).Text := '';
    end
    else if (Components[i] is TcxMaskEdit) then
    begin
      TcxMaskEdit(Components[i]).EditText := '';
      TcxMaskEdit(Components[i]).Properties.ReadOnly := not btnSimpanEnable;
    end
    else if (Components[i] is TcxSpinEdit) then
    begin
      TcxSpinEdit(Components[i]).EditText := '';
      TcxSpinEdit(Components[i]).Properties.ReadOnly := not btnSimpanEnable;
    end
    else if (Components[I] is TcxLookupComboBox) then
    begin
      TcxLookupComboBox(Components[I]).Properties.ReadOnly := not
        btnSimpanEnable;
      //TcxLookupComboBox(Components[I]).EditValue := '';
    end
    else if (Components[I] is TcxButtonEdit) then
    begin
      TcxButtonEdit(Components[I]).Properties.ReadOnly := not
        btnSimpanEnable;
      TcxButtonEdit(Components[I]).Hint := '';
      TcxButtonEdit(Components[I]).EditValue := '';
      //TcxLookupComboBox(Components[I]).EditValue := '';
    end
    else if (Components[i] is TClientDataSet) then
    begin
      TClientDataSet(Components[i]).ReadOnly := not btnSimpanEnable;
      TClientDataSet(Components[i]).Close;
      TClientDataSet(Components[i]).Open;
    end;
  end;
end;

function TFGeneral.cek_kosong(option: Byte): Boolean;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TcxTextEdit) and (TcxTextEdit(Components[I]).Text = '')
      and (TcxTextEdit(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxTextEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxComboBox) and (TcxComboBox(Components[I]).Text
      =
      '') and (TcxComboBox(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxComboBox(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxDateEdit) and (TcxDateEdit(Components[I]).Text
      =
      '') and (TcxDateEdit(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxDateEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxMemo) and (TcxMemo(Components[I]).Text = '')
      and (TcxMemo(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxMemo(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxExtLookupComboBox) and
      (TcxExtLookupComboBox(Components[I]).Text = '') and
      (TcxExtLookupComboBox(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxExtLookupComboBox(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxCurrencyEdit) and
      (TcxCurrencyEdit(Components[I]).Text = '') and
      (TcxCurrencyEdit(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxCurrencyEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxMaskEdit) and (TcxMaskEdit(Components[I]).Text
      =
      '') and (TcxMaskEdit(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxMaskEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxSpinEdit) and (TcxSpinEdit(Components[I]).Text
      =
      '') and (TcxSpinEdit(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxSpinEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxButtonEdit) and
      (TcxButtonEdit(Components[I]).Text = '') and
      (TcxButtonEdit(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxButtonEdit(Components[I]).SetFocus;
      Exit;
    end
    else if (Components[I] is TcxLookupComboBox) and
      (TcxLookupComboBox(Components[I]).Text = '') and
      (TcxLookupComboBox(Components[I]).Tag = option) then
    begin
      MessageBox(Handle, 'Inputan Tidak Boleh Kosong', 'Validasi', MB_ICONWARNING
        + MB_OK);
      TcxLookupComboBox(Components[I]).SetFocus;
      Exit;
    end;
  end;
  Result := True;

end;

procedure TFGeneral.Koneksikan(AdoQry: TADOStoredProc);
begin
  AdoQry.DisableControls;
  AdoQry.Close;
  AdoQry.Connection := ADOKoneksi;
  AdoQry.Open;
  AdoQry.EnableControls;
end;

constructor TFGeneral.Create(AOwner: TComponent);
var
  i: integer;
begin
  inherited;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TADOQuery) and (TADOQuery(Components[i]).Tag = 0) then
      Koneksikan(TADOQuery(Components[i]))
    else if (Components[i] is TADOQuery) and (TADOQuery(Components[i]).Tag = 1)
      then
      TADOQuery(Components[i]).Connection := ADOKoneksi
    else if (Components[i] is TADOStoredProc) and
      (TADOStoredProc(Components[i]).Tag = 0) then
      Koneksikan(TADOStoredProc(Components[i]))
    else if (Components[i] is TADOStoredProc) and
      (TADOStoredProc(Components[i]).Tag = 1) then
      TADOStoredProc(Components[i]).Connection := ADOKoneksi;
  end;
end;

procedure TFGeneral.Koneksikan;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TADOQuery then
      Koneksikan(TADOQuery(Components[i]))
    else if Components[i] is TADOStoredProc then
      Koneksikan(TADOStoredProc(Components[i]));
  end;

end;

procedure TFGeneral.msgSuksesAdd(msg: string);
begin
  MessageBox(Handle, pchar(msg), 'Tambah Data',
    MB_ICONINFORMATION + MB_OK);
end;

procedure TFGeneral.msgSuksesAdd;
begin
  MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
    MB_ICONINFORMATION + MB_OK);
end;

end.

