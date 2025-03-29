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
-- break long notifications into splits, show all messages
  routes = {
    {
      filter = {
        event = "notify",
        min_height = 2
      },
      view = 'split'
    },
    {
      filter = {
        event = "msg_show",
      },
      view = 'notify'
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
    border = "NotifyBorder"
  },
})

