-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- export PATH=/home/egor/.local/bin:$PATH

-- WSL https://github.com/neovim/neovim/issues/12092
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
-- vim.opt.shell = "/bin/bash"

lvim.format_on_save = true
lvim.lint_on_save = true
lvim.use_icons = true

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<Tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":bprev<cr>"
lvim.keys.normal_mode["<Leader>x"] = ":NvimTreeFocus<cr>"

lvim.builtin.terminal.active = true
lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.builtin.which_key.mappings.s.t = { require('telescope').extensions.live_grep_args.live_grep_args, "Live grep args", }

-- lvim.builtin.project.active = false
-- lvim.builtin.nvimtree.setup.update_cwd = false

-- Nvim treesiiter no longer jumps when changing packages
lvim.builtin.project.patterns = { ">Projects", ".git" }

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettierd",
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "svelte" }
  },
}

local null_ls = require("null-ls")

null_ls.setup({
  root_dir = require("null-ls.utils").root_pattern(".git", "package.json")
})

lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.telescope.defaults.path_display = { "truncate" }

lvim.plugins = {
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
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end
  },
}
--
