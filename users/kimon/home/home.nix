{ pkgs, ... }:

{
  home = {
    stateVersion = "24.05";
    username = "kimon";
    packages = with pkgs; [
      kitty # terminal
      vscodium
      brave
      obsidian
      networkmanagerapplet # wifi
      teamviewer # comms
      tradingview # trading
      libreoffice-qt # office
      hunspell # autocorrect
      hunspellDicts.uk_UA
      hunspellDicts.th_TH
    ];
  };

    xsession.enable = true;
    xsession.windowManager.i3  = {
    	enable = true;
	package = pkgs.i3-gaps;
	# terminal = "kitten";
	config = {
	    gaps.outer = 5;
	    gaps.inner = 10;
	    gaps.smartBorders = "on";
	    gaps.smartGaps = true;
	    window.border = 2;
	    window.titlebar = false;
	};
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
      # theme = "Gruvbox Material Dark Soft";
      theme = "Space Gray";
      font.size = 12;
      extraConfig = "
	background              #0b0b0e
	foreground              #bcb28d
	cursor                  #bcb28d
	selection_background    #2c5a65
	selection_foreground    #eee8d5
	url_color               #58b2dc
	color0                  #0b0b0e  
	color8                  #43474c  
	color1                  #E6844F  
	color9                  #E6844F  
	color2                  #66A866  
	color10                 #66A866  
	color3                  #DDA52D  
	color11                 #DDA52D  
	color4                  #58b2dc  
	color12                 #58b2dc  
	color5                  #E03C8A  
	color13                 #E03C8A  
	color6                  #69b0ac  
	color14                 #69b0ac  
	color7                  #bcb28d  
	color15                 #fdf6e3  
	active_tab_foreground   #fdf6e3
	active_tab_background   #2c5a65
	inactive_tab_foreground #707C74
	inactive_tab_background #282b31
      ";
      keybindings = {
	"ctrl+x" = "fg";
      };
    };

    atuin = {
      enable = true;
      enableFishIntegration = true;	
    };

    zsh = {
      enable = true;
    };
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
