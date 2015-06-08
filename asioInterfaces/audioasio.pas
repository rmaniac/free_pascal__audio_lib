{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit audioasio;

interface

uses
  ASIO, BeRoASIO, DASIOGenerator, DASIOHost, DASIORegister, ASIOChannelStrip, 
  ASIOMixer, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('DASIOHost', @DASIOHost.Register);
end;

initialization
  RegisterPackage('audioasio', @Register);
end.
