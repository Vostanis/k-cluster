{ pkgs, ... }:

{
  home = {
    stateVersion = "24.05";
    username = "kimon";
    packages = with pkgs; [
      kitty # terminal
      lunarvim # terminal ide
      # vscode # gui ide
      vscodium
      firefox # web browser
      brave
      networkmanagerapplet # wifi
      teamviewer # comms
      tradingview # trading
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

    bash = { enable = true; };

    fish = { enable = true; };

    kitty = {
      enable = true;
      shellIntegration.enableFishIntegration = true;
      shellIntegration.enableBashIntegration = true;
      font.name = "JetBrains Mono";
      # font.name = "Tinos Nerd Font";
      # theme = "shadotheme";
      theme = "Gruvbox Material Dark Soft";
      font.size = 10;
      settings = {
	background_opacity = "0.85";
	remember_window_size = "yes";
	intial_window_width = "100c";
	initial_window_height = "50c";
	enable_layouts = "tall, fall, horizontal, grid";
      };
      keybindings = {
	"ctrl+x" = "fg";
      };
    };

    atuin = {
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
