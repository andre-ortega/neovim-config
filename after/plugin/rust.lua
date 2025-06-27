local bufnr = vim.api.nvim_get_current_buf()
  vim.keymap.set( "n", "<Space>a", function() vim.cmd.RustLsp('codeAction') end, { silent = true, buffer = bufnr },
  vim.keymap.set('n', '<Space>ca', vim.lsp.buf.code_action , {}),
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}),
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {}),
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {}),
  vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {}),
  vim.keymap.set('n', '<Space>k', vim.diagnostic.open_float, {}),
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
)
--vim.keymap.set(
--  "n",
--  "K",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
--  function()
--    vim.cmd.RustLsp({'hover', 'actions'})
--  end,
--  { silent = true, buffer = bufnr }
--)
