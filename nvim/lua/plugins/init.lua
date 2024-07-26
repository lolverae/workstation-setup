return {
  -- {
  --   "stevearc/conform.nvim",
  --   config = function()
  --     require "configs.conform"
  --   end,
  -- },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncommented
    cmd = "ConformInfo", -- otherwise ConformInfo don't show up until first <leader>fm
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "lua-language-server",
        "stylua",
        "css-lsp",
        "html-lsp",
        "gopls",
        "pyright",
        "svelte-language-server",
        "marksman",
        "terraform-ls",
        "eslint-lsp",
        "yaml-language-server",
        "prettier",
        "typescript-language-server",
        "eslint-lsp",
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "vim",
        "lua",
        "html",
        "svelte",
        "css",
        "markdown",
        "markdown_inline",
        "go",
        "terraform",
  		},
  	},
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    },
  },
}
