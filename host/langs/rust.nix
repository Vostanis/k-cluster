{ inputs, pkgs, ... }:

{
  nixpkgs.overlays = [ inputs.rust-overlay.overlays.default ];

  environment.systemPackages = with pkgs; [

    (rust-bin.fromRustupToolchainFile ./rust-toolchain.toml)
    rustc
    rustup
    cargo
    gcc
    lldb_16
    bacon

    nodejs_22
    nodePackages.ts-node
    typescript
  ]; 
}
