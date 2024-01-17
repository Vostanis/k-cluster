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
        system = "x86_64-linux";
        modules = [
          ./hardware-configuration.nix

          # design & interface
          ./config/fonts_and_themes.nix

          # utility
          ./util/software.nix # LibreOffice, TradingView, etc.
          ./util/termware.nix # git, curl, etc.

          # global programming languages
          ./langs/rust.nix

          # core settings
          ./core/sys.nix # SYSTEM   - Bootloader, TimeZone, Keyboard, OpenSSH
          ./core/ext.nix # EXTERNAL - bluetooth, printers, etc.

          # network
          ./net/network.nix
          ./net/users.nix

          # TODO!
          # ./net/vpn.nix
          # ./net/dns.nix
          # ./net/network.nix
          # ./net/openssh.nix
          # ./net/virtualisation.nix
          # ./net/firewall.nix
          # ./net/users.nix
          # ./core/bootloader.nix
          # ./core/audio.nix
        ];
      };
    };
  };
}
