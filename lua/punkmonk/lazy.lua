


             --  ███████╗ █████╗ ██████╗  █████╗ ██╗   ██╗  --
             --  ██╔════╝██╔══██╗██╔══██╗██╔══██╗██║   ██║  --
             --  ███████╗███████║██████╔╝███████║██║   ██║  --
             --  ╚════██║██╔══██║██╔══██╗██╔══██║╚██╗ ██╔╝  --
             --  ███████║██║  ██║██║  ██║██║  ██║ ╚████╔╝   --
             --  ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝    --
--                                            2025 PUNKMONK --








local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'nvim-treesitter/nvim-treesitter',
  'nvim-lualine/lualine.nvim',
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    init = false,
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
 ╔══════╗ ╔════╗ ╔═════╗  ╔════╗    ╔═╗   ╔═╗
 ║ ╔════╝╔╝╔══╗╚╗║ ╔══╗╚╗╔╝╔══╗╚╗   ║ ║   ║ ║
 ║ ╚════╗║ ╚══╝ ║║ ╚══╝╔╝║ ╚══╝ ║   ║ ║   ║ ║
 ╚════╗ ║║ ╔══╗ ║║ ╔══╗╚╗║ ╔══╗ ║   ╚╗╚╗ ╔╝╔╝
 ╔════╝ ║║ ║  ║ ║║ ║  ║ ║║ ║  ║ ║    ╚╗╚═╝╔╝
 ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝     ╚═══╝
    ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      -- stylua: ignore
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file",       "<cmd> Telescope find_files <cr>"),
        dashboard.button("n", " " .. " New file",        "<cmd> ene <BAR> startinsert <cr>"),
        dashboard.button("r", " " .. " Recent files",    "<cmd> Telescope oldfiles <cr>"),
        dashboard.button("g", " " .. " Find text",       "<cmd> Telescope live_grep <cr>"),
        dashboard.button("c", " " .. " Config",          "<cmd> Neotree action=focus source=filesystem position=left toggle=true dir=$HOME/.config/nvim <cr>"),
        dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
        dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
        dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.section.footer.opts.hl = "AlphaFooter"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
    config = function(_, dashboard)
      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          once = true,
          pattern = "AlphaReady",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      require("alpha").setup(dashboard.opts)

      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "LazyVimStarted",
        callback = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          dashboard.section.footer.val = "⚡ Neovim loaded "
            .. stats.loaded
            .. "/"
            .. stats.count
            .. " plugins in "
            .. ms
            .. "ms"
          pcall(vim.cmd.AlphaRedraw)
        end,
      })
    end,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "simrat39/rust-tools.nvim"
  },
  {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
--    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-look",
  }
})

