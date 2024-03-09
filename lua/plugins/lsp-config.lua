return{
	{
    	"williamboman/mason.nvim", 
		config = function()
		require("mason").setup()
	end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require ("lspconfig")
			lspconfig.clangd.setup({
			 capabilities = capabilities
			})
		end
	}

}
