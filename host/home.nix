{ config, pkgs, ... }:

{
  home = {
    stateVersion = "23.11";
    username = "kimon";
    # homeDirectory = "/home/kimon"; # conflicting with home-manager
    packages = with pkgs; [

      firefox # web
      networkmanagerapplet # wifi
      # teamviewer # comms
      rstudio # r

      libreoffice-qt # office
      hunspell # autocorrect
      hunspellDicts.uk_UA
      hunspellDicts.th_TH
    ];
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "Vostanis";
    userEmail = "kimonvostanis@gmail.com";
  };

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.nix-mode
      epkgs.magit
    ];
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
