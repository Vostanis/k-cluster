# NixOS Config
Working DEV host setup in NixOS. The file structure (open to change) is as follows:
'''
config  - configuration; fonts & themes currently, but home-manager to be added
core    - system settings; bootloader, keyboard mapping. includes external device managament
langs   - (global) programming languages; directory shell containers recommended within code workspaces
net     - network; vpn, dns, (rpi) cluster all to be added
util    - software and terminal programmes (a.k.a. termware)
'''

# Known Issues
1. Errors thrown on build do not specify paths; the file format may be too organised

# TODO!
- [x] Working host default NixOS config
- [ ] Set up default home env with home-manager (default .config files for tmux, kitty etc)
- [ ] Set up cluster network; refer to https://github.com/hugolgst/nixos-raspberry-pi-cluster/blob/master/nixops/wireguard-server.nix
