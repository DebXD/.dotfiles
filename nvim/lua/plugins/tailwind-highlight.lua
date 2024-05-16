return {
  { "princejoogie/tailwind-highlight.nvim"

  }, {
  require('lspconfig').tailwindcss.setup({
    on_attach = function(client, bufnr)
      local tw_highlight = require('tailwind-highlight')
      -- rest of you config
      tw_highlight.setup(client, bufnr, {
        single_column = false,
        mode = 'background',
        debounce = 200,
      })
    end

  })
} }
