{ inputs, ... }: {
  flake.homeConfiguration.kimon = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs {
      system = "x86_64-linux";
      config = {
        allowUnfree = true;
        cudaSupport = true;
      };
    };
    extraSpecialArgs.inputs = inputs;
    # modules = [ ../users/kimon/home ];
  };
}
