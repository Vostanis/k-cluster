# NixOS Config
Working DEV host build - file structure as follows:
  .
  |_  config
  |   |_  fonts_and_themes.nix
  |   ... (home-manager build to be added)
  |
  |_  core
  |   |_  sys.nix # core system settings
  |   |_  ext.nix # external devices; bluetooth, printers, etc.
  |   |_  audio.nix
  |
  |_  langs
  |   |_  rust.nix
  |   |_  rust-toolchain.toml
  |
  |_  net
  |   |_  network.nix
  |   ...  (cluster build to be added; include vpn, dns, firewall)
  |
  |_  util
      |_  software.nix # list of standard software
      |_  termware.nix # CLI programmes (git, curl, etc.)

# Known Issues
1. Errors thrown on build do not specify paths; the file format may be too organised

# TODO!
- [x] Working host default NixOS config
- [ ] Set up default home env with home-manager (default .config files for tmux, kitty etc)
- [ ] Set up cluster network; refer to https://github.com/hugolgst/nixos-raspberry-pi-cluster/blob/master/nixops/wireguard-server.nix
