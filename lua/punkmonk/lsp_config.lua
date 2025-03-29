require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "autotools_ls", "clangd", "basedpyright" }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action , {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, {})
end

-- FOR REFERENCE
--nnoremap <buffer> K <cmd>lua vim.lsp.buf.hover()<cr>
--nnoremap <buffer> gd <cmd>lua vim.lsp.buf.definition()<cr>
--nnoremap <buffer> gD <cmd>lua vim.lsp.buf.declaration()<cr>
--nnoremap <buffer> gi <cmd>lua vim.lsp.buf.implementation()<cr>
--nnoremap <buffer> go <cmd>lua vim.lsp.buf.type_definition()<cr>
--nnoremap <buffer> gr <cmd>lua vim.lsp.buf.references()<cr>
--nnoremap <buffer> <C-k> <cmd>lua vim.lsp.buf.signature_help()<cr>
--nnoremap <buffer> <F2> <cmd>lua vim.lsp.buf.rename()<cr>
--nnoremap <buffer> <F4> <cmd>lua vim.lsp.buf.code_action()<cr>
--xnoremap <buffer> <F4> <cmd>lua vim.lsp.buf.range_code_action()<cr>

--" Diagnostics
--nnoremap <buffer> gl <cmd>lua vim.diagnostic.open_float()<cr>
--nnoremap <buffer> [d <cmd>lua vim.diagnostic.goto_prev()<cr>
--nnoremap <buffer> ]d <cmd>lua vim.diagnostic.goto_next()<cr>

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})


vim.diagnostic.config({
--  virtual_text = true,
--  update_in_insert = false,
--  underline = true,
--  severity_sort = false,
--	open_float = true,
--  float = {
--    border = 'rounded',
--    source = 'always',
--    header = '',
--    prefix = '',
--    format = function(diagnostic)
--      return string.format("[%s] %s", diagnostic.source, diagnostic.message)
--    end,
--    position = "top",
--  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.HINT] = '',
      [vim.diagnostic.severity.INFO] = '',
    },
--    linehl = {
--      [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
--    },
--    numhl = {
--      [vim.diagnostic.severity.WARN] = 'WarningMsg',
--    },
  },
})

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
	set signcolumn=yes
" autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

-- FLOATING WINDOW BORDERS

-- Thanks.
-- https://vi.stackexchange.com/questions/39074/user-borders-around-lsp-floating-windows

local _border = "single"

--vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
--  vim.lsp.handlers.hover, {
--    border = _border
--  }
--)
--
--vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
--  vim.lsp.handlers.signature_help, {
--    border = _border
--  }
--)
--
--vim.diagnostic.config{
--  float={border=_border}
--}

-- An example nvim-lspconfig capabilities setting
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig").clangd.setup({
  on_attach = on_attach
})




-- defaults
require 'corn'.setup {
  -- enables plugin auto commands
  auto_cmds = true,

  -- sorts diagnostics according to a criteria. must be one of `severity`, `severity_reverse`, `column`, `column_reverse`, `line_number` or `line_number_reverse`
  sort_method = 'severity',

  -- sets the scope to be searched for diagnostics, must be one of `line` or `file`
  scope = 'line',

  -- sets the style of the border, must be one of `single`, `double`, `rounded`, `solid`, `shadow` or `none`
  border_style = 'single',

  -- sets which vim modes corn isn't allowed to render in, should contain strings like 'n', 'i', 'v', 'V' .. etc
  blacklisted_modes = {},

  -- sets which severity corn isn't allowed to render in, should contain diagnostic severities like:
  -- vim.diagnostic.severity.HINT
  -- vim.diagnostic.severity.INFO
  -- vim.diagnostic.severity.WARN
  -- vim.diagnostic.severity.ERROR
  blacklisted_severities = {},

  -- highlights to use for each diagnostic severity level
  highlights = {
    error = "DiagnosticFloatingError",
    warn = "DiagnosticFloatingWarn",
    info = "DiagnosticFloatingInfo",
    hint = "DiagnosticFloatingHint",
  },

  -- icons to use for each diagnostic severity level
  icons = {
    error = "",
    warn = "",
    hint = "",
    info = "",
  },

  -- a preprocessor function that takes a raw Corn.Item and returns it after modification, could be used for truncation or other purposes
  item_preprocess_func = function(item)
    -- the default truncation logic is here ...
    return item
  end,

  -- a hook that executes each time corn is toggled. the current state is provided via `is_hidden`
  on_toggle = function(is_hidden)
    -- custom logic goes here
  end,
}
