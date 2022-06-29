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
}
