program TestLibGit2; 

uses
  sysutils,
  libgit2,
  ctypes; 

var
  res: cint32;

begin
  WriteLn('Hello world');

  WriteLn('About to call git_libgit2_init');
  res := git_libgit2_init(); 
  WriteLn(Format('res = %d', [res]));


  WriteLn('About to call git_libgit2_shutdown');
  res := git_libgit2_shutdown();
  WriteLn(Format('res = %d', [res]));
end.
