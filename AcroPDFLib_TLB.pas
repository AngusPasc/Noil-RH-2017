unit AcroPDFLib_TLB;

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
// File generated on 19/09/2013 04:02:52 p. m. from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\Common Files\Adobe\Acrobat\ActiveX\AcroPDF.dll (1)
// LIBID: {05BFD3F1-6319-4F30-B752-C7A22889BCC4}
// LCID: 0
// Helpfile: 
// HelpString: Adobe Acrobat Browser Control Type Library 1.0
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Hint: Parameter 'On' of IAcroAXDocShim.setShowToolbar changed to 'On_'
//   Hint: Parameter 'to' of IAcroAXDocShim.printPages changed to 'to_'
//   Hint: Parameter 'to' of IAcroAXDocShim.printPagesFit changed to 'to_'
//   Hint: Parameter 'On' of IAcroAXDocShim.setShowScrollbars changed to 'On_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AcroPDFLibMajorVersion = 1;
  AcroPDFLibMinorVersion = 0;

  LIBID_AcroPDFLib: TGUID = '{05BFD3F1-6319-4F30-B752-C7A22889BCC4}';

  DIID__IAcroAXDocShimEvents: TGUID = '{E790E1D1-9DE8-4853-8AC6-933D4FD9C927}';
  IID_IAcroAXDocShim: TGUID = '{3B813CE7-7C10-4F84-AD06-9DF76D97A9AA}';
  CLASS_AcroPDF: TGUID = '{CA8A9780-280D-11CF-A24D-444553540000}';
  IID_ISPOpenDocuments: TGUID = '{7EA23D88-569E-4EFD-9851-A1528A7745F9}';
  CLASS_AdobeSPOpenDocuments: TGUID = '{24DA047B-40C0-4018-841B-6B7409F730FC}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _IAcroAXDocShimEvents = dispinterface;
  IAcroAXDocShim = interface;
  IAcroAXDocShimDisp = dispinterface;
  ISPOpenDocuments = interface;
  ISPOpenDocumentsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  AcroPDF = IAcroAXDocShim;
  AdobeSPOpenDocuments = ISPOpenDocuments;


// *********************************************************************//
// DispIntf:  _IAcroAXDocShimEvents
// Flags:     (4096) Dispatchable
// GUID:      {E790E1D1-9DE8-4853-8AC6-933D4FD9C927}
// *********************************************************************//
  _IAcroAXDocShimEvents = dispinterface
    ['{E790E1D1-9DE8-4853-8AC6-933D4FD9C927}']
    procedure OnError; dispid 1;
    procedure OnMessage; dispid 2;
  end;

// *********************************************************************//
// Interface: IAcroAXDocShim
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3B813CE7-7C10-4F84-AD06-9DF76D97A9AA}
// *********************************************************************//
  IAcroAXDocShim = interface(IDispatch)
    ['{3B813CE7-7C10-4F84-AD06-9DF76D97A9AA}']
    function Get_src: WideString; safecall;
    procedure Set_src(const pVal: WideString); safecall;
    function LoadFile(const fileName: WideString): WordBool; safecall;
    procedure setShowToolbar(On_: WordBool); safecall;
    procedure gotoFirstPage; safecall;
    procedure gotoLastPage; safecall;
    procedure gotoNextPage; safecall;
    procedure gotoPreviousPage; safecall;
    procedure setCurrentPage(n: Integer); safecall;
    procedure goForwardStack; safecall;
    procedure goBackwardStack; safecall;
    procedure setPageMode(const pageMode: WideString); safecall;
    procedure setLayoutMode(const layoutMode: WideString); safecall;
    procedure setNamedDest(const namedDest: WideString); safecall;
    procedure Print; safecall;
    procedure printWithDialog; safecall;
    procedure setZoom(percent: Single); safecall;
    procedure setZoomScroll(percent: Single; left: Single; top: Single); safecall;
    procedure setView(const viewMode: WideString); safecall;
    procedure setViewScroll(const viewMode: WideString; offset: Single); safecall;
    procedure setViewRect(left: Single; top: Single; width: Single; height: Single); safecall;
    procedure printPages(from: Integer; to_: Integer); safecall;
    procedure printPagesFit(from: Integer; to_: Integer; shrinkToFit: WordBool); safecall;
    procedure printAll; safecall;
    procedure printAllFit(shrinkToFit: WordBool); safecall;
    procedure setShowScrollbars(On_: WordBool); safecall;
    function GetVersions: OleVariant; safecall;
    procedure setCurrentHightlight(a: Integer; b: Integer; c: Integer; d: Integer); safecall;
    procedure setCurrentHighlight(a: Integer; b: Integer; c: Integer; d: Integer); safecall;
    procedure postMessage(strArray: OleVariant); safecall;
    function Get_messageHandler: OleVariant; safecall;
    procedure Set_messageHandler(pVarOut: OleVariant); safecall;
    procedure execCommand(strArray: OleVariant); safecall;
    property src: WideString read Get_src write Set_src;
    property messageHandler: OleVariant read Get_messageHandler write Set_messageHandler;
  end;

