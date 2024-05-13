return {
  {
    "williamboman/mason.nvim",
    config = function ()
      vim.keymap.set('n', "<leader>m", ":Mason<CR>", {})
      require("mason").setup()
    end
  },
  { "williamboman/mason-lspconfig.nvim",
    config = function ()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "html", "cssls"},

      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
  }
}
