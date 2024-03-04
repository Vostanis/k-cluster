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
            zipfile2
            yfinance
            scipy
            tensorflow
            scrapy
            beautifulsoup4
            dash # dashboarding
            radian # R terminal in VS code
    ]))
  ];
}
