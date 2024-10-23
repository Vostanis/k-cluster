{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    (python311.withPackages(ps: with ps; [
            jupyter
            numpy
            pandas
            polars
            sqlalchemy

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
