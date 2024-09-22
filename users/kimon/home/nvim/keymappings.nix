{
  config,
  input,
  ...
}: {
  programs.nixvim = {
    globals.mapleader = " ";
    keymaps = [	
	    {
	      key = "<leader>.";
	      action = "<CMD>CopilotChatToggle<CR>";
	      options.desc = "Toggle Copilot Chat Window";
	    }
	    
	    {
	      mode = "n";
	      key = "<leader>ww";
	      action = "<C-W>p";
	      options = {
		silent = true;
		desc = "Other window";
	      };
	    }

	    {
	      mode = "n";
	      key = "<leader>wd";
	      action = "<C-W>c";
	      options = {
		silent = true;
		desc = "Delete window";
	      };
	    }

	    {
	      mode = "n";
	      key = "<leader>w-";
	      action = "<C-W>s";
	      options = {
		silent = true;
		desc = "Split window below";
	      };
	    }

	    {
	      mode = "n";
	      key = "<leader>w|";
	      action = "<C-W>v";
	      options = {
		silent = true;
		desc = "Split window right";
	      };
	    }
    ];
  };
}
