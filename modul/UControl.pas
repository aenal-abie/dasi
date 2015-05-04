unit UControl;

interface
uses
  ADODB, Classes , StdCtrls,Buttons,strUtils,sysUtils,cxButtons,Forms,cxTextEdit,
  cxDropDownEdit,cxCalendar,cxMemo,cxDBExtLookupComboBox,Registry;

{all procedure }
  // mengatur tombol crud (create, update, delete);
  procedure set_button(setting:String; btn1,btn2,btn3,btn4,btn5:TcxButton);overload;
  procedure set_button(setting:String; btn1,btn2,btn3,btn4:TcxButton); overload;
  procedure set_button(setting:String; btn1,btn2,btn3:TcxButton); overload;
  procedure set_button(setting:String; btn1,btn2:TcxButton); overload;
  //procedure isi_combo(cmb:TComboBox);
  procedure isi_combo(cmb:TComboBox; var list:TStringList ; kode,value,query:String);
  function PartialSpell( strInput : String) : String;
  function Spell(strInput : String) : String ;
  {setting aktivasi control semua inputan}
  procedure nonaktif_input(aktif: Boolean; form:TForm);
  procedure kosongkanInputan( form:TForm);
  procedure TulisRegistry(AName, AValue: String);
  function BacaRegistry(ANama: String): String;
{end procedure}

implementation

uses UKoneksi;

procedure nonaktif_input(aktif: Boolean; form:TForm);
var
  i:Integer;
begin
  for i := 0 to form.ComponentCount-1 do
  begin
  if (form.Components[I] is TcxTextEdit)then
    TcxTextEdit(form.Components[I]).Properties.ReadOnly:=aktif
  else
  if (form.Components[I] is TcxComboBox) then
    TcxComboBox(form.Components[I]).Properties.ReadOnly:=aktif
  else if(form.Components[I] is TcxDateEdit) then
    TcxDateEdit(form.Components[I]).Properties.ReadOnly:=aktif
  else if (form.Components[I] is TcxMemo) then
    TcxMemo(form.Components[I]).Properties.ReadOnly:=aktif
  else if (form.Components[I] is TcxExtLookupComboBox) then
    TcxExtLookupComboBox(form.Components[I]).Properties.ReadOnly:=aktif
  end;

end;


procedure kosongkanInputan( form:TForm);
var
  i:Integer;
begin
  for i := 0 to form.ComponentCount-1 do
  begin
  if (form.Components[I] is TcxTextEdit)then
    TcxTextEdit(form.Components[I]).Text:=''
  else
  if (form.Components[I] is TcxComboBox) then
    TcxComboBox(form.Components[I]).Text:=''
  else if(form.Components[I] is TcxDateEdit) then
    TcxDateEdit(form.Components[I]).Date:=Date
  else if (form.Components[I] is TcxMemo) then
    TcxMemo(form.Components[I]).Lines.Clear
  else if (form.Components[I] is TcxExtLookupComboBox) then
    TcxExtLookupComboBox(form.Components[I]).Text:='';
  end;

end;



procedure set_button(setting:String; btn1,btn2,btn3,btn4,btn5:TcxButton);
begin
  If(MidStr(setting,1,1)='e') then
    btn1.Enabled:=true else btn1.Enabled:=false;

  If(MidStr(setting,2,1)='e') then
    btn2.Enabled:=true else btn2.Enabled:=false;

  If(MidStr(setting,3,1)='e') then
    btn3.Enabled:=true else btn3.Enabled:=false;

  If(MidStr(setting,4,1)='e') then
    btn4.Enabled:=true else btn4.Enabled:=false;

  If(MidStr(setting,5,1)='e') then
    btn5.Enabled:=true else btn5.Enabled:=false;

end;

procedure set_button(setting:String; btn1,btn2,btn3,btn4:TcxButton); overload;
begin
  If(MidStr(setting,1,1)='e') then
    btn1.Enabled:=true else btn1.Enabled:=false;

  If(MidStr(setting,2,1)='e') then
    btn2.Enabled:=true else btn2.Enabled:=false;

  If(MidStr(setting,3,1)='e') then
    btn3.Enabled:=true else btn3.Enabled:=false;

  If(MidStr(setting,4,1)='e') then
    btn4.Enabled:=true else btn4.Enabled:=false;
end;


procedure set_button(setting:String; btn1,btn2,btn3:TcxButton);
begin
    If(MidStr(setting,1,1)='e') then
    btn1.Enabled:=true else btn1.Enabled:=false;

  If(MidStr(setting,2,1)='e') then
    btn2.Enabled:=true else btn2.Enabled:=false;

  If(MidStr(setting,3,1)='e') then
    btn3.Enabled:=true else btn3.Enabled:=false;

end;


procedure set_button(setting:String; btn1,btn2:TcxButton); overload;
begin
    If(MidStr(setting,1,1)='e') then
    btn1.Enabled:=true else btn1.Enabled:=false;

  If(MidStr(setting,2,1)='e') then
    btn2.Enabled:=true else btn2.Enabled:=false;

