{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    # cli
    git
    curl
    vim
    ripgrep
    jq
    fd
    wireguard-tools
    neofetch
    ipfetch
    direnv
    htop
    btop
    pkg-config
    mdbook
    mdbook-linkcheck
    cargo-expand
    docker-compose
    postgresql
    pgcli
    steam
    trunk
    pavucontrol

    # etcher # ISO images
  ];

  programs.steam = {
	enable = true;
	remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
	dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
	localNetworkGameTransfers.openFirewall = true;
  };
}
