unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite,
  Data.DB,
  FireDAC.Comp.Client, System.Types, FMX.Types, System.IOUtils;

type
  TDM = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses main;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  filename: String;
begin
{$IF DEFINED(iOS) or DEFINED(ANDROID)}
  filename := TPath.Combine(TPath.GetHomePath, 'db.sqlite3');
  if FileExists(filename) then
  begin
    FDConnection.Params.Values['Database'] := filename;
    FDConnection.Connected := True;
  end;
{$ENDIF}
  Form1.FDTableNumbers.Active := True;
end;

end.
