unit user_u;

    //Interface is the defenition of the function and variables
    //Header files in c++ in the document file.

    //Getter a non void method  called a function in delphi
    //in java it is a non void method.
    //
    //Setter a void method and is called a procedure in delphi
    //in java that is a void method

    //uses are like import statements in java
    // type describes the unit - variables and methods

    // Customer = class(Person)  class(Person) is inheritance
    // Role = class             is defining the Role as a class without a semi colon
interface

type
  TUser = class
  private
      id:integer;
      description:string;
    { Private declarations }
  public
    function getId():integer;
    procedure setId(pid:integer);
    function getFullname():string;
    procedure setFullname(pFullname:string);
    { Public declarations }
  end;

implementation

{ Role }

function TUser.getFullname: string;
begin
  result := description;
end;

function TUser.getId: integer;
begin
  result := id;
end;

procedure TUser.setFullname(pFullname: string);
begin
  description := pFullname;
end;

procedure TUser.setId(pid:integer);
begin
  id := pid;
end;

end.
