{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    (python311.withPackages(ps: with ps; [
            jupyter
            numpy
            pandas
            matplotlib
            seaborn
            requests
            datetime
            zipfile2
            yfinance
            aiohttp
            progressbar
            openpyxl

            torch
            torchvision
            scikit-learn
            psycopg2
            xgboost
    ]))
  ];
}
