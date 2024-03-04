# NixOS Config
Working DEV host build - file structure as follows:
```
  host/
    |
    |__ bin;          software
    |
    |__ config;       fonts & themes
    |                 ... (home-manager build to be added)
    |
    |__ langs;        programming languages (and required toolchains)
    |
    |__ lib;          terminal (& IDE), cli
    |
    |__ net;          vpn, dns, keys
    |                 ...  (cluster build to be added)
    |
    |__ sys;          core system settings, includes external devices & audio
    |
    |__ usrs;         users & groups

  node/ ...
```

# Known Issues
1. Errors thrown on build do not specify paths

# TODO!
- [x] Working host default NixOS config; refer [here](https://github.com/XNM1/linux-nixos-hyprland-config-dotfiles)
- [x] Set up default home env with home-manager (default .config files for tmux, kitty etc)
- [ ] Set up cluster network; refer [here](https://github.com/hugolgst/nixos-raspberry-pi-cluster/blob/master/nixops/wireguard-server.nix)