end;

procedure isi_combo(cmb:TComboBox; var list:TStringList ; kode,value,query:String);
var
  ado:TADOQuery;
begin
  ado:=TADOQuery.Create(ado);
  ado.Connection:=ADOKoneksi;
  list:=TStringList.Create;
  with ado do begin
    Close;
    SQL.Clear;
    SQL.Add(query);
    Open;
  end;
  cmb.Clear;
  list.Clear;
  while not ado.Eof do begin
    list.Add(ado.fieldbyname(kode).AsString);
    cmb.Items.Append(ado.fieldbyname(value).AsString);
    ado.Next;
  end;
  FreeAndNil(ado);
end;

function Spell(strInput : String) : String ;
var i : integer;
    j : Byte;
  strPars, strOlah, strSebutan, strHasil, strSpell : String;
begin
  if length(strInput)>15 then raise Exception.Create('Nilai maksimal 999.999.999.999.999');
  strInput:=Copy(strInput,1,15);
  strPars := strInput;
  i := length(strInput);
  repeat
    //--mengambil angka 3 digit dimulai dari belakang
    j := length(strPars) Mod 3;
    If j <> 0 Then
    begin
      strOlah := copy(strPars, 1, j);
      strPars := copy(strPars, j + 1, length(strPars) - j)
    end
    Else
    begin
      strOlah := copy(strPars, 1, 3);
      strPars := copy(strPars,4,length(strPars)-3);
    End;
    //--membilang 3 digit angka yang ada
    strSpell := PartialSpell(strOlah);
    //--menambahkan satuan yang sesuai, misalnya : ribu, juta, milyar, trilyun
    If strSpell <> '' Then
      If i > 12 Then
        strSebutan := 'trilyun '
       else if i > 9 Then
         strSebutan := 'milyar '
        else if i > 6 Then
          strSebutan := 'juta '
         else if i > 3 Then
          begin
           strSebutan := 'ribu ';
           If strSpell = 'satu ' Then strSpell := 'se'
          end;
    strHasil := strHasil + strSpell + strSebutan;
    strSpell := '';
    strSebutan := '';
    dec(i,3);
  until i<1;
  if Length(StrHasil)>0 then StrHasil[1]:=UpCase(StrHasil[1]);
  Spell := strHasil;
end;


function PartialSpell( strInput : String) : String;
var strSebutan, strAngka, strHasil : String;
    sTAngka : char;
    i,sAngka : Byte;
begin
  For i := length(strInput) DownTo 1 do
   begin
    //--ambil satu digit
    sTAngka := strInput[i];
    if not (sTAngka  in ['0'..'9']) then continue;
    sAngka := strToInt(copy(strInput, i, 1));
    //--ubah angka menjadi huruf yang sesuai, kecuali angka nol
    Case sAngka of
       1: strAngka := 'satu ';
       2: strAngka := 'dua ';
       3: strAngka := 'tiga ';
       4: strAngka := 'empat ';
       5: strAngka := 'lima ';
       6: strAngka := 'enam ';
       7: strAngka := 'tujuh ';
       8: strAngka := 'delapan ';
       9: strAngka := 'sembilan ';
       0: begin
             strAngka := '';
             strSebutan := '';
          end;
    End;
    strSebutan := '';
    //--cek kondisi khusus untuk angka 1 yang bisa berubah jad 'se'
    If (sAngka = 1) And (i <> length(strInput)) Then strAngka := 'se';
    //--tambahkan satuan yang sesuai yaitu puluh, belas, ratus
    If ((length(strInput) - i) = 1) And (sAngka <> 0) Then
     begin
      strSebutan := 'puluh ';
      If (sAngka = 1) And (strHasil <> '') Then
       begin
        strSebutan := 'belas ';
        If strHasil = 'satu ' Then strAngka := 'se'
          Else strAngka := strHasil;
        strHasil := '';
       end
     End
     else if ((length(strInput) - i) = 2) And (sAngka <> 0) Then
         strSebutan := 'ratus ';
    strHasil := strAngka + strSebutan + strHasil
  end;
  PartialSpell := strHasil
end;

procedure TulisRegistry(AName, AValue: String);
var
  Reg : TRegistry;
  appName : String;
begin
  Reg := TRegistry.Create;
  appName := 'DASI NTB';
  try
    //Reg.RootKey := ;
    if Reg.OpenKey('\Software\' + appName , True) then
    begin
      Reg.WriteString(AName, AValue);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

function BacaRegistry(ANama: String): String;
var
  Registry: TRegistry;
begin
  Registry:=TRegistry.Create;
  try
    //Registry.RootKey:=HKEY_CURRENT_USER;
    Registry.OpenKey('\Software\' + 'DASI NTB', False);
    Result := Registry.ReadString(ANama);
  finally
    Registry.Free;
  end;
end;
end.
