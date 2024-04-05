{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

    # cli
    git
    curl
    vim
    ripgrep
    jq
    fd
    wireguard-tools
    neofetch
    ipfetch
    direnv
    htop
    btop
    pkg-config
    mdbook
    mdbook-linkcheck
    cargo-expand
    docker-compose

    etcher # ISO images
  ];
}
