{
  programs.nixvim = {
    keymaps = [
        {
          key = "<C-n>";
          action = "<CMD>NvimTreeToggle<CR>";
          options.desc = "Toggle NvimTree";
        }
    ];
    plugins.nvim-tree = {
        enable = true;
        openOnSetupFile = true;
        autoReloadOnWrite = true;
    };
  };
}