-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
-- local opt = vim.opt

local autocmd = vim.api.nvim_create_autocmd

-- Highlight yanked text
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

-- Enable spellchecking in markdown, text and gitcommit files
autocmd("FileType", {
  pattern = { "gitcommit", "markdown", "text" },
  callback = function()
     vim.opt_local.spell = true
  end,
})
