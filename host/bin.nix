{ pkgs, ... }:

{

  # Software packages
  nixpkgs.config.allowUnfree = true; 
  environment.systemPackages = with pkgs; [

    networkmanagerapplet # network manager
    firefox # browser
    teamviewer # comms
    tradingview # trading charts

    # office
    libreoffice-qt
    hunspell # hunspell needed for autocorrect
    hunspellDicts.uk_UA
    hunspellDicts.th_TH

  ];
}
