unit DspInterfaces;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
type
   IDSPItem=interface
   end;
   IDSPItemOwner = interface
     procedure RegisterDSPItem(Item:IDSPItem);
   end;

implementation

end.

