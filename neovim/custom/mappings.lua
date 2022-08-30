local M = {}

M.general = {
  n = {
    ["<leader>;"] = { "<ESC><S-a>;<ESC>", ";  Add a semicolon to the end of the line" },
    ["<C-q>"] = { ":q <CR>", "Exit file" },
    ["<leader>O"] = { "<S-o><ESC>", "New Line above" },
    ["<leader>o"] = { "o<ESC>", "New Line below" },
    ["<leader>tr"] = { "<Cmd> Telescope registers <CR>", "Telescope registers" },
   },
   i = {
     ["C-s"] = {"<ESC> :echo 'whattt'", "Save in insert mode and change to normal mode"}
   },
}

return M
