{ pkgs, ... }:

{

  ### BLUETOOTH
    # Enable Bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false;
  services.blueman.enable = true;

  ### PRINTER
    # Enable CUPS to print documents.
  services.printing.enable = true;

  ##### USB may not be needed; waiting for first test
  # ### USB
  #   # USB Automounting
  # services.gvfs.enable = true;

  #   # Enable USB Guard
  # services.usbguard = {
  #   enable = true;
  #   dbus.enable = true;
  #   implicitPolicyTarget = "block";
  #   # FIXME: set yours pref USB devices (change {id} to your trusted USB device), use `lsusb` command (from usbutils package) to get list of all connected USB devices including integrated devices like camera, bluetooth, wifi, etc. with their IDs or just disable `usbguard`
  #   rules = ''
  #     allow id {id} # device 1
  #     allow id {id} # device 2
  #   '';
  # };
  #   # Enable USB-specific packages
  # environment.systemPackages = with pkgs; [
  #   usbutils
  # ];

}
