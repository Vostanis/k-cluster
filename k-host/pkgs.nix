{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true; 
  environment.systemPackages = with pkgs; [

    # software
    networkmanagerapplet # network manager
    ungoogled-chromium # browser
    teamviewer # comms
    tradingview # trading charts

    # office
    libreoffice-qt
    hunspell # hunspell needed for autocorrect
    hunspellDicts.uk_UA
    hunspellDicts.th_TH

    # IDE
    vim
    lunarvim

    # terminal
    kitty # emulator 
    starship # icons

    # CLI
    git
    curl
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
