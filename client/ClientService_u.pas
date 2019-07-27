unit ClientService_u;

interface

uses
  Client_u, ClientResource_u;

type
  TClientService = class
  private
    { Private declarations }
    clientResource: TClientResource;
  public
    { Public declarations }
    constructor create;
    procedure save(pClient: TClient);
    function findById(pId: integer): TClient;
  end;

implementation

constructor TClientService.create;
begin
  clientResource := TClientResource.create;
end;

function TClientService.findById(pId: integer): TClient;
begin
  result := clientResource.findById(pId);
end;

procedure TClientService.save(pClient: TClient);
begin
  clientResource.save(pClient);
end;

end.
