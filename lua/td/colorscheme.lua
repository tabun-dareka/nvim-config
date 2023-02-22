vim.o.background = "dark" -- or "light" for light mode

local gruvbox_status_ok, gruvbox = pcall(require, 'gruvbox')
if not gruvbox_status_ok then
    return
end

-- setup must be called before loading the colorscheme
-- Default options:
gruvbox.setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = true,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})

local colorscheme = 'gruvbox'
local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not status_ok then
    vim.notify('colorscheme ' .. colorscheme .. 'not found')
    return
end
