{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rstudioWrapper
    (rstudioWrapper.override{ packages = with rPackages; [ 
        ggplot2 
        dplyr 
        xts 
        tidyverse 
        xgboost
        RSQLite
        knitr
        RPostgreSQL
        mlr
      ];
    })
  ];
}