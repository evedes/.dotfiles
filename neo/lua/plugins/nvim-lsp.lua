return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "folke/lazydev.nvim",
    "hrsh7th/cmp-nvim-lsp",   -- LSP source for nvim-cmp
    "nvimtools/none-ls.nvim", -- For formatters and linters
  },
  config = function()
    -- Setup Mason first to ensure LSP servers are installed
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",        -- Lua
        "ts_ls",         -- TypeScript/JavaScript
        "eslint",        -- ESLint
        "pyright",       -- Python
        "rust_analyzer", -- Rust
        "clojure_lsp",   -- Clojure
      },
      automatic_installation = true,
    })

    -- LSP keybindings
    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }

      -- LSP navigation
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

      -- LSP actions
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', '<leader>cd', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format({ async = true }) end, opts)

      -- Diagnostics
      vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
      vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

      -- Auto-format on save
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr, timeout_ms = 3000 })
          end,
        })
      end
    end

    -- nvim-cmp supports additional LSP capabilities
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Configure Lua LSP for Neovim
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- Recognize vim global
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })

    -- TypeScript/JavaScript
    require("lspconfig").ts_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    })

    -- Python
    require("lspconfig").pyright.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    -- ESLint
    require("lspconfig").eslint.setup({
      on_attach = function(client, bufnr)
        on_attach(client, bufnr)
        -- Run ESLint autofix on save
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end,
      capabilities = capabilities,
      settings = {
        packageManager = "npm",
      },
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "svelte",
      },
    })

    -- Clojure
    require("lspconfig").clojure_lsp.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      -- Optional settings for clojure-lsp
      settings = {
        -- You can add Clojure-specific settings here if needed
        ["clojure-lsp"] = {
          -- Example settings (uncomment as needed):
          -- signatureHelp = true,
          -- codeLens = { refreshOnSave = true },
          -- completion = { autocompleteOnEnter = false },
        }
      }
    })

    -- Rust
    require("lspconfig").rust_analyzer.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = {
            command = "clippy",
          },
        },
      },
    })

    -- Set up none-ls for Prettier and other formatters
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettierd.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "css",
            "scss",
            "less",
            "html",
            "json",
            "yaml",
            "markdown",
            "graphql",
            "vue"
          },
        }),
        -- Add clj-kondo for additional Clojure linting if desired
        null_ls.builtins.diagnostics.clj_kondo,
        -- Add cljfmt for optional formatting control
        null_ls.builtins.formatting.cljfmt,
      },
      on_attach = on_attach,
    })

    -- Set up diagnostic signs
    local signs = { Error = "󰅙 ", Warn = "󰀦 ", Hint = "󰌵 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    -- Configure diagnostics display
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
      float = {
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      }
    })

    -- Better hover UI
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover,
      { border = "rounded" }
    )

    -- Better signatureHelp UI
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help,
      { border = "rounded" }
    )
  end
}
