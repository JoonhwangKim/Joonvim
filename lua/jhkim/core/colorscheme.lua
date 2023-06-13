-- set colorscheme to nightfly with protected call
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
--   print("Colorscheme not found!") -- print error if colorscheme not installed
--   return
-- end
-- vim.g.nightflyTransparent = true

-- ### GruvBox ###
local status, gruvbox = pcall(require, "gruvbox")
if not status then
  print("GruvBox is not found!") -- print error if colorscheme not installed
  return
end

gruvbox.setup({
  transparent_mode = true,
})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
-- vim.cmd([[hi normal ctermbg=NONE guibd=NONE]])
