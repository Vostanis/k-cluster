{ pkgs, ... }:

{

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
    docker-compose
    cassandra_4
    # mongodb
    couchdb3

  ];
}
