{ pkgs, lib, ... }:

{
  home = {
    stateVersion = "23.11";
    username = "kimon";
    packages = with pkgs; [

      kitty # term
      lunarvim # ide
      surrealdb # db
      # obsidian # notes

      firefox # web
      networkmanagerapplet # wifi
      teamviewer # comms
      rstudio # r

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
      theme = "shadotheme";
      # theme = "Tokyo Night Moon";
      # theme = "Hachiko";
      # theme = "kanagawabones";
      font.name = "HackNerdFont-Regular";
      font.size = 14;
    };

    starship = {
      enable = true;
      enableFishIntegration = true;
      # settings = {
      #   git_branch = "\[[$symbol$branch]($style)\]";
      #   git_status = "([\[$all_status$ahead_behind\]]($style))";
      # };
    };

    emacs = {
      enable = true; 
      extraPackages = epkgs: [
        epkgs.nix-mode
        epkgs.magit
      ];
    };
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
