unit util_u;

// Craig Stroberg
// 70854
// Some reuseable functions
interface

type
  TUtil = class
  private
    { Private declarations }
  public
    function isNumber(s: string): Boolean;
    function isValidEmail(email: string): Boolean;
    { Public declarations }
  end;

var
  util: TUtil;

implementation

{ TMatcoUtil }

function TUtil.isNumber(s: string): Boolean;
var
  i: Integer;
begin
  i := 1;
  while (i <= Length(s)) and
    (s[i] in ['0' .. '9', '.', 'A' .. 'F', 'a' .. 'f']) do
    inc(i);
  result := i > Length(s);
end;

function TUtil.isValidEmail(email: string): Boolean;
// http://www.howtodothings.com/computers/a1169-validating-email-addresses-in-delphi.html
// Returns True if the email address is valid
const
  // Valid characters in an "atom"
  atom_chars = [#33 .. #255] - ['(', ')', '<', '>', '@', ',', ';', ':', '\',
    '/', '"', '.', '[', ']', #127];
  // Valid characters in a "quoted-string"
  quoted_string_chars = [#0 .. #255] - ['"', #13, '\'];
  // Valid characters in a subdomain
  letters = ['A' .. 'Z', 'a' .. 'z'];
  letters_digits = ['0' .. '9', 'A' .. 'Z', 'a' .. 'z'];
  subdomain_chars = ['-', '0' .. '9', 'A' .. 'Z', 'a' .. 'z'];

type
  States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR, STATE_QUOTE,
    STATE_LOCAL_PERIOD, STATE_EXPECTING_SUBDOMAIN, STATE_SUBDOMAIN,
    STATE_HYPHEN);
var
  State: States;
  i, n, subdomains: Integer;
  c: char;
begin

  State := STATE_BEGIN;
  n := Length(email);
  i := 1;

  subdomains := 1;
  while (i <= n) do
  begin
    c := email[i];
    case State of
      STATE_BEGIN:
        if c in atom_chars then
          State := STATE_ATOM
        else if c = '"' then
          State := STATE_QTEXT
        else
          break;
      STATE_ATOM:
        if c = '@' then
          State := STATE_EXPECTING_SUBDOMAIN
        else if c = '.' then
          State := STATE_LOCAL_PERIOD
        else if not(c in atom_chars) then
          break;
      STATE_QTEXT:
        if c = '\' then
          State := STATE_QCHAR
        else if c = '"' then
          State := STATE_QUOTE
        else if not(c in quoted_string_chars) then
          break;
      STATE_QCHAR:
        State := STATE_QTEXT;
      STATE_QUOTE:
        if c = '@' then
          State := STATE_EXPECTING_SUBDOMAIN
        else if c = '.' then
          State := STATE_LOCAL_PERIOD
        else
          break;
      STATE_LOCAL_PERIOD:
        if c in atom_chars then
          State := STATE_ATOM
        else if c = '"' then
          State := STATE_QTEXT
        else
          break;
      STATE_EXPECTING_SUBDOMAIN:
        if c in letters then
          State := STATE_SUBDOMAIN
        else
          break;
      STATE_SUBDOMAIN:
        if c = '.' then
        begin
          inc(subdomains);
          State := STATE_EXPECTING_SUBDOMAIN
        end
        else if c = '-' then
          State := STATE_HYPHEN
        else if not(c in letters_digits) then
          break;
      STATE_HYPHEN:
        if c in letters_digits then
          State := STATE_SUBDOMAIN
        else if c <> '-' then
          break;
    end;
    inc(i);
  end;

  if i <= n then
    result := False
  else
    result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);
end;

end.
