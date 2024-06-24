{inputs, ...}: 
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./nvim
    ./home.nix
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    luaLoader.enable = true;
  };
}
