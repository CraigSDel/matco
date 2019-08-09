unit frmUser_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, User_u, UserService_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u;

type
    TfrmUser = class(TForm)
  private
    userService: TUserService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}
uses frmMatco_u,frmClient_u;


end.
