return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = {
      transparent = true,
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = { -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" !
        light = "lotus",
      },
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
      bold = false,
      inverse = true,
      terminal_colors = true,
    },
  },
  {
    "sainnhe/everforest",
    name = "everforest",
    config = function()
      vim.g.everforest_transparent_background = 2
      vim.g.everforest_ui_contrast = "high"
      vim.g.everforest_inlay_hints_background = "none"
    end,
  },

  {
    "ayu-theme/ayu-vim",
    name = "ayu",
    opts = {
      mirage = true,
      terminal = true,
    },
    config = function()
      vim.cmd([[
        augroup AyuTransparent
          autocmd!
          autocmd ColorScheme ayu highlight Normal ctermbg=none guibg=none
          autocmd ColorScheme ayu highlight NonText ctermbg=none guibg=none
          autocmd ColorScheme ayu highlight LineNr ctermbg=none guibg=none
          autocmd ColorScheme ayu highlight Folded ctermbg=none guibg=none
          autocmd ColorScheme ayu highlight EndOfBuffer ctermbg=none guibg=none
        augroup END
      ]])
    end,
  },

  {
    "TheNiteCoder/mountaineer.vim",
    name = "mountaineer",
    config = function()
      vim.cmd([[
        augroup MountaineerTransparent
          autocmd!
          autocmd ColorScheme mountaineer highlight Normal ctermbg=none guibg=none
          autocmd ColorScheme mountaineer highlight NonText ctermbg=none guibg=none
          autocmd ColorScheme mountaineer highlight LineNr ctermbg=none guibg=none
          autocmd ColorScheme mountaineer highlight Folded ctermbg=none guibg=none
          autocmd ColorScheme mountaineer highlight EndOfBuffer ctermbg=none guibg=none
        augroup END
      ]])
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "moon",
      styles = {
        bold = true,
        italic = false,
        transparency = true,
      },
    },
  },

  {
    "rktjmp/lush.nvim",
  },

  {
    "mcchrish/zenbones.nvim",
    requires = "rktjmp/lush.nvim",
    config = function()
      vim.g.rosebones_transparent_background = true
      vim.g.zenburned_transparent_background = true
      vim.g.forestbones_transparent_background = true
      vim.g.seoulbones_transparent_background = true
    end,
  },

  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[
        augroup MiasmaTransparent
          autocmd!
          autocmd ColorScheme miasma highlight Normal ctermbg=none guibg=none
          autocmd ColorScheme miasma highlight NonText ctermbg=none guibg=none
          autocmd ColorScheme miasma highlight LineNr ctermbg=none guibg=none
          autocmd ColorScheme miasma highlight Folded ctermbg=none guibg=none
          autocmd ColorScheme miasma highlight EndOfBuffer ctermbg=none guibg=none
        augroup END
      ]])

      -- vim.cmd("colorscheme miasma")
    end,
  },

  {
    "fynnfluegge/monet.nvim",
    name = "monet",
    opts = {
      transparent_background = true,
      dark_mode = true,
    },
  },
  {
    "shaunsingh/nord.nvim",
    name = "nord",
    config = function()
      vim.g.nord_disable_background = true
      vim.g.nord_bold = false
      vim.g.nord_cursorline_transparent = true
    end,
  },

  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
        },
      })

      -- vim.cmd("colorscheme github_dark_tritanopia")
    end,
  },

  {
    "ramojus/mellifluous.nvim",
    name = "mellifluous",
    config = function()
      -- require("mellifluous").setup({
      --   transparent_background = {
      --     enabled = true,
      --   },
      -- })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "mellifluous",
    },
  },
}
