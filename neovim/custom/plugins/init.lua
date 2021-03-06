return {
  -- cinnamon scroll
  ['declancm/cinnamon.nvim'] = {
    config = function() require('cinnamon').setup() end
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
       require "plugins.configs.alpha"
    end,
  },

  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
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
  }

}
