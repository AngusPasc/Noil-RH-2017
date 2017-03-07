unit inteligent_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 5081 $
// File generated on 06/03/2017 08:15:52 p. m. from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\SourceTree 2017\Noil-RH-2017\inteligent.tlb (1)
// LIBID: {82BE48F6-E792-4949-8A26-E42F4F386CC0}
// LCID: 0
// Helpfile: 
// HelpString: inteligent Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  inteligentMajorVersion = 1;
  inteligentMinorVersion = 0;

  LIBID_inteligent: TGUID = '{82BE48F6-E792-4949-8A26-E42F4F386CC0}';

  IID_Interface1: TGUID = '{223A3C01-E384-47CA-8073-FC13BA8CF4FC}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Interface1 = interface;
  Interface1Disp = dispinterface;

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//

  Alias1 = Integer; 

  Union1 = record
  end;


// *********************************************************************//
// Interface: Interface1
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {223A3C01-E384-47CA-8073-FC13BA8CF4FC}
// *********************************************************************//
  Interface1 = interface(IDispatch)
    ['{223A3C01-E384-47CA-8073-FC13BA8CF4FC}']
  end;

// *********************************************************************//
// DispIntf:  Interface1Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {223A3C01-E384-47CA-8073-FC13BA8CF4FC}
// *********************************************************************//
  Interface1Disp = dispinterface
    ['{223A3C01-E384-47CA-8073-FC13BA8CF4FC}']
  end;

implementation

uses ComObj;

end.
