require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
--  bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
--  long_message_to_split = true, -- long messages will be sent to a split
--  inc_rename = false, -- enables an input dialog for inc-rename.nvim
--  lsp_doc_border = true, -- add a border to hover docs and signature help
  },
  routes = {
-- break long notifications into splits
    {
      filter = {
        event = "notify",
        min_height = 2
      },
      view = "split"
    },
-- break long messages into split (:hi)
    {
      filter = {
        event = "msg_show",
        min_height = 10
      },
      view = "split"
    },
-- send 'undo' messages to mini
    {
      filter = {
        event = "msg_show",
        find = "fewer lines",
      },
      view = "mini"
    },
    {
      filter = {
        event = "msg_show",
        find = "line less",
      },
      view = "mini"
    },
    {
      filter = {
        event = "msg_show",
        find = "more line",
      },
      view = "mini"
    },
    {
      filter = {
        event = "msg_show",
        find = "Already at newest change",
      },
      view = "mini"
    },
    {
      filter = {
        event = "msg_show",
        find = "Already at oldest change",
      },
      view = "mini"
    },
-- suppress mode messages
    {
      filter = {
        event = "msg_showmode",
        find = "INSERT",
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "msg_showmode",
        find = "REPLACE",
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "msg_showmode",
        find = "VISUAL",
      },
      opts = { skip = true },
    },
-- show when @recording (by show all other showmode messages)
    {
      filter = {
        event = "msg_showmode"
      },
      view = "notify",
    },
-- show search_count in miniview
    {
      filter = {
        event = "msg_show",
        kind = "search_count",
      },
      view = "mini",
    },
-- show all messages (last)
    {
      filter = {
        event = "msg_show",
      },
      view = "notify"
    },
  },
})

require("notify").setup({
  background_colour = "#000000",
  render = "minimal",
  fps = 60,
  top_down = false,
  timeout = 200,
  stages = "fade",
  lsp_doc_border = true,
  long_message_to_split = true,
  highlights = {
    border = "NotifyBorder",
--  title = 
--  icon =
--  body = "Pmenu"
  },
})
