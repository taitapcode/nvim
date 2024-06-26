-- Check is installed
local _, mason = pcall(require, 'mason')
local __, masonLspconfig = pcall(require, 'mason-lspconfig')
local ___, lspconfig = pcall(require, 'lspconfig')
if not _ or not __ or not ___ then return end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
mason.setup()
masonLspconfig.setup {
  ensure_installed = {
    'clangd',
    'lua_ls',
    'pyright',
    'jsonls',

    -- Web developmnent
    'tsserver',
    'html',
    'cssls',
    'emmet_language_server'
  }
}

masonLspconfig.setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function (server_name) -- default handler (optional)
      lspconfig[server_name].setup {
        capabilities = capabilities
      }
  end,
}

lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
