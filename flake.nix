{
	description = "Boilerplate to flakify Nix Package and Module";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";
		utils.url = "github:numtide/flake-utils";
	};

	outputs = { self, nixpkgs, utils }: rec {
		devShells = utils.lib.eachDefaultSystemMap (system: {
			default = nixpkgs.legacyPackages.${system}.callPackage ./shell.nix {};
		});

		nixosModules.module_name = import ./modules/module_name self;

		packages = 
			let
		    system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
      in
        utils.lib.eachDefaultSystemMap (system: {
          pkg_name = pkgs.callPackage ./pkgs/pkg_name { };
        }); 
        

		defaultPackage.x86_64-linux = self.packages.x86_64-linux.pkg_name;
	};
}