// *********************************************************************//
// DispIntf:  IAcroAXDocShimDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3B813CE7-7C10-4F84-AD06-9DF76D97A9AA}
// *********************************************************************//
  IAcroAXDocShimDisp = dispinterface
    ['{3B813CE7-7C10-4F84-AD06-9DF76D97A9AA}']
    property src: WideString dispid 1;
    function LoadFile(const fileName: WideString): WordBool; dispid 2;
    procedure setShowToolbar(On_: WordBool); dispid 3;
    procedure gotoFirstPage; dispid 4;
    procedure gotoLastPage; dispid 5;
    procedure gotoNextPage; dispid 6;
    procedure gotoPreviousPage; dispid 7;
    procedure setCurrentPage(n: Integer); dispid 8;
    procedure goForwardStack; dispid 9;
    procedure goBackwardStack; dispid 10;
    procedure setPageMode(const pageMode: WideString); dispid 11;
    procedure setLayoutMode(const layoutMode: WideString); dispid 12;
    procedure setNamedDest(const namedDest: WideString); dispid 13;
    procedure Print; dispid 14;
    procedure printWithDialog; dispid 15;
    procedure setZoom(percent: Single); dispid 16;
    procedure setZoomScroll(percent: Single; left: Single; top: Single); dispid 17;
    procedure setView(const viewMode: WideString); dispid 18;
    procedure setViewScroll(const viewMode: WideString; offset: Single); dispid 19;
    procedure setViewRect(left: Single; top: Single; width: Single; height: Single); dispid 20;
    procedure printPages(from: Integer; to_: Integer); dispid 21;
    procedure printPagesFit(from: Integer; to_: Integer; shrinkToFit: WordBool); dispid 22;
    procedure printAll; dispid 23;
    procedure printAllFit(shrinkToFit: WordBool); dispid 24;
    procedure setShowScrollbars(On_: WordBool); dispid 25;
    function GetVersions: OleVariant; dispid 26;
    procedure setCurrentHightlight(a: Integer; b: Integer; c: Integer; d: Integer); dispid 27;
    procedure setCurrentHighlight(a: Integer; b: Integer; c: Integer; d: Integer); dispid 28;
    procedure postMessage(strArray: OleVariant); dispid 29;
    property messageHandler: OleVariant dispid 30;
    procedure execCommand(strArray: OleVariant); dispid 31;
  end;

