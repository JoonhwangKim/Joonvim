-- import nvim-colorizer safely
local status, colorizer = pcall(require, "colorizer")
if not status then
  return
end

-- configure autopairs
colorizer.setup({
  user_default_options = {
    tailwind = true,
  },
})
