local options = {


  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },
    
    go = {"gofumpt"},
  },

  format_on_save = {
    lsp_fallback = true,
  },
}

require("conform").setup(options)
