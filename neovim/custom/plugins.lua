local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

{
    "chikko80/error-lens.nvim",
    event = "BufRead",
    dependencies = {
        "nvim-telescope/telescope.nvim"
    }
},
  -- Override plugin definition options
  {
    "nvim-telescope/telescope.nvim",
      opts = {
        extensions_list = {
          "terms", "themes", "projects"
        }
     }
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- proyect manager
  {
    "coffebar/project.nvim",
    lazy = false,
    branch = "session-manager",
    config = function()
      require("project_nvim").setup {
        session_autoload = false,
        silent_chdir = true,
      }
    end,
  },

  -- smooth scroll
  {
    "declancm/cinnamon.nvim",
    lazy = false,
    config = function()
      require("cinnamon").setup()
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "tsx", "jsx" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  -- session manager
  {
    "Shatur/neovim-session-manager",
    config = function()
      require("session_manager").setup {
        autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
      }
    end,
  },
}

return plugins
