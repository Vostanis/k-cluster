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
    ];
  };
}
