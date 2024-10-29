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
      # url = "github:mikaelfangel/nixvim-config";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, flake-parts, nixpkgs, ... } @ inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = nixpkgs.lib.systems.flakeExposed;
      imports = [ ./flake ];
    };
}
