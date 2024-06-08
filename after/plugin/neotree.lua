require('neo-tree').setup({
  filesystem = {
    follow_current_file = enabled,
    filtered_items = {
      visible = true,
      show_hidden_count = true,
      hide_dotfiles = false,
      hide_gitignore = false
    },
    window = {
      mappings = {
        ["-"] = "navigate_up",
        ["h"] = "navigate_up",
        ["l"] = "set_root",
        ["H"] = "",
        ["/"] = "",
        ["f"] = "fuzzy_finder",
        ["F"] = "filter_on_submit",
        ["e"] = "open"
      }
    },
  }
})
