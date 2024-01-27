{ pkgs, ... }:

{

  # cli
  environment.systemPackages = with pkgs; [

    # cli
    git
    curl
    vim
    ripgrep
    jq
    wireguard-tools
    neofetch
    ipfetch
    direnv
    htop
    btop
    pkg-config
    docker
    docker-compose

  ];
}
