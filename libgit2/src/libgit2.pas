{ Libgit2 }
unit libgit2;

{$linklib git2}

interface

uses 
  ctypes;

{ int git_libgit2_init(); }
function git_libgit2_init : cint32; cdecl; external;

{ int git_libgit2_shutdown(); }
function git_libgit2_shutdown : cint32; cdecl; external;

{ int git_repository_open(git_repository **out, const char *path); }
{ function git_repository_open(var }


implementation 

end.
