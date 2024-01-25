{ pkgs, ... }:

{

  # cli
  environment.systemPackages = with pkgs; [

    # cli
    git
    curl
    vim
    ripgrep
    wireguard-tools
    neofetch
    ipfetch
    direnv
    htop
    btop
    pkg-config
    docker-compose
    jq

  ];
}
