-- Highlight when yanking text
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('nextnvim-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
        end,
})
