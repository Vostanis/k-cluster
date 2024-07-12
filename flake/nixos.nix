{ inputs, ... }: {
  flake.nixosConfigurations = {
    k-cluster = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs.inputs = inputs;
      modules = [
        ../host
        inputs.home-manager.nixosModules.home-manager {
            home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
		backupFileExtension = "backup";
                users.kimon.imports = [ ../users/kimon/home ];
                extraSpecialArgs.inputs = inputs;
            };
        }
      ];
    };
  };
}
