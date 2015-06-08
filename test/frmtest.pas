unit frmtest;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  PairSplitter, ExtCtrls, DASIOHost,DAVDComplex,DAVDCommon;

type

  { TForm1 }

  TForm1 = class(TForm)
    btSelect: TButton;
    btControll: TButton;
    btPlay: TButton;
    lbFreq: TLabel;
    lbVol: TLabel;
    lbDriver: TListBox;
    lsChannel: TListBox;
    Panel1: TPanel;
    SBVol: TScrollBar;
    ScrollBar1: TScrollBar;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    procedure btPlayClick(Sender: TObject);
    procedure btSelectClick(Sender: TObject);
    procedure btControllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbDriverSelectionChange(Sender: TObject; User: boolean);
    procedure lsChannelSelectionChange(Sender: TObject; User: boolean);
    procedure Panel1Click(Sender: TObject);
  private
    { private declarations }
    fAngle, fPosition   : TComplexDouble;
    asio:TASIOHost;
    fPan, fFreq, fVol   : Double;
    fChannelOffset      : Byte;
    procedure ASIOHostBufferSwitch32(Sender: TObject; const InBuffer, OutBuffer: TAVDArrayOfSingleDynArray);
    procedure AsioHostBufferSwitch64(Sender: TObject; const InBuffer, OutBuffer: TAVDArrayOfDoubleDynArray);
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
 math;
{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  drvNames: TStrings;
begin
   Asio:= TASIOHost.Create(self);
   if asio.DriverList.count = 0 then
   begin
     ShowMessage('Asio drivers not Found!');
     Application.Terminate;
   end;
   drvNames := asio.DriverList;
   lbDriver.Items := drvNames;
   fPosition.Re   :=    0;
   fPosition.Im   :=   -1;
   fFreq          := 1000;
   fPan           :=    0.5;
   fVol           :=    1;
   fChannelOffset :=    0;
   ASIO.DriverIndex:=0;
   GetSinCos(2 * Pi * fFreq / ASIO.SampleRate, fAngle.Im, fAngle.Re);
   lbDriver.Itemindex := 0;
   asio.OnBufferSwitch32 := @ASIOHostBufferSwitch32;
end;

procedure TForm1.lbDriverSelectionChange(Sender: TObject; User: boolean);
var
  i: integer;
begin
  ASIO.DriverIndex := lbDriver.ItemIndex;
  lsChannel.Clear;
  for i := 0 to (Asio.OutputChannelCount div 2) - 1 do
  begin
      lsChannel.AddItem(ASio.OutputChannelInfos[i*2].Name + '/' + ASio.OutputChannelInfos[i*2 + 1].Name,nil );
  end;
  if  Asio.OutputChannelCount > 0 then
  begin
    lsChannel.ItemIndex := 0;
  end;
end;

procedure TForm1.lsChannelSelectionChange(Sender: TObject; User: boolean);
begin
  fChannelOffset := lsChannel.ItemIndex*2;
end;

procedure TForm1.btSelectClick(Sender: TObject);
begin
   ASIO.Active:=not ASIO.Active;
end;

procedure TForm1.btPlayClick(Sender: TObject);
begin

end;

procedure TForm1.btControllClick(Sender: TObject);
begin
   ASIO.ControlPanel;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.ASIOHostBufferSwitch32(Sender: TObject; const InBuffer,
  OutBuffer: TAVDArrayOfSingleDynArray);
var
    i, j : integer;
    d    : Double;
begin
    for i := 0 to  ASIO.BufferSize - 1 do
    begin
      d := fPosition.Re * fAngle.Re - fPosition.Im * fAngle.Im;
      fPosition.Im := fPosition.Im * fAngle.Re + fPosition.Re * fAngle.Im;
      fPosition.Re := d; d := d * fVol;
       for j := 0 to ASIO.OutputChannelCount - 1 do
           OutBuffer[j, i] := d;
    end;
end;

procedure TForm1.AsioHostBufferSwitch64(Sender: TObject; const InBuffer,
  OutBuffer: TAVDArrayOfDoubleDynArray);
var
    i, j : integer;
    d    : Double;
begin
    for i := 0 to  ASIO.BufferSize - 1 do
    begin
      d := fPosition.Re * fAngle.Re - fPosition.Im * fAngle.Im;
      fPosition.Im := fPosition.Im * fAngle.Re + fPosition.Re * fAngle.Im;
      fPosition.Re := d; d := d * fVol;
       for j := 0 to ASIO.OutputChannelCount - 1 do
           OutBuffer[j, i] := d;
    end;
end;

end.

