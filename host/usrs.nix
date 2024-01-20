{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kimon = {
    isNormalUser = true;
    description = "kimon";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      thunderbird
    ];
  };
}
