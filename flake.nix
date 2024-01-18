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
      "admin-test" = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        # system = "x86_64-linux";
        modules = [

          # hardware
          ./hardware-configuration.nix

          # design & interface
          ./config/fonts_and_themes.nix

          # utility
          ./util/cli.nix # git, curl, etc.
          ./util/software.nix # LibreOffice, TradingView, etc.

          # global programming languages
          ./langs/rust.nix

          # core settings
          ./core/sys.nix    # SYSTEM   - Bootloader, TimeZone, Keyboard, OpenSSH
          ./core/ext.nix    # EXTERNAL - bluetooth, printers, etc.
          ./core/audio.nix

          # network
          ./net/network.nix # TODO! include firewall, dns, vpn
          ./net/users.nix

          # TODO!
          # ./net/virtualisation.nix
        ];
      };
    };
  };
}
