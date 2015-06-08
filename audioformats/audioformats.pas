{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit audioformats;

interface

uses
  MIDI, MidiFile, WaveIOX, MsacmX, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('audioformats', @Register);
end.
