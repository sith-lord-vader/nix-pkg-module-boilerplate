{ pkgs, ... }:
with pkgs;
mkShell {
  buildInputs = [ ];
  shellHook = ''
    		export PS1='>'$PS1
    		export NIX_PATH=nixpkgs=${pkgs.path}
    	'';
}
