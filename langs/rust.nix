{ inputs, pkgs, ... }:

{
  # Apply the overlay to the package set
  nixpkgs.overlays = [
    inputs.rust-overlay.overlays.default
  ];

  environment.systemPackages = with pkgs; [

    # rust
    (rust-bin.fromRustupToolchainFile ./rust-toolchain.toml)
    rustc
    gcc # linker for rust
  ];
}
