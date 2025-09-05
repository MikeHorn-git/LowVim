return {
  -- === Trivial plugins (inline setup) ===
  {
    "dhananjaylatkar/cscope_maps.nvim",
    opts = {},
  },

  {
    "RaafatTurki/hex.nvim",
    opts = {},
  },

  {
    "stevearc/overseer.nvim",
    opts = {},
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme "tokyonight"
    end,
  },

  "mbbill/undotree",

  -- === Plugins with custom configs ===
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require "lowvim.configs.harpoon" end,
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function() return require "lowvim.configs.lualine" end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    opts = function() return require "lowvim.configs.treesitter" end,
  },

  {
    "mason-org/mason.nvim",
    opts = function() return require "lowvim.configs.mason" end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = function() return require "lowvim.configs.mason_lspconfig" end,
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function() return require "lowvim.configs.trouble" end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = function() return require "lowvim.configs.which_key" end,
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function() require "lowvim.configs.dapui" end,
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require "lowvim.configs.telescope" end,
  },

  -- === Core editor / LSP / completion ===
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
  },
}
