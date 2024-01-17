{ ... }:

{

  # NixOS Version
  system.stateVersion = "23.11";

  # Nix Configuration
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Programs
  programs.dconf.enable = true; # config system
  programs.fish.enable = true; # terminal shell

  # Environment variables
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
    ### TBC:
    # environment.variables.PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
    # environment.variables.OPENSSL_LIB_DIR = "/run/current-system/sw/bin/openssl";

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # OpenSSH
  services.openssh.enable = true;

  # zRAM
  zramSwap.enable = true;

  # Time Zone
  time.timeZone = "Europe/London";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };  


  # X11
  services.xserver = {

    # Enable windowing system
    enable = true;

    # Keymap config
    layout = "gb";
    xkbVariant = "";

    # Enable GNOME Desktop Environment
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  # Configure console keymap
  console.keyMap = "uk";

}
