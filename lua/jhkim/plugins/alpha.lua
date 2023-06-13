local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
  "                                                ",
  "    ███████╗██████╗  █████╗ ███████╗███████╗    ",
  "    ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝    ",
  "    ███████╗██████╔╝███████║███████╗███████╗    ",
  "    ╚════██║██╔═══╝ ██╔══██║╚════██║╚════██║    ",
  "    ███████║██║     ██║  ██║███████║███████║    ",
  "    ╚══════╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝    ",
  "                                                ",
}

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("Ctrl-p", "  > Find file", "Telescope find_files<CR>"),
  dashboard.button("SPC f w", "  > Find word", "Telescope live_grep<CR>"),
  dashboard.button("SPC f o", "  > Oldfiles", ":Telescope oldfiles<CR>"),
  dashboard.button("SPC f r", "  > Git Repo", ":Telescope repo<CR>"),
  dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

local function pick_color()
  local colors = { "String", "Identifier", "Keyword", "Number" }
  return colors[math.random(#colors)]
end

local function footer()
  local golden_saying = "Do or do not. There is no try -Yoda- \n \n"
  local datetime = os.date(" %Y-%m-%d   %H:%M:%S")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch .. "\n"

  return golden_saying .. datetime .. nvim_version_info
end

dashboard.section.footer.val = footer()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
