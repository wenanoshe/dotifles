local M = {}

M.general = {
  n = {
    ["<leader>;"] = { "<ESC><S-a>;<ESC>", ";  Add a semicolon to the end of the line" },
    ["<C-q>"] = { ":q <CR>", " Exit file" },
    ["<leader>O"] = { "<S-o><ESC>", "⤴ New Line above" },
    ["<leader>o"] = { "o<ESC>", "⤵ New Line below" },
    ["<leader>tr"] = { "<Cmd> Telescope registers <CR>", "📜 Telescope registers" },
    ["<leader>ls"] = { "<cmd> Lazy sync <CR>", "📤 Update plugins" },
    ["<leader>pr"] = { "<cmd> Telescope projects <CR>", "📦 Saved Projects" },
    ["<leader>lls"] = { "<cmd> SessionManager load_last_session<CR>", "📦 Load last session" },
    ["<leader>lis"] = { "<cmd> SessionManager load_session<CR>", "📦 List sessions" },
   },
   i = {
     ["C-s"] = {"<ESC> :w", "Save in insert mode and change to normal mode"}
   },
}

return M
