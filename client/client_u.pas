unit Client_u;
//Craig Stroberg
//70854
//The client object is a representation of what is needed for a client
interface

uses
  SysUtils;

type
  TClient = class
  private
    id: integer;
    clientName: string;
    contactPerson: string;
    phoneNumber: string;
    email: string;
    { Private declarations }
  public
    // ID
    function getId(): integer;
    procedure setId(pId: integer);
    // Client Name
    function getClientName(): string;
    procedure setClientName(pClientName: string);
    // Contact Person
    function getContactPerson(): string;
    procedure setContactPerson(pContactPerson: string);
    // Phone number
    function getPhoneNumber(): string;
    procedure setPhoneNumber(pPhoneNumber: string);
    // Client Name
    function getEmail(): string;
    procedure setEmail(pEmail: string);
    { Public declarations }
  end;

implementation

// ID
function TClient.getId: integer;
begin
  result := id;
end;

function TClient.getPhoneNumber: string;
begin
  result := phoneNumber;
end;

procedure TClient.setId(pId: integer);
begin
  id := pId;
end;

procedure TClient.setPhoneNumber(pPhoneNumber: string);
begin
   phoneNumber := pPhoneNumber;
end;

function TClient.getClientName: string;
begin
   result := clientName;
end;

function TClient.getContactPerson: string;
begin
   result :=  contactPerson;
end;

function TClient.getEmail: string;
begin
    result := email;
end;

procedure TClient.setClientName(pClientName: string);
begin
  clientName := pClientName;
end;

procedure TClient.setContactPerson(pContactPerson: string);
begin
  contactPerson := pContactPerson;
end;

procedure TClient.setEmail(pEmail: string);
begin
  email := pEmail;
end;

end.
