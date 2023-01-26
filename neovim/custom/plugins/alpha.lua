local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

math.randomseed(os.time())

-- local function pick_color()
--     local colors = {"String", "Identifier", "Keyword", "Number"}
--     return colors[math.random(#colors)]
-- end

local function footer()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
    local version = vim.version()
    local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

    return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
end

local logo = {
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
"███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗",
"████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║",
"██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║",
"██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║",
"██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║",
"╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
}

dashboard.section.header.val = logo
dashboard.section.header.opts.hl = "Identifier"

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

dashboard.section.buttons.val = {
    dashboard.button("<Leader>ff", "  File Explorer"),
    dashboard.button("<Leader>fo", "  Find File"),
    dashboard.button("<Leader>pr", "📦  Find Project"),
    dashboard.button("<Leader>fw", "  Find Word"),
    dashboard.button("<Leader>ps", "  Update plugins", "<cmd>PackerSync<CR>"),
    dashboard.button("q", "  Quit", ":qa<cr>")
}


alpha.setup(dashboard.opts)

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
