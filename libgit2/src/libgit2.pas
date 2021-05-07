{ Libgit2 }
unit libgit2;

{$linklib git2}

interface

uses 
  ctypes;

type


(*
typedef struct git_vector {
	size_t _alloc_size;
	git_vector_cmp _cmp;
	void **contents;
	size_t length;
	uint32_t flags;
} git_vector;
*)


TGitVector = packed record
end;


TGitObd = packed record

end;


(*
typedef struct git_vector {
	size_t _alloc_size;
	git_vector_cmp _cmp;
	void **contents;
	size_t length;
	uint32_t flags;
} git_vector;
*)

TGitVector = packed record
   _alloc_size :  size_t;

   length: size_t;
   flags: cint32;
   
end;


TGitRepository = packed record
   TGitObd
end;


(*
/** Internal structure for repository object */
struct git_repository {
	git_odb *_odb;
	git_refdb *_refdb;
	git_config *_config;
	git_index *_index;

	git_cache objects;
	git_attr_cache *attrcache;
	git_diff_driver_registry *diff_drivers;

	char *gitlink;
	char *gitdir;
	char *commondir;
	char *workdir;
	char *namespace;

	char *ident_name;
	char *ident_email;

	git_array_t(git_buf) reserved_names;

	unsigned is_bare:1;
	unsigned is_worktree:1;

	unsigned int lru_counter;

	git_atomic32 attr_session_key;

	intptr_t configmap_cache[GIT_CONFIGMAP_CACHE_MAX];
	git_strmap *submodule_cache;
};
*)


{ int git_libgit2_init(); }
function git_libgit2_init : cint32; cdecl; external;

{ int git_libgit2_shutdown(); }
function git_libgit2_shutdown : cint32; cdecl; external;

{ int git_repository_open(git_repository **out, const char *path); }
{ function git_repository_open(var }

implementation 

end.
