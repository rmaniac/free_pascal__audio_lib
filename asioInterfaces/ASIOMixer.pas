unit ASIOMixer;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{If this file makes troubles, delete the DEFINE ASIOMixer in DASIOHost}

interface

uses
{$IFnDEF FPC}
  Windows,
{$ELSE}
  LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ASIOChannelStrip, ExtCtrls;

type
  TFmASIOMixer = class(TForm)
    MixerPanel: TPanel;
  private
  public
    ChannelsStrips: array of TFrChannelStrip;
  end;

implementation

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

end.
