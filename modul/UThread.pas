unit UThread;

interface

uses
  Classes;

type
  TEiThread = class(TThread)
  private
    { Private declarations }
    FOnBeforeExecute: TNotifyEvent;
    FOnAfterExecute: TNotifyEvent;
    FOnExecute: TNotifyEvent;
    FOnUpdateGUI: TNotifyEvent;
    FCount: Integer;
    FOnBeforeExec: TNotifyEvent;
    FOnBeforeClose: TNotifyEvent;
    FOnAfterOpen: TNotifyEvent;
  protected
    procedure Execute; override;
    procedure ThreadBeforeExecute;
    procedure ThreadAfterExecute;
    procedure ThreadExecute;
    procedure ThreadUpdateGUI;
    {
      Database
    }
    procedure ThreadBeforeClose;
    procedure ThreadAfterOpen;
    procedure ThreadBeforeExec;
  public

    property OnBeforeExecute: TNotifyEvent read FOnBeforeExecute write
      FOnBeforeExecute;
    property OnAfterExecute: TNotifyEvent read FOnAfterExecute write
      FOnAfterExecute;
    property OnExecute: TNotifyEvent read FOnExecute write FOnExecute;
    property OnUpdateGUI: TNotifyEvent read FOnUpdateGUI write FOnUpdateGUI;
    property Count: Integer read FCount write FCount;

    {
      Database
    }

    property OnBeforeClose: TNotifyEvent read FOnBeforeClose write
      FOnBeforeClose;
    property OnAfterOpen: TNotifyEvent read FOnAfterOpen write FOnAfterOpen;
    property OnBeforeExec: TNotifyEvent read FOnBeforeExec write FOnBeforeExec;
  end;

  TEiThreadControl = class(TComponent)
    FThread: TEiThread;
  private
    FOnExecute: TNotifyEvent;
    FOnBeforeExecute: TNotifyEvent;
    FOnAfterExecute: TNotifyEvent;
    FCount: Integer;
    FOnUpdateGUI: TNotifyEvent;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ComponentBeforeExecute(Sender: TObject);
    procedure ComponentAfterExecute(Sender: TObject);
    procedure ComponentExecute(Sender: TObject);
    procedure ComponentUpdateGUI(Sender: TObject);
    procedure RunThread;
  published
    property OnBeforeExecute: TNotifyEvent read FOnBeforeExecute write
      FOnBeforeExecute;
    property OnAfterExecute: TNotifyEvent read FOnAfterExecute write
      FOnAfterExecute;
    property OnExecute: TNotifyEvent read FOnExecute write FOnExecute;
    property OnUpdateGUI: TNotifyEvent read FOnUpdateGUI write FOnUpdateGUI;
    property Count: Integer read FCount write FCount;
  end;

  TEiThreadDatabase = class(TComponent)
    FThread: TEiThread;
  private
    FOnExecute: TNotifyEvent;
    FOnBeforeExec: TNotifyEvent;
    FOnBeforeClose: TNotifyEvent;
    FCount: Integer;
    FOnUpdateGUI: TNotifyEvent;
    FOnAfterOpen: TNotifyEvent;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ComponentBeforeClose(Sender: TObject);
    procedure ComponentAfterOpen(Sender: TObject);
    procedure ComponentBeforeExec(Sender: TObject);
    procedure ComponentExecute(Sender: TObject);
    procedure ComponentUpdateGUI(Sender: TObject);
    procedure RunThread;
  published
    property OnBeforeClose: TNotifyEvent read FOnBeforeClose write
      FOnBeforeClose;
    property OnAfterOpen: TNotifyEvent read FOnAfterOpen write FOnAfterOpen;
    property OnBeforeExec: TNotifyEvent read FOnBeforeExec write FOnBeforeExec;
    property OnUpdateGUI: TNotifyEvent read FOnUpdateGUI write FOnUpdateGUI;
    property OnExecute: TNotifyEvent read FOnExecute write FOnExecute;
    property Count: Integer read FCount write FCount;
  end;

implementation

uses SysUtils;

{ TEiThread }

procedure TEiThread.Execute;
var
  LocalCounter: Integer;
begin
  Synchronize(ThreadBeforeExecute);
  //for LocalCounter := 1 to FCount do
  //begin
    ThreadExecute;
    {
      Update GUI
    }
    Synchronize(ThreadUpdateGUI);
    //Sleep(100);
  //end;
  Synchronize(ThreadAfterExecute);
end;

