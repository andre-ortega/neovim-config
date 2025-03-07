-- Treesitter Plugin Setup 
require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "rust", "toml", "markdown", "c", "python", "html", "css", "javascript", "json" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting=false,
  },
  ident = { enable = true }, 
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

vim.filetype.add({
    extension = {
        ejs = "ejs"
    }
})

vim.treesitter.language.register('html', { 'ejs' })
