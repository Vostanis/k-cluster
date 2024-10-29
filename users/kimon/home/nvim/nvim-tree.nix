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
	# plugins.neo-tree = {
	#    enable = true;
	#    enableDiagnostics = true;
	#    enableGitStatus = true;
	#    enableModifiedMarkers = true;
	#    enableRefreshOnWrite = true;
	#    closeIfLastWindow = true;
	#    popupBorderStyle = "rounded"; # Type: null or one of “NC”, “double”, “none”, “rounded”, “shadow”, “single”, “solid” or raw lua code
	#    buffers = {
	#      bindToCwd = false;
	#      followCurrentFile = {
	#        enabled = true;
	#      };
	#    };
	#    window = {
	#      width = 40;
	#      height = 15;
	#      autoExpandWidth = false;
	#      mappings = {
	#        "<space>" = "none";
	#      };
	#    };
	#  };
  };
}