procedure TEiThread.ThreadAfterExecute;
begin
  if Assigned(FOnAfterExecute) then
    FOnAfterExecute(Self);
end;

procedure TEiThread.ThreadAfterOpen;
begin
  if Assigned(FOnAfterOpen) then
    FOnAfterOpen(Self);
end;

procedure TEiThread.ThreadBeforeClose;
begin
  if Assigned(FOnBeforeClose) then
    FOnBeforeClose(Self);
end;

procedure TEiThread.ThreadBeforeExec;
begin
  if Assigned(FOnBeforeExec) then
    FOnBeforeExec(Self);
end;

procedure TEiThread.ThreadBeforeExecute;
begin
  if Assigned(FOnBeforeExecute) then
    FOnBeforeExecute(Self);
end;

procedure TEiThread.ThreadExecute;
begin
  if Assigned(FOnExecute) then
    FOnExecute(Self);
end;

procedure TEiThread.ThreadUpdateGUI;
begin
  if Assigned(FOnUpdateGUI) then
    FOnUpdateGUI(Self);
end;
{ TEiThreadControl }

procedure TEiThreadControl.ComponentAfterExecute(Sender: TObject);
begin
  if Assigned(FOnAfterExecute) then
    FOnAfterExecute(Sender);
end;

procedure TEiThreadControl.ComponentBeforeExecute(Sender: TObject);
begin
  if Assigned(FOnBeforeExecute) then
    FOnBeforeExecute(Sender);
end;

procedure TEiThreadControl.ComponentExecute(Sender: TObject);
begin
  if Assigned(FOnExecute) then
    FOnExecute(Sender);
end;

procedure TEiThreadControl.ComponentUpdateGUI(Sender: TObject);
begin
  if Assigned(FOnUpdateGUI) then
    FOnUpdateGUI(Sender);
end;

constructor TEiThreadControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEiThreadControl.Destroy;
begin
  FThread.OnBeforeExecute := nil;
  FThread.OnAfterExecute := nil;
  FThread.OnExecute := nil;
  FThread.OnUpdateGUI := nil;
  while FThread.Suspended do
    FThread.Suspended := True;
  FThread.Terminate;
  inherited Destroy;
end;

procedure TEiThreadControl.RunThread;
begin
  FThread := TEiThread.Create(True);
  FThread.OnBeforeExecute := ComponentBeforeExecute;
  FThread.OnAfterExecute := ComponentAfterExecute;
  FThread.OnExecute := ComponentExecute;
  FThread.OnUpdateGUI := ComponentUpdateGUI;
  FThread.Count := FCount;
  FThread.Suspended := False;
end;
{ TEiThreadDatabase }

procedure TEiThreadDatabase.ComponentAfterOpen(Sender: TObject);
begin
  if Assigned(FOnAfterOpen) then
    FOnAfterOpen(Sender)
end;

procedure TEiThreadDatabase.ComponentBeforeClose(Sender: TObject);
begin
  if Assigned(FOnBeforeClose) then
    FOnBeforeClose(Sender)
end;

procedure TEiThreadDatabase.ComponentBeforeExec(Sender: TObject);
begin
  if Assigned(FOnBeforeExec) then
    FOnBeforeExec(Sender)
end;

procedure TEiThreadDatabase.ComponentExecute(Sender: TObject);
begin
  if Assigned(FOnExecute) then
    FOnExecute(Sender)
end;

procedure TEiThreadDatabase.ComponentUpdateGUI(Sender: TObject);
begin
  if Assigned(FOnUpdateGUI) then
    FOnUpdateGUI(Sender);
end;

constructor TEiThreadDatabase.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TEiThreadDatabase.Destroy;
begin
  FThread.OnExecute := nil;
  FThread.OnUpdateGUI := nil;
  FThread.OnBeforeClose := nil;
  FThread.OnAfterOpen := nil;
  FThread.OnBeforeExec := nil;
  while FThread.Suspended do
    FThread.Suspended := True;
  inherited Destroy;
end;

procedure TEiThreadDatabase.RunThread;
begin
  FThread := TEiThread.Create(True);
  FThread.OnExecute := ComponentExecute;
  FThread.OnUpdateGUI := ComponentUpdateGUI;
  FThread.OnBeforeClose := ComponentBeforeClose;
  FThread.OnAfterOpen := ComponentAfterOpen;
  FThread.OnBeforeExec := ComponentBeforeExec;
  FThread.Count := FCount;
  FThread.Suspended := False;
end;

end.

