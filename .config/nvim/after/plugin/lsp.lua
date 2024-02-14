local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
  lsp_zero.buffer_autoformat()
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'tsserver', 'html', 'jdtls', 'jsonls', 'intelephense', 'gopls' },
  handlers = {
    lsp_zero.default_setup,
    gopls = function()
      require('lspconfig').gopls.setup({
        completeUnimported = true,
        usePlaceholders = true,
      })
    end,
  },
})

vim.keymap.set("n", "<S-l>", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("i", "<C-s>", function()
  vim.lsp.buf.signature_help()
end, opts)

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})



local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_format = require('lsp-zero').cmp_format()

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  --- (Optional) Show source name in completion menu
  formatting = cmp_format,
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})

require('flutter-tools').setup({
  -- flutter_path = "C:/src/flutter/bin/flutter.bat",                           ENABLE ONLY ON WINDOWS!!
  lsp = {
    capabilities = lsp_zero.get_capabilities()
  }
})
