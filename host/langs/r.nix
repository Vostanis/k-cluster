{ inputs, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        R
        rpackages.languageserver
        rpackages.quandl
        rpackages.couchDB
        rpackages.ggplot2 
        rpackages.dplyr 
        rpackages.xts
    ];
}