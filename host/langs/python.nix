{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    (python3.withPackages(ps: with ps; [
            # core packages
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

            scipy
            tensorflow
            keras
            scrapy
            beautifulsoup4

            dash # dashboarding
            radian # R terminal in VS code
    ]))
  ];
}
