unit AboutForm;

{$IFDEF FPC}
{$MODE Delphi}
{$ENDIF}

interface

uses
  {$IFDEF FPC}LCLIntf,  LResources, Buttons, {$ELSE} Windows, {$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls;

type

  { TFmAbout }

  TFmAbout = class(TForm)
    BtOK: TButton;
    Label1: TLabel;
    LbTitle: TLabel;
    LbCopyright: TLabel;
    LbTrademarks: TLabel;
    LbReadManual: TLabel;
    procedure LbWebClick(Sender: TObject);
    procedure LbMailClick(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LbDonateClick(Sender: TObject);
  end;

var FmAbout: TFmAbout;

implementation

{$IFNDEF FPC}
{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}
{$ENDIF}

uses
{$IFnDEF FPC}
  ShellAPI,
{$ELSE}
{$ENDIF}
  MiniHostForm;

procedure TFmAbout.LbWebClick(Sender: TObject);
begin
{$IFNDEF FPC}
 ShellExecute(GetDesktopWindow(), 'open',
  PChar('http://www.tobybear.de'), nil, nil, SW_SHOWNORMAL);
{$ENDIF}
end;

procedure TFmAbout.LbMailClick(Sender: TObject);
begin
{$IFNDEF FPC}
 ShellExecute(GetDesktopWindow(), 'open',
  PChar('mailto:tobybear@web.de'), nil, nil, SW_SHOWNORMAL);
{$ENDIF}
end;

procedure TFmAbout.BtOKClick(Sender: TObject);
begin
 close;
end;

procedure TFmAbout.FormShow(Sender: TObject);
begin
 LbTitle.caption :=  appname + ' ' + appversion;
end;

procedure TFmAbout.LbDonateClick(Sender: TObject);
begin
 {$IFNDEF FPC}
 ShellExecute(GetDesktopWindow(), 'open',
  PChar('https://www.paypal.com/xclick/business=tobybear%40web.de&item_name=MiniHost'), nil, nil, SW_SHOWNORMAL);
 {$ENDIF}
end;

{$IFDEF FPC}
initialization
  {$i AboutForm.lrs}
{$ENDIF}

end.

