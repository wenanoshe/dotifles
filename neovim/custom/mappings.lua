local M = {}

M.general = {
   -- mode_opts = { noremap = true, silent = false }, -- this is completely optional
  n = {
    ["<leader>;"] = { "<ESC><S-a>;<ESC>", ";  Add a semicolon to the end of the line" },
    ["<C-q>"] = { ":q <CR>", "Exit file" },
    ["<leader>O"] = { "<S-o><ESC>", "New Line above" },
    ["<leader>o"] = { "o<ESC>", "New Line below" },
    ["<leader>tr"] = { "<Cmd> Telescope registers <CR>", "Telescope registers" },
   },
}

return M
