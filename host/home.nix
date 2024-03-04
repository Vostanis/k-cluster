{ pkgs, lib, ... }:

{
  home = {
    stateVersion = "23.11";
    username = "kimon";
    packages = with pkgs; [

      kitty # term
      lunarvim # ide
      vscode # ide
      # rstudio # r

      firefox # web
      networkmanagerapplet # wifi
      teamviewer # comms
      tradingview

      libreoffice-qt # office
      hunspell # autocorrect
      hunspellDicts.uk_UA
      hunspellDicts.th_TH
    ];
  };

  programs = {
    home-manager.enable = true; # h-m can manage and install itself

    git = {
      enable = true;
      userName = "Vostanis";
      userEmail = "kimonvostanis@gmail.com";
    };

    bash = {
      enable = true;
    };

    fish = {
      enable = true;
    };

    kitty = {
      enable = true;
      shellIntegration.enableFishIntegration = true;
      shellIntegration.enableBashIntegration = true;
      font.name = "HackNerdFont-Regular";
      theme = "shadotheme";
      # theme = "Sea Shells";
      # theme = "Tokyo Night Moon";
      # theme = "Hachiko";
      # theme = "kanagawabones";
      font.size = 15;
    };

    starship = {
      enable = true;
      enableFishIntegration = true;
    };
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
