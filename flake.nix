{
  description = "cluster admin";

  inputs = {

    # core
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # overlays
    rust-overlay.url = "github:oxalica/rust-overlay";
    emacs-overlay.url  = "github:nix-community/emacs-overlay";
    nixos-hardware.url = "github:nixos/nixos-hardware";
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

          # hardware
          ./hardware-configuration.nix

          # design & interface
          ./host/config.nix

          # utility
          ./host/lib.nix # packages; git, curl
          ./host/bin.nix # software; LibreOffice, TradingView

          # global programming languages
          ./host/langs/rust.nix

          # core settings
          ./host/sys.nix # system; includes external devices and audio

          # network
          ./host/net.nix # vpn, cluster
          # ./host/usrs.nix # users

        ];
      };
    };
  };
}