// *********************************************************************//
// Interface: ISPOpenDocuments
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7EA23D88-569E-4EFD-9851-A1528A7745F9}
// *********************************************************************//
  ISPOpenDocuments = interface(IDispatch)
    ['{7EA23D88-569E-4EFD-9851-A1528A7745F9}']
    function ViewDocument(const bstrDocumentLocation: WideString; varProgID: OleVariant): WordBool; safecall;
    function ViewDocument2(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           varProgID: OleVariant): WordBool; safecall;
    function ViewDocument3(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           OpenType: SYSINT; varProgID: OleVariant): WordBool; safecall;
    function CheckinDocument(const bstrDocumentLocation: WideString; CheckinType: SYSINT; 
                             const CheckinComment: WideString; bKeepCheckout: WordBool): WordBool; safecall;
    function CheckoutDocumentPrompt(const bstrDocumentLocationRaw: WideString; 
                                    fEditAfterCheckout: WordBool; varProgID: OleVariant): WordBool; safecall;
    function CreateNewDocument(const bstrTemplateLocation: WideString; 
                               const bstrDefaultSaveLocation: WideString): WordBool; safecall;
    function CreateNewDocument2(const pDisp: IDispatch; const bstrTemplateLocation: WideString; 
                                const bstrDefaultSaveLocation: WideString): WordBool; safecall;
    function DiscardLocalCheckout(const bstrDocumentLocationRaw: WideString): WordBool; safecall;
    function EditDocument(const bstrDocumentLocation: WideString; varProgID: OleVariant): WordBool; safecall;
    function EditDocument2(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           varProgID: OleVariant): WordBool; safecall;
    function EditDocument3(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           fUseLocalCopy: WordBool; varProgID: OleVariant): WordBool; safecall;
    procedure NewBlogPost(const bstrProviderId: WideString; const bstrBlogUrl: WideString; 
                          const bstrBlogName: WideString); safecall;
    function PromptedOnLastOpen: WordBool; safecall;
    procedure ViewInExcel(const SiteUrl: WideString; const fileName: WideString; 
                          const SessionId: WideString; const Cmd: WideString; 
                          const Sheet: WideString; Row: SYSINT; Column: SYSINT; 
                          varProgID: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISPOpenDocumentsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7EA23D88-569E-4EFD-9851-A1528A7745F9}
// *********************************************************************//
  ISPOpenDocumentsDisp = dispinterface
    ['{7EA23D88-569E-4EFD-9851-A1528A7745F9}']
    function ViewDocument(const bstrDocumentLocation: WideString; varProgID: OleVariant): WordBool; dispid 1;
    function ViewDocument2(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           varProgID: OleVariant): WordBool; dispid 2;
    function ViewDocument3(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           OpenType: SYSINT; varProgID: OleVariant): WordBool; dispid 3;
    function CheckinDocument(const bstrDocumentLocation: WideString; CheckinType: SYSINT; 
                             const CheckinComment: WideString; bKeepCheckout: WordBool): WordBool; dispid 4;
    function CheckoutDocumentPrompt(const bstrDocumentLocationRaw: WideString; 
                                    fEditAfterCheckout: WordBool; varProgID: OleVariant): WordBool; dispid 5;
    function CreateNewDocument(const bstrTemplateLocation: WideString; 
                               const bstrDefaultSaveLocation: WideString): WordBool; dispid 6;
    function CreateNewDocument2(const pDisp: IDispatch; const bstrTemplateLocation: WideString; 
                                const bstrDefaultSaveLocation: WideString): WordBool; dispid 7;
    function DiscardLocalCheckout(const bstrDocumentLocationRaw: WideString): WordBool; dispid 8;
    function EditDocument(const bstrDocumentLocation: WideString; varProgID: OleVariant): WordBool; dispid 9;
    function EditDocument2(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           varProgID: OleVariant): WordBool; dispid 10;
    function EditDocument3(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           fUseLocalCopy: WordBool; varProgID: OleVariant): WordBool; dispid 11;
    procedure NewBlogPost(const bstrProviderId: WideString; const bstrBlogUrl: WideString; 
                          const bstrBlogName: WideString); dispid 12;
    function PromptedOnLastOpen: WordBool; dispid 13;
    procedure ViewInExcel(const SiteUrl: WideString; const fileName: WideString; 
                          const SessionId: WideString; const Cmd: WideString; 
                          const Sheet: WideString; Row: SYSINT; Column: SYSINT; 
                          varProgID: OleVariant); dispid 14;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TAcroPDF
