{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    (python311.withPackages(ps: with ps; [
            jupyter
            numpy
            pandas

            seaborn
            plotly
            dash

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
