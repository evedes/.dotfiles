vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

local markdown_group = vim.api.nvim_create_augroup("MarkdownSettings", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = markdown_group,
  pattern = { "markdown" },
  callback = function()
    -- Enable line wrap
    vim.opt_local.wrap = true
    -- Enable soft word wrap
    vim.opt_local.linebreak = true
    -- Don't break words when wrapping
    vim.opt_local.breakindent = true
    -- Format wrapped lines
    vim.opt_local.showbreak = "   "
    -- Disable spell checking
    vim.opt_local.spell = false
  end,
})
