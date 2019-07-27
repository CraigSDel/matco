unit UserResource_u;

interface

uses
  DMMatco_u, Client_u;

type
  TClientResource = class
  private
    { Private declarations }
  public
    { Public declarations }
    procedure save(client: TClient);
    procedure update(client: TClient);
    function findById(id: integer): TClient;
  end;

implementation

function TClientResource.findById(id: integer): TClient;
var
  client: TClient;
begin
  client := TClient.create;
  with DMMatco do
  begin
    tblClient.Open;
    tblClient.First;
    while not tblClient.Eof do
    begin
      if tblClient['id'] = id then
      begin
        client.setId(tblUser['id']);
        client.setFullname(tblUser['full_name']);
        result := client;
      end
      else
        tblClient.Next;
    end;
  end;
end;

procedure TClientResource.save(user: TClient);
begin
  with DMMatco do
  begin
    tblClient.Open;
    tblClient.Insert;
    tblClient['full_name'] := user.getFullname;
    tblClient.Post;
    tblClient.Close;
  end;
end;

procedure TClientResource.update(user: TClient);
begin
  with DMMatco do
  begin
    tblClient.Open;
    tblClient.UpdateRecord;
    tblClient['id'] := user.getId;
    tblClient['full_name'] := user.getFullname;
    tblClient.Post;
    tblClient.Close;
  end;

end;

end.
