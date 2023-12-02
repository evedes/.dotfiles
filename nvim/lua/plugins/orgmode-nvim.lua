local config = function()
  -- Load treesitter grammar for org
  require('orgmode').setup_ts_grammar()

  -- Setup treesitter
  require('nvim-treesitter.configs').setup({
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { 'org' },
    },
    ensure_installed = { 'org' },
  })

  require('orgmode').setup({
    org_agenda_files = '~/OneDrive/ORGFILES/**/*',
    org_default_notes_file = '~/OneDrive/ORGFILES/refile.org'
  })
end


return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  config = config
}
