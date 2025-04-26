vim.opt_local.conceallevel = 2

local map = vim.keymap.set
local opts = { buffer = true, silent = true }

vim.keymap.set("n", "<leader>mx", function()
  local line = vim.api.nvim_get_current_line()
  local new_line
  if line:match("%[%s%]") then
    new_line = line:gsub("%[%s%]", "[x]")
    vim.cmd("echo 'Task completed ✓'")
  elseif line:match("%[x%]") then
    new_line = line:gsub("%[x%]", "[ ]")
    vim.cmd("echo 'Task unmarked ○'")
  end
  if new_line then
    vim.api.nvim_set_current_line(new_line)
  end
end, opts)

local function toggle_spell_check()
  local current_spell = vim.opt_local.spell:get()
  vim.opt_local.spell = not current_spell

  if vim.opt_local.spell:get() then
    -- Print a message when spell check is enabled
    vim.api.nvim_echo({ { "Spell check enabled", "MoreMsg" } }, false, {})
  else
    -- Print a message when spell check is disabled
    vim.api.nvim_echo({ { "Spell check disabled", "WarningMsg" } }, false, {})
  end
end

vim.keymap.set("n", "<leader>ms", toggle_spell_check, {
  desc = "Toggle spell checking",
  buffer = true,
  silent = true,
})

vim.api.nvim_create_user_command("ToggleSpell", toggle_spell_check, {
  desc = "Toggle spell checking",
})
