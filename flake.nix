{
  description = "cluster admin";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { self, nixpkgs, ... } @ inputs : {

      nixosConfigurations = {

      "host" = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [

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
          ./host/usrs.nix # users

        ];
      };
    };
  };
}
