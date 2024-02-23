{ inputs, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        
        (rstudioWrapper.override { packages = with rPackages; [ 

                # core
                languageserver
                ggplot2 
                dplyr 
                xts

                # finance
                Quandl
                quantmod
                TTR
                PerformanceAnalytics
            ];
        })
    ];
}
