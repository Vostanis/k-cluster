{ config, ... }:

{
  users.users.kimon= {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" "vboxusers" "libvirtd" ];
  };
}
