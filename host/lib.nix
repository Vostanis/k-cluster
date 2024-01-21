{ pkgs, ... }:

{

  # terminal & cli
  environment.systemPackages = with pkgs; [

    # terminal
    kitty     # emulator 
    starship  # icons
    lunarvim  # ide

    # db
    cassandra

    # cli
    git
    curl
    vim
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