// Help String      : Adobe Acrobat Browser Control
// Default Interface: IAcroAXDocShim
// Def. Intf. DISP? : No
// Event   Interface: _IAcroAXDocShimEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TAcroPDF = class(TOleControl)
  private
    FOnError: TNotifyEvent;
    FOnMessage: TNotifyEvent;
    FIntf: IAcroAXDocShim;
    function  GetControlInterface: IAcroAXDocShim;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_messageHandler: OleVariant;
    procedure Set_messageHandler(pVarOut: OleVariant);
  public
    function LoadFile(const fileName: WideString): WordBool;
    procedure setShowToolbar(On_: WordBool);
    procedure gotoFirstPage;
    procedure gotoLastPage;
    procedure gotoNextPage;
    procedure gotoPreviousPage;
    procedure setCurrentPage(n: Integer);
    procedure goForwardStack;
    procedure goBackwardStack;
    procedure setPageMode(const pageMode: WideString);
    procedure setLayoutMode(const layoutMode: WideString);
    procedure setNamedDest(const namedDest: WideString);
    procedure Print;
    procedure printWithDialog;
    procedure setZoom(percent: Single);
    procedure setZoomScroll(percent: Single; left: Single; top: Single);
    procedure setView(const viewMode: WideString);
    procedure setViewScroll(const viewMode: WideString; offset: Single);
    procedure setViewRect(left: Single; top: Single; width: Single; height: Single);
    procedure printPages(from: Integer; to_: Integer);
    procedure printPagesFit(from: Integer; to_: Integer; shrinkToFit: WordBool);
    procedure printAll;
    procedure printAllFit(shrinkToFit: WordBool);
    procedure setShowScrollbars(On_: WordBool);
    function GetVersions: OleVariant;
    procedure setCurrentHightlight(a: Integer; b: Integer; c: Integer; d: Integer);
    procedure setCurrentHighlight(a: Integer; b: Integer; c: Integer; d: Integer);
    procedure postMessage(strArray: OleVariant);
    procedure execCommand(strArray: OleVariant);
    property  ControlInterface: IAcroAXDocShim read GetControlInterface;
    property  DefaultInterface: IAcroAXDocShim read GetControlInterface;
    property messageHandler: OleVariant index 30 read GetOleVariantProp write SetOleVariantProp;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property src: WideString index 1 read GetWideStringProp write SetWideStringProp stored False;
    property OnError: TNotifyEvent read FOnError write FOnError;
    property OnMessage: TNotifyEvent read FOnMessage write FOnMessage;
  end;

// *********************************************************************//
// The Class CoAdobeSPOpenDocuments provides a Create and CreateRemote method to          
// create instances of the default interface ISPOpenDocuments exposed by              
// the CoClass AdobeSPOpenDocuments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAdobeSPOpenDocuments = class
    class function Create: ISPOpenDocuments;
    class function CreateRemote(const MachineName: string): ISPOpenDocuments;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAdobeSPOpenDocuments
