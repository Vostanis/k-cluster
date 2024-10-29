{ pkgs, ... }:

{
  ### ENVIRONMENT VARIABLES ###
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    WLR_NO_HARDWARE_CURSORS = "1";
    PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
    OPENSSL_LIB_DIR = "/run/current-system/sw/bin/openssl";
    DEFAULT_BROWSER = pkgs.firefox;
  };

  ### EXTERNALS ###
  # graphics
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
    	vpl-gpu-rt
    ];
  };

  services.xserver = {
    videoDrivers = [ "intel" ]; # or "intel" or "amd" depending on your hardware
  };

  # bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false;
  services.blueman.enable = true;

  # printer
  services.printing.enable = true;

  ### AUDIO ###
  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire.enable = true;
  services.pipewire.pulse.enable = true;  # This allows PipeWire to handle PulseAudio applications

  ### CORE SYSTEM ###
  # NixOS Version
  system.stateVersion = "24.05";

  # nix configuration
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # programs
  programs.dconf.enable = true; # config system
  programs.fish.enable = true; # terminal shell
  nixpkgs.config.allowUnfree = true; # allow unfree software

  # bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # openSSH
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

  # console keymap
  console.keyMap = "uk";

}
