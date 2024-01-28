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
    docker-compose
    couchdb3

  ];
}
