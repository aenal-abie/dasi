unit ULog;

interface
uses
  SysUtils, Forms;
type
  TFLog = class
  private
    FPesan: string;
    errorFile: TextFile;
    procedure SetPesan(const Value: string);
    function SetSimpan: Boolean;
    procedure BuatFile;
    procedure isiFile;
  published
    property Pesan: string write SetPesan;
    property SimpanPesan: Boolean read SetSimpan;
  end;
var
  FLog: TFLog;
implementation

{ TFLog }

procedure TFLog.BuatFile;
begin
  AssignFile(errorFile, ExtractFilePath(Application.ExeName) + 'log.bak');
{$I-}Rewrite(errorFile){$I+};
  Writeln(errorFile, FormatDateTime('dd/MM/YY hh:nn:ss', Now()) + ' - ' +
    Fpesan);
  CloseFile(errorFile);

end;

procedure TFLog.isiFile;
begin
  AssignFile(errorFile, ExtractFilePath(Application.ExeName) + 'log.bak');
  Append(errorFile);
  Writeln(errorFile, FormatDateTime('dd/MM/YY hh:nn:ss', Now()) + ' - ' +
    Fpesan);
  CloseFile(errorFile);

end;

procedure TFLog.SetPesan(const Value: string);
begin
  FPesan := Value;
end;

function TFLog.SetSimpan: Boolean;
begin
  if not (FileExists('log.bak')) then
  begin
    BuatFile;
  end
  else
  begin
    isiFile;
  end;
end;

end.

