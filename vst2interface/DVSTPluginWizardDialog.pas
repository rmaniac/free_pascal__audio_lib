unit DVSTPluginWizardDialog;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  Windows,
{$ELSE}
  LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms,
  StdCtrls;

type
  TVSTPluginWizardGuiDialog = class(TForm)
    EdClassName: TEdit;
    LbEffectName: TLabel;
    BtCreate: TButton;
    GBFlags: TGroupBox;
    CBEditor: TCheckBox;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  VSTPluginWizardGuiDialog: TVSTPluginWizardGuiDialog;

implementation

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

end.
