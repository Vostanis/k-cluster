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

    (python3.withPackages(ps: with ps; [
            # core packages
            ipython
            jupyter
            numpy
            pandas
            matplotlib
            seaborn
            requests
            zipfile2
            yfinance
            mplfinance
            dash
    ]))
  ];
}
