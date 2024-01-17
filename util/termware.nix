{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [    # core pkgs

    # IDE
    vim
    lunarvim

    # terminal
    kitty # terminal
    tmux # terminal
    starship # icons

    git
    curl
    neofetch
    ipfetch
    direnv
    htop
    btop
    kmon
    pkg-config
    docker-compose
    jq

  ];
}
