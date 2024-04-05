{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
        gcc
        boost
        catch2
        cmake
  ];
}
