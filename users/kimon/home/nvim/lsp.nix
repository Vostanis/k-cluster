{
  programs.nixvim = {
    plugins = {
      lsp-format.enable = true;
      lsp-format.lspServersToEnable = ["rust-analyzer"];
      lsp = {
        enable = true;

        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "<leader>k" = "goto_prev";
            "<leader>j" = "goto_next";
          };

          lspBuf = {
            gd = "definition";
            gD = "references";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            "<F2>" = "rename";
          };
        };

        servers = {
          nixd.enable = true;
          pylsp.enable = true;
          rust-analyzer = {
	  	enable = true;
		installCargo = true;
		installRustc = true;
        	settings = {
          	  cargo.features = "all";
		  inlayHints.typeHints.enable = true;
        	};
	  };
          sqls.enable = true;
          taplo.enable = true;
	  zls.enable = true;
        };
      };
    };
  };
}