// Help String      : Adobe Acrobat Sharepoint OpenDocuments Control
// Default Interface: ISPOpenDocuments
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAdobeSPOpenDocumentsProperties= class;
{$ENDIF}
  TAdobeSPOpenDocuments = class(TOleServer)
  private
    FIntf: ISPOpenDocuments;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TAdobeSPOpenDocumentsProperties;
    function GetServerProperties: TAdobeSPOpenDocumentsProperties;
{$ENDIF}
    function GetDefaultInterface: ISPOpenDocuments;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISPOpenDocuments);
    procedure Disconnect; override;
    function ViewDocument(const bstrDocumentLocation: WideString): WordBool; overload;
    function ViewDocument(const bstrDocumentLocation: WideString; varProgID: OleVariant): WordBool; overload;
    function ViewDocument2(const pDisp: IDispatch; const bstrDocumentLocation: WideString): WordBool; overload;
    function ViewDocument2(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           varProgID: OleVariant): WordBool; overload;
    function ViewDocument3(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           OpenType: SYSINT): WordBool; overload;
    function ViewDocument3(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           OpenType: SYSINT; varProgID: OleVariant): WordBool; overload;
    function CheckinDocument(const bstrDocumentLocation: WideString; CheckinType: SYSINT; 
                             const CheckinComment: WideString; bKeepCheckout: WordBool): WordBool;
    function CheckoutDocumentPrompt(const bstrDocumentLocationRaw: WideString; 
                                    fEditAfterCheckout: WordBool): WordBool; overload;
    function CheckoutDocumentPrompt(const bstrDocumentLocationRaw: WideString; 
                                    fEditAfterCheckout: WordBool; varProgID: OleVariant): WordBool; overload;
    function CreateNewDocument(const bstrTemplateLocation: WideString; 
                               const bstrDefaultSaveLocation: WideString): WordBool;
    function CreateNewDocument2(const pDisp: IDispatch; const bstrTemplateLocation: WideString; 
                                const bstrDefaultSaveLocation: WideString): WordBool;
    function DiscardLocalCheckout(const bstrDocumentLocationRaw: WideString): WordBool;
    function EditDocument(const bstrDocumentLocation: WideString): WordBool; overload;
    function EditDocument(const bstrDocumentLocation: WideString; varProgID: OleVariant): WordBool; overload;
    function EditDocument2(const pDisp: IDispatch; const bstrDocumentLocation: WideString): WordBool; overload;
    function EditDocument2(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           varProgID: OleVariant): WordBool; overload;
    function EditDocument3(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           fUseLocalCopy: WordBool): WordBool; overload;
    function EditDocument3(const pDisp: IDispatch; const bstrDocumentLocation: WideString; 
                           fUseLocalCopy: WordBool; varProgID: OleVariant): WordBool; overload;
    procedure NewBlogPost(const bstrProviderId: WideString; const bstrBlogUrl: WideString; 
                          const bstrBlogName: WideString);
    function PromptedOnLastOpen: WordBool;
    procedure ViewInExcel(const SiteUrl: WideString; const fileName: WideString; 
                          const SessionId: WideString; const Cmd: WideString; 
                          const Sheet: WideString; Row: SYSINT; Column: SYSINT); overload;
    procedure ViewInExcel(const SiteUrl: WideString; const fileName: WideString; 
                          const SessionId: WideString; const Cmd: WideString; 
                          const Sheet: WideString; Row: SYSINT; Column: SYSINT; 
                          varProgID: OleVariant); overload;
    property DefaultInterface: ISPOpenDocuments read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAdobeSPOpenDocumentsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAdobeSPOpenDocuments
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAdobeSPOpenDocumentsProperties = class(TPersistent)
  private
    FServer:    TAdobeSPOpenDocuments;
    function    GetDefaultInterface: ISPOpenDocuments;
    constructor Create(AServer: TAdobeSPOpenDocuments);
  protected
  public
    property DefaultInterface: ISPOpenDocuments read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TAcroPDF.InitControlData;
const
  CEventDispIDs: array [0..1] of DWORD = (
    $00000001, $00000002);
  CControlData: TControlData2 = (
    ClassID: '{CA8A9780-280D-11CF-A24D-444553540000}';
    EventIID: '{E790E1D1-9DE8-4853-8AC6-933D4FD9C927}';
    EventCount: 2;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnError) - Cardinal(Self);
end;

procedure TAcroPDF.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IAcroAXDocShim;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TAcroPDF.GetControlInterface: IAcroAXDocShim;
begin
  CreateControl;
  Result := FIntf;
end;

function TAcroPDF.Get_messageHandler: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.messageHandler;
end;

procedure TAcroPDF.Set_messageHandler(pVarOut: OleVariant);
begin
  DefaultInterface.Set_messageHandler(pVarOut);
end;

function TAcroPDF.LoadFile(const fileName: WideString): WordBool;
begin
  Result := DefaultInterface.LoadFile(fileName);
end;

procedure TAcroPDF.setShowToolbar(On_: WordBool);
begin
  DefaultInterface.setShowToolbar(On_);
end;

procedure TAcroPDF.gotoFirstPage;
begin
  DefaultInterface.gotoFirstPage;
end;

procedure TAcroPDF.gotoLastPage;
begin
  DefaultInterface.gotoLastPage;
