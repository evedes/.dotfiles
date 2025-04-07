return {
  "neovim/nvim-lspconfig",
  dependencies = {
    'saghen/blink.cmp',
    {
      "folke/lazydev.nvim",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  config = function()
    -- Enable inlay hints by default
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end
        if client.server_capabilities.inlayHintProvider then
          vim.lsp.inlay_hint.enable(true, nil)
        end
      end,
    })

    local capabilities = require('blink.cmp').get_lsp_capabilities()
    require("lspconfig").lua_ls.setup {
      capabilities = capabilities,
      settings = {
        inlayHints = {
          -- Customize inlay hints here
          onlyCurrentLine = true,
          highlight = "Comment",
        }
      }
    }

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        local bufnr = args.buf
        local opts = { buffer = bufnr }

        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'cd', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
        vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
        vim.keymap.set('n', '<leader>xl', vim.diagnostic.setloclist, opts)
        vim.keymap.set('n', '<leader>xq', vim.diagnostic.setqflist, opts)
        vim.keymap.set('n', 'cf', function() vim.lsp.buf.format({ async = true }) end,
          { buffer = bufnr, desc = "Format Code" })

        -- Toggle inlay hints
        vim.keymap.set('n', '<leader>ih', function()
          local curr_buf = vim.api.nvim_get_current_buf()
          local inlay_hints_active = vim.lsp.inlay_hint.is_enabled({ bufnr = curr_buf })
          vim.lsp.inlay_hint.enable(not inlay_hints_active, { bufnr = curr_buf })
        end, { buffer = bufnr, desc = "Toggle Inlay Hints" })


        if vim.bo.filetype == "lua" then
          -- Format the current buffer on save
          vim.api.nvim_create_autocmd('BufWritePre', {
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
            end,
          })
        end
      end,
    })
  end,
}
