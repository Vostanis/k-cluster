{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    psqlodbc
    rstudio
    rWrapper
    (rWrapper.override{ packages = with rPackages; [ 
        ggplot2 
        dplyr 
	      dbplyr
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