end;

procedure TAcroPDF.gotoNextPage;
begin
  DefaultInterface.gotoNextPage;
end;

procedure TAcroPDF.gotoPreviousPage;
begin
  DefaultInterface.gotoPreviousPage;
end;

procedure TAcroPDF.setCurrentPage(n: Integer);
begin
  DefaultInterface.setCurrentPage(n);
end;

procedure TAcroPDF.goForwardStack;
begin
  DefaultInterface.goForwardStack;
end;

procedure TAcroPDF.goBackwardStack;
begin
  DefaultInterface.goBackwardStack;
end;

procedure TAcroPDF.setPageMode(const pageMode: WideString);
begin
  DefaultInterface.setPageMode(pageMode);
end;

procedure TAcroPDF.setLayoutMode(const layoutMode: WideString);
begin
  DefaultInterface.setLayoutMode(layoutMode);
end;

procedure TAcroPDF.setNamedDest(const namedDest: WideString);
begin
  DefaultInterface.setNamedDest(namedDest);
end;

procedure TAcroPDF.Print;
begin
  DefaultInterface.Print;
end;

procedure TAcroPDF.printWithDialog;
begin
  DefaultInterface.printWithDialog;
end;

procedure TAcroPDF.setZoom(percent: Single);
begin
  DefaultInterface.setZoom(percent);
end;

procedure TAcroPDF.setZoomScroll(percent: Single; left: Single; top: Single);
begin
  DefaultInterface.setZoomScroll(percent, left, top);
end;

procedure TAcroPDF.setView(const viewMode: WideString);
begin
  DefaultInterface.setView(viewMode);
end;

procedure TAcroPDF.setViewScroll(const viewMode: WideString; offset: Single);
begin
  DefaultInterface.setViewScroll(viewMode, offset);
end;

procedure TAcroPDF.setViewRect(left: Single; top: Single; width: Single; height: Single);
begin
  DefaultInterface.setViewRect(left, top, width, height);
end;

procedure TAcroPDF.printPages(from: Integer; to_: Integer);
begin
  DefaultInterface.printPages(from, to_);
end;

procedure TAcroPDF.printPagesFit(from: Integer; to_: Integer; shrinkToFit: WordBool);
begin
  DefaultInterface.printPagesFit(from, to_, shrinkToFit);
end;

procedure TAcroPDF.printAll;
begin
  DefaultInterface.printAll;
end;

procedure TAcroPDF.printAllFit(shrinkToFit: WordBool);
begin
  DefaultInterface.printAllFit(shrinkToFit);
end;

procedure TAcroPDF.setShowScrollbars(On_: WordBool);
begin
  DefaultInterface.setShowScrollbars(On_);
end;

function TAcroPDF.GetVersions: OleVariant;
begin
  Result := DefaultInterface.GetVersions;
end;

procedure TAcroPDF.setCurrentHightlight(a: Integer; b: Integer; c: Integer; d: Integer);
begin
  DefaultInterface.setCurrentHightlight(a, b, c, d);
end;

procedure TAcroPDF.setCurrentHighlight(a: Integer; b: Integer; c: Integer; d: Integer);
begin
  DefaultInterface.setCurrentHighlight(a, b, c, d);
end;

procedure TAcroPDF.postMessage(strArray: OleVariant);
begin
  DefaultInterface.postMessage(strArray);
end;

procedure TAcroPDF.execCommand(strArray: OleVariant);
begin
  DefaultInterface.execCommand(strArray);
end;

class function CoAdobeSPOpenDocuments.Create: ISPOpenDocuments;
begin
  Result := CreateComObject(CLASS_AdobeSPOpenDocuments) as ISPOpenDocuments;
end;

class function CoAdobeSPOpenDocuments.CreateRemote(const MachineName: string): ISPOpenDocuments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AdobeSPOpenDocuments) as ISPOpenDocuments;
end;

procedure TAdobeSPOpenDocuments.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{24DA047B-40C0-4018-841B-6B7409F730FC}';
    IntfIID:   '{7EA23D88-569E-4EFD-9851-A1528A7745F9}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAdobeSPOpenDocuments.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISPOpenDocuments;
  end;
end;

procedure TAdobeSPOpenDocuments.ConnectTo(svrIntf: ISPOpenDocuments);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAdobeSPOpenDocuments.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAdobeSPOpenDocuments.GetDefaultInterface: ISPOpenDocuments;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAdobeSPOpenDocuments.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAdobeSPOpenDocumentsProperties.Create(Self);
{$ENDIF}
end;

destructor TAdobeSPOpenDocuments.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAdobeSPOpenDocuments.GetServerProperties: TAdobeSPOpenDocumentsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAdobeSPOpenDocuments.ViewDocument(const bstrDocumentLocation: WideString): WordBool;
begin
  Result := DefaultInterface.ViewDocument(bstrDocumentLocation, EmptyParam);
end;

function TAdobeSPOpenDocuments.ViewDocument(const bstrDocumentLocation: WideString; 
                                            varProgID: OleVariant): WordBool;
begin
  Result := DefaultInterface.ViewDocument(bstrDocumentLocation, varProgID);
end;

function TAdobeSPOpenDocuments.ViewDocument2(const pDisp: IDispatch; 
                                             const bstrDocumentLocation: WideString): WordBool;
begin
  Result := DefaultInterface.ViewDocument2(pDisp, bstrDocumentLocation, EmptyParam);
end;

function TAdobeSPOpenDocuments.ViewDocument2(const pDisp: IDispatch; 
                                             const bstrDocumentLocation: WideString; 
                                             varProgID: OleVariant): WordBool;
begin
  Result := DefaultInterface.ViewDocument2(pDisp, bstrDocumentLocation, varProgID);
end;

function TAdobeSPOpenDocuments.ViewDocument3(const pDisp: IDispatch; 
                                             const bstrDocumentLocation: WideString; 
                                             OpenType: SYSINT): WordBool;
begin
  Result := DefaultInterface.ViewDocument3(pDisp, bstrDocumentLocation, OpenType, EmptyParam);
end;

function TAdobeSPOpenDocuments.ViewDocument3(const pDisp: IDispatch; 
                                             const bstrDocumentLocation: WideString; 
                                             OpenType: SYSINT; varProgID: OleVariant): WordBool;
begin
  Result := DefaultInterface.ViewDocument3(pDisp, bstrDocumentLocation, OpenType, varProgID);
end;

function TAdobeSPOpenDocuments.CheckinDocument(const bstrDocumentLocation: WideString; 
                                               CheckinType: SYSINT; 
                                               const CheckinComment: WideString; 
                                               bKeepCheckout: WordBool): WordBool;
begin
  Result := DefaultInterface.CheckinDocument(bstrDocumentLocation, CheckinType, CheckinComment, 
                                             bKeepCheckout);
end;

function TAdobeSPOpenDocuments.CheckoutDocumentPrompt(const bstrDocumentLocationRaw: WideString; 
                                                      fEditAfterCheckout: WordBool): WordBool;
begin
  Result := DefaultInterface.CheckoutDocumentPrompt(bstrDocumentLocationRaw, fEditAfterCheckout, 
                                                    EmptyParam);
end;

function TAdobeSPOpenDocuments.CheckoutDocumentPrompt(const bstrDocumentLocationRaw: WideString; 
                                                      fEditAfterCheckout: WordBool; 
                                                      varProgID: OleVariant): WordBool;
begin
  Result := DefaultInterface.CheckoutDocumentPrompt(bstrDocumentLocationRaw, fEditAfterCheckout, 
                                                    varProgID);
end;

function TAdobeSPOpenDocuments.CreateNewDocument(const bstrTemplateLocation: WideString; 
                                                 const bstrDefaultSaveLocation: WideString): WordBool;
begin
  Result := DefaultInterface.CreateNewDocument(bstrTemplateLocation, bstrDefaultSaveLocation);
end;

function TAdobeSPOpenDocuments.CreateNewDocument2(const pDisp: IDispatch; 
                                                  const bstrTemplateLocation: WideString; 
                                                  const bstrDefaultSaveLocation: WideString): WordBool;
