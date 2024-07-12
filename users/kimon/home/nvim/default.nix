{
  imports = [
    ./barbar.nix
    # ./cmp.nix
    ./comment.nix
    ./dashboard.nix
    # ./harpoon.nix
    ./keymappings.nix
    ./lsp.nix
    ./markdown-preview.nix
    ./nvim-tree.nix
    ./telescope.nix
    ./ultimate-autopairs.nix
  ];

  programs.nixvim = {
    colorschemes = {
	    base16 = {
		enable = true;
		colorscheme = {
		  base00 = "#1f2023"; # Background
		  base01 = "#282b31"; # Lighter background
		  base02 = "#2c5a65"; # Selection background
		  base03 = "#43474c"; # Comments, invisibles
		  base04 = "#707C74"; # Dark foreground
		  base05 = "#bcb28d"; # Default foreground
		  base06 = "#eee8d5"; # Light foreground
		  base07 = "#fdf6e3"; # Light background
		  base08 = "#E6844F"; # Variables, tags
		  base09 = "#58b2dc"; # Integers, Boolean, constants
		  base0A = "#DDA52D"; # Classes, markup bold
		  base0B = "#66A866"; # Strings
		  base0C = "#69b0ac"; # Support, regular expressions
		  base0D = "#58b2dc"; # Functions, methods
		  base0E = "#E03C8A"; # Keywords, storage
		  base0F = "#646695"; # Deprecated, opening/closing embedded language tags
		  # orange = "#E6844F"
		};
	    };
    };

    options = {
	    number = true;
    };

    # small plugins
    plugins = {
      bufferline.enable = true;
      floaterm = {
        enable = true;
        width = 0.85;
        height = 0.85;
        title = "terminal";
        keymaps.toggle = "<leader>,";
      };
      jupytext.enable = true;
      lightline.enable = true;
      toggleterm = {
        enable = true;
        settings.open_mapping = "[[<C-t>]]";
      };
      which-key.enable = true;
    };
  };
}
