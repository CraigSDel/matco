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
    procedure save(user: TClient);
    function findById(id: integer): TClient;
  end;

implementation

constructor TClientService.create;
begin
  clientResource := TClientResource.create;
end;

function TClientService.findById(id: integer): TClient;
begin
  result := clientResource.findById(id);
end;

procedure TClientService.save(client: TClient);
begin
  clientResource.save(client);
end;

end.
