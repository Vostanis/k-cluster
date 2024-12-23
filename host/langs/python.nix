{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    (python311.withPackages(ps: with ps; [
    	    pip

            jupyter
            numpy
            pandas
            polars
            sqlalchemy # psycopg2 is a dependency of sqlalchemy
            psycopg2
	    starlette

            seaborn
            plotly
            dash
	    fastapi
	    django
	    flask

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
