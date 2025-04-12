-- Complete lspconfig.lua
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
      -- We reference mason but don't configure it here since you have a separate mason.lua
      "williamboman/mason.nvim",
      -- We don't need to add conform.nvim as a dependency here since you have it in a separate file
    },
    config = function()
      -- Configure basic LSP functionality
      local lspconfig = require("lspconfig")

      -- TypeScript server configuration
      lspconfig.ts_ls.setup({
        filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact" },
        root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
        },
      })

      -- Lua Language Server
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- Recognize 'vim' global
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

      -- ESLint server
      lspconfig.eslint.setup({
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        root_dir = lspconfig.util.root_pattern(".eslintrc", ".eslintrc.js", ".eslintrc.json"),
        settings = {
          packageManager = "npm",
          quiet = false,
          rulesCustomizations = {},
          run = "onType",
          useESLintClass = false,
          validate = "on",
          workingDirectory = {
            mode = "location",
          },
        },
      })

      -- CSS Language Server
      lspconfig.cssls.setup({
        capabilities = {
          textDocument = {
            completion = {
              completionItem = {
                snippetSupport = true,
              },
            },
          },
        },
      })

      -- CSS Modules Language Server
      lspconfig.cssmodules_ls.setup({})

      -- HTML Language Server
      lspconfig.html.setup({
        capabilities = {
          textDocument = {
            completion = {
              completionItem = {
                snippetSupport = true,
              },
            },
          },
        },
      })

      -- JSON Language Server
      lspconfig.jsonls.setup({
        capabilities = {
          textDocument = {
            completion = {
              completionItem = {
                snippetSupport = true,
              },
            },
          },
        },
        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
          },
        },
      })

      -- YAML Language Server
      lspconfig.yamlls.setup({
        settings = {
          yaml = {
            schemaStore = {
              enable = true,
            },
          },
        },
      })

      -- Bash Language Server
      lspconfig.bashls.setup({})

      -- Clojure Language Server
      lspconfig.clojure_lsp.setup({})

      -- Set up keymaps and other behavior when an LSP attaches to a buffer
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then
            return
          end

          local bufnr = args.buf

          -- Enable completion triggered by <c-x><c-o>
          vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

          -- Key mappings
          local opts = { buffer = bufnr, noremap = true, silent = true }

          -- Navigation
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)

          -- Documentation
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

          -- Workspace management
          vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set("n", "<leader>wl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)

          -- Refactoring
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

          -- Diagnostics
          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
          vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, opts)
          vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

          -- Set some format options for specific servers
          if client.name == "ts_ls" then
            -- Disable ts_ls formatting in favor of prettier via conform.nvim
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end

          if client.name == "eslint" then
            -- Run ESLint when saving files
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              command = "EslintFixAll",
            })
          end

          -- Auto formatting on save (if conform.nvim doesn't handle it)
          -- This will act as a fallback
          if
            client.supports_method("textDocument/formatting")
            and not client.name:match("ts_ls") -- Skip tsserver, we use prettier via conform
            and not client.name:match("eslint")
          then -- Skip eslint, it has its own autofix
            local format_group = vim.api.nvim_create_augroup("LspFormatting_" .. bufnr, { clear = true })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = format_group,
              buffer = bufnr,
              callback = function()
                if vim.g.disable_autoformat then
                  return
                end

                -- Let conform.nvim handle it if it can
                if
                  vim.bo.filetype == "lua"
                  or vim.bo.filetype == "javascript"
                  or vim.bo.filetype == "typescript"
                  or vim.bo.filetype == "typescriptreact"
                  or vim.bo.filetype == "javascriptreact"
                  or vim.bo.filetype:match("html")
                  or vim.bo.filetype:match("css")
                  or vim.bo.filetype:match("json")
                  or vim.bo.filetype:match("yaml")
                  or vim.bo.filetype:match("markdown")
                  or vim.bo.filetype:match("clojure")
                then
                  return
                end

                -- Use LSP formatting as fallback
                vim.lsp.buf.format({
                  buffer = bufnr,
                  timeout_ms = 500,
                })
              end,
            })
          end
        end,
      })

      -- Configure diagnostics
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        float = {
          source = "always",
          border = "rounded",
        },
      })
    end,
  },
}
