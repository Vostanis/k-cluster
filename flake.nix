{
  description = "cluster; to include local VPN and Postgres virtual host";

  inputs = {

    # core
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-hardware.url = "github:nixos/nixos-hardware";

    # overlays
    rust-overlay.url = "github:oxalica/rust-overlay";

    # nixvim
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs : {

      nixosConfigurations = {

      "host" = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.kimon = import ./host/home.nix;
          }

          ./hardware-configuration.nix
          ./host
          # ./host/conf.nix # fonts & themes
          # ./host/cli.nix
          # ./host/sys.nix # includes external devices and audio
          # ./host/net.nix
          # ./host/usrs.nix

          # # langs
          # ./host/langs/docker.nix
          # ./host/langs/python.nix
          # ./host/langs/r.nix
          # ./host/langs/rust.nix
        ];
      };
    };
  };
}
