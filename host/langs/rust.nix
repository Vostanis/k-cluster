{ inputs, pkgs, ... }:

{
  nixpkgs.overlays = [ inputs.rust-overlay.overlays.default ];

  environment.systemPackages = with pkgs; [

    (rust-bin.fromRustupToolchainFile ./rust-toolchain.toml)
    rustc
    rustup
    cargo
    gcc # linker
    lldb_16
    evcxr # jupyter notebook integration
  ];
}
