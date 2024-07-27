local options = {

  formatters_by_ft = {
    lua = { "stylua" },

    -- Web stuff
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "deno_fmt" },
    javascript = { "deno_fmt" },
    typescript = { "deno_fmt" },

    -- Devops
    go = { "gofumpt" },
    python = { "ruff_format" },
    terraform = { "terraform_fmt" },
    json = { "yq" },
    yaml = { "yq" },
    bash = { "beautysh" },
  },
  format_on_save = {
    lsp_fallback = true,
  },
}

require("conform").setup(options)
