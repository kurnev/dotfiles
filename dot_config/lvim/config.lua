lvim.format_on_save = true
lvim.lint_on_save = true
vim.opt.relativenumber = true
lvim.transparent_window = true

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<Tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":bprev<cr>"
lvim.keys.normal_mode["<Leader>x"] = ":NvimTreeFocus<cr>"

lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.width = 40
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.update_to_buf_dir = {
	enable = false,
	auto_open = false,
}

lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.telescope.defaults.path_display = { "truncate" }

lvim.lsp.override = { "rust" }
lvim.lsp.set_log_level = "debug"
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		exe = "stylua",
		filetypes = { "lua" },
	},
})

lvim.plugins = {
	{
		"simrat39/rust-tools.nvim",
		config = function()
			require("rust-tools").setup({
				tools = {
					autoSetHints = true,
					hover_with_actions = true,
				},
				server = {
					cmd = { vim.fn.stdpath("data") .. "/lsp_servers/rust/rust-analyzer" },
					on_attach = require("lvim.lsp").common_on_attach,
					on_init = require("lvim.lsp").common_on_init,
					settings = {
						["rust-analyzer"] = {
							checkOnSave = {
								enable = true,
								command = "clippy",
							},
						},
					},
				},
			})
		end,
		ft = { "rust", "rs" },
	},
	{
		"tpope/vim-fugitive",
		cmd = {
			"G",
			"Git",
			"Gdiffsplit",
			"Gread",
			"Gwrite",
			"Ggrep",
			"GMove",
			"GDelete",
			"GBrowse",
			"GRemove",
			"GRename",
			"Glgrep",
			"Gedit",
		},
		ft = { "fugitive" },
	},
}
