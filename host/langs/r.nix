{ inputs, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        
        (rWrapper.override{ packages = with rPackages; [ 
                languageserver
                Quandl
                ggplot2 
                dplyr 
                xts 
            ];
        })
    ];
}