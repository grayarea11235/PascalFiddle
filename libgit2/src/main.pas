program TestLibGit2; 

uses
  libgit2,
  ctypes; 

var
  res: cint32;

begin
  WriteLn('Hello world');

  WriteLn('About to call git_libgit2_init');
  res := git_libgit2_init(); 

end.
