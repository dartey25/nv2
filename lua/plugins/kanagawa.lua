return {
  { "rebelot/kanagawa.nvim", name = "kanagawa", opts = {
    transparent = true,
  } },

  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
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
    "TheNiteCoder/mountaineer.vim",
    name = "mountaineer",
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
