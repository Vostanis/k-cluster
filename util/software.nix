{ pkgs, ... }:

{ 
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [

    networkmanagerapplet # network manager
    ungoogled-chromium # browser
    teamviewer # comms
    tradingview # trading charts

    # office software
    libreoffice-qt
    hunspell
    hunspellDicts.uk_UA
    hunspellDicts.th_TH

  ];
}
