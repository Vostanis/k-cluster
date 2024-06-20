{ inputs, pkgs, ... }:

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
            tqdm
            pyreadstat
            networkx

            flask
            scipy
            torch
            torchvision
            scrapy
            beautifulsoup4
            scikit-learn
            sklearn-deap
            statsmodels
            niaarm
            psycopg2
            sqlalchemy
            stanza
            graphviz
            xgboost

            altair
            dash # dashboarding
            radian # R terminal in VS code
            
            openpyxl
    ]))
  ];
}
