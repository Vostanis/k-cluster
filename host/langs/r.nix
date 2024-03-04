{ inputs, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        
        (rstudioWrapper.override { packages = with rPackages; [ 

                # core
                languageserver
                ggplot2 
                dplyr 
                xts
                httr # HTTP requests
                httpgd # graphics for VS Code

                # finance
                Quandl
                quantmod
                TTR
                PerformanceAnalytics
            ];
        })
    ];
}
