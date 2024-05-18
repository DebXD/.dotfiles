return {

  "stevearc/conform.nvim",
  config = function()
    local conform = require("conform")
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
      },
      -- format on leader + f
      vim.keymap.set("n", "<leader>f", function()
        conform.format({

          lsp_fallback = true,
          timeout_ms = 500,
        })
      end
      )

    })
  end
}
