{
  description = "
                         █████          ███    █████         ███  
                        ░░███          ███    ░░███         ░░███ 
   ████████   ██████  ███████  ██████ ███      ░███ █████    ░░███
  ░░███░░███ ███░░██████░░███ ███░░██░███      ░███░░███      ░███
   ░███ ░███░███ ░██░███ ░███░███████░███      ░██████░       ░███
   ░███ ░███░███ ░██░███ ░███░███░░░ ░░███     ░███░░███      ███ 
   ████ ████░░██████░░███████░░██████ ░░███    ████ █████    ██░  
  ░░░░ ░░░░░ ░░░░░░  ░░░░░░░░ ░░░░░░   ░░░    ░░░░ ░░░░░    ░░░   

  cluster of nodes, pivoted on some host;
    e.g.,
      host(kimon)
       |_ node(VPN)
       |_ node(PostgreSQL)
       |_ node(CUDA)
  ";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:nixos/nixos-hardware";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    rust-overlay.url = "github:oxalica/rust-overlay";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, flake-parts, nixpkgs, ... } @ inputs: 
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = nixpkgs.lib.systems.flakeExposed;
      imports = [ ./flake ];
    };
}















  # outputs = { self, nixpkgs, home-manager, ... } @ inputs : {

  #     nixosConfigurations = {

  #     "host" = nixpkgs.lib.nixosSystem {
  #       specialArgs = { inherit inputs; };
  #       modules = [

  #         home-manager.nixosModules.home-manager {
  #           home-manager.useGlobalPkgs = true;
  #           home-manager.useUserPackages = true;
  #           home-manager.users.kimon = import ./host/home.nix;
  #         }

  #         ./hardware-configuration.nix

  #         ./host/conf.nix # fonts & themes
  #         ./host/cli.nix
  #         ./host/sys.nix # includes external devices and audio
  #         ./host/net.nix
  #         ./host/usrs.nix

  #         # langs
  #         ./host/langs/docker.nix
  #         ./host/langs/python.nix
  #         ./host/langs/r.nix
  #         ./host/langs/rust.nix
  #       ];
  #     };
  #   };
  # };
# }
