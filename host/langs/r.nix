{ inputs, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        
        (rWrapper.override { packages = with rPackages; [ 

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
