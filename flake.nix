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
      "k-host" = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [

          # hardware
          ./hardware-configuration.nix

          # design & interface
          ./config.nix

          # donwloads
          ./lib.nix # packages; git, curl
          ./bin.nix # software; LibreOffice, TradingView

          # global programming languages
          ./langs/rust.nix

          # core settings
          ./sys.nix # system; includes external devices and audio

          # network
          ./net.nix # vpn, cluster
          ./usrs.nix # users

        ];
      };
    };
  };
}
