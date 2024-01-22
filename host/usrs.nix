{ ... }:

{
  users.user.kimon.isNormalUser = true;
  home-manager.users.kimon = { pkgs, ... }: {
    home.stateversion = "23.11";
    programs.bash.enable = true;

    description = "kimon";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;

    programs = {
      emacs = {
        enable = true;
      };
    };

    home.packages = with pkgs; [
        
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
  };
}
