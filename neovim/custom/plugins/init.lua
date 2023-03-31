return {

  ["coffebar/project.nvim"] = {
    branch = "session-manager",
    config = function()
      require("project_nvim").setup({
        session_autoload = false,
        silent_chdir = false,
      })
    end,
  },

  ["nvim-telescope/telescope.nvim"] = {
    config = function ()
      require "plugins.configs.telescope"
      require "custom.plugins.telescope"
    end
  },

-- session manager
  ["Shatur/neovim-session-manager"] = {
    config = function ()
      require("session_manager").setup({
        autoload_mode = require('session_manager.config').AutoloadMode.Disabled,
      })
    end
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- cinnamon scroll
  ['declancm/cinnamon.nvim'] = {
    config = function() require('cinnamon').setup() end
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      require "plugins.configs.alpha"
      require "custom.plugins.alpha"
    end,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
    config = function()
       require "plugins.configs.whichkey"
    end,
  },

  ["windwp/nvim-ts-autotag"] = {
    ft = { 'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'tsx', 'jsx' },
    after = "nvim-treesitter",
    config = function()
       local present, autotag = pcall(require, "nvim-ts-autotag")

       if present then
          autotag.setup()
       end
    end,
  },

  ["NvChad/nvterm"] = {
    config = function()
      require("nvterm").setup({
        terminals = {
          type_opts = {
            float = {
              row = 0.15,
              col = 0.15,
              width = 0.7,
              height = 0.7,
            },
            vertical = { split_ratio = 0.4 },
          }
        }
      }
      )
    end,
  },

  -- Formating
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
  },

}
