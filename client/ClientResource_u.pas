unit ClientResource_u;

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
        client.setId(tblClient['id']);
        client.setClientName(tblClient['client_name']);
        result := client;
      end
      else
        tblClient.Next;
    end;
  end;
end;

procedure TClientResource.save(client: TClient);
begin
  with DMMatco do
  begin
    tblClient.Open;
    tblClient.Insert;
    tblClient['client_name'] := client.getClientName;
    tblClient['contact_person'] := client.getContactPerson;
    tblClient['phone_number'] := client.getPhoneNumber;
    tblClient['email'] := client.getEmail;
    tblClient.Post;
    tblClient.Close;
  end;
end;

procedure TClientResource.update(client: TClient);
begin
  with DMMatco do
  begin
    tblClient.Open;
    tblClient.UpdateRecord;
    tblClient['id'] := client.getId;
    tblClient['client_name'] := client.getClientName;
    tblClient['contact_person'] := client.getContactPerson;
    tblClient['phone_number'] := client.getPhoneNumber;
    tblClient['email'] := client.getEmail;
    tblClient.Post;
    tblClient.Close;
  end;

end;

end.