begin
  Result := DefaultInterface.CreateNewDocument2(pDisp, bstrTemplateLocation, bstrDefaultSaveLocation);
end;

function TAdobeSPOpenDocuments.DiscardLocalCheckout(const bstrDocumentLocationRaw: WideString): WordBool;
begin
  Result := DefaultInterface.DiscardLocalCheckout(bstrDocumentLocationRaw);
end;

function TAdobeSPOpenDocuments.EditDocument(const bstrDocumentLocation: WideString): WordBool;
begin
  Result := DefaultInterface.EditDocument(bstrDocumentLocation, EmptyParam);
end;

function TAdobeSPOpenDocuments.EditDocument(const bstrDocumentLocation: WideString; 
                                            varProgID: OleVariant): WordBool;
begin
  Result := DefaultInterface.EditDocument(bstrDocumentLocation, varProgID);
end;

function TAdobeSPOpenDocuments.EditDocument2(const pDisp: IDispatch; 
                                             const bstrDocumentLocation: WideString): WordBool;
begin
  Result := DefaultInterface.EditDocument2(pDisp, bstrDocumentLocation, EmptyParam);
end;

function TAdobeSPOpenDocuments.EditDocument2(const pDisp: IDispatch; 
                                             const bstrDocumentLocation: WideString; 
                                             varProgID: OleVariant): WordBool;
begin
  Result := DefaultInterface.EditDocument2(pDisp, bstrDocumentLocation, varProgID);
end;

function TAdobeSPOpenDocuments.EditDocument3(const pDisp: IDispatch; 
                                             const bstrDocumentLocation: WideString; 
                                             fUseLocalCopy: WordBool): WordBool;
begin
  Result := DefaultInterface.EditDocument3(pDisp, bstrDocumentLocation, fUseLocalCopy, EmptyParam);
end;

function TAdobeSPOpenDocuments.EditDocument3(const pDisp: IDispatch; 
                                             const bstrDocumentLocation: WideString; 
                                             fUseLocalCopy: WordBool; varProgID: OleVariant): WordBool;
begin
  Result := DefaultInterface.EditDocument3(pDisp, bstrDocumentLocation, fUseLocalCopy, varProgID);
end;

procedure TAdobeSPOpenDocuments.NewBlogPost(const bstrProviderId: WideString; 
                                            const bstrBlogUrl: WideString; 
                                            const bstrBlogName: WideString);
begin
  DefaultInterface.NewBlogPost(bstrProviderId, bstrBlogUrl, bstrBlogName);
end;

function TAdobeSPOpenDocuments.PromptedOnLastOpen: WordBool;
begin
  Result := DefaultInterface.PromptedOnLastOpen;
end;

procedure TAdobeSPOpenDocuments.ViewInExcel(const SiteUrl: WideString; const fileName: WideString; 
                                            const SessionId: WideString; const Cmd: WideString; 
                                            const Sheet: WideString; Row: SYSINT; Column: SYSINT);
begin
  DefaultInterface.ViewInExcel(SiteUrl, fileName, SessionId, Cmd, Sheet, Row, Column, EmptyParam);
end;

procedure TAdobeSPOpenDocuments.ViewInExcel(const SiteUrl: WideString; const fileName: WideString; 
                                            const SessionId: WideString; const Cmd: WideString; 
                                            const Sheet: WideString; Row: SYSINT; Column: SYSINT; 
                                            varProgID: OleVariant);
begin
  DefaultInterface.ViewInExcel(SiteUrl, fileName, SessionId, Cmd, Sheet, Row, Column, varProgID);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAdobeSPOpenDocumentsProperties.Create(AServer: TAdobeSPOpenDocuments);
begin
  inherited Create;
  FServer := AServer;
end;

function TAdobeSPOpenDocumentsProperties.GetDefaultInterface: ISPOpenDocuments;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TAcroPDF]);
  RegisterComponents(dtlServerPage, [TAdobeSPOpenDocuments]);
end;

end.
