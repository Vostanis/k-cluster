{
    imports = [
        ./home-manager.nix
        ./nixos.nix
        # ../host
    ];

    perSystem = {pkgs, ...}: {
        formatter = pkgs.alejandra;
    };
}
