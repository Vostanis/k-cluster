  { pkgs, ... }:

  {
    home = {
      stateVersion = "24.05";
      username = "kimon";
      packages = with pkgs; [
        kitty # terminal
        lunarvim # terminal ide
        vscode # gui ide
        firefox # web browser
        networkmanagerapplet # wifi
        teamviewer
        tradingview
        libreoffice-qt # office
        hunspell # autocorrect
        hunspellDicts.uk_UA
        hunspellDicts.th_TH
      ];
    };

    programs = {
      home-manager.enable = true;

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
        font.name = "JetBrains Mono";
        theme = "shadotheme";
        # theme = "Gruvbox Material Dark Soft";
        font.size = 10;
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
