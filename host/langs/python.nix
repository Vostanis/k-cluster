{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    (python311.withPackages(ps: with ps; [
            jupyter
            numpy
            pandas
            polars
            sqlalchemy # psycopg2 is a dependency of sqlalchemy
            psycopg2

            seaborn
            plotly
            dash

            requests
            datetime
            zipfile2
            aiohttp
            openpyxl

            torch
            torchvision
            scikit-learn
            xgboost
    ]))
  ];
}
