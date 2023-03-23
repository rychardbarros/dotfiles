require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { 'python', 'lua', 'javascript' },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,


  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        goto_next_usage = "<A-*>",
        goto_previous_usage = "<A-#>",
      },
    },
  },
}
