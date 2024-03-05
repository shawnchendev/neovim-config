local nnoremap = require("user.keymap-utils").nnoremap
local vnoremap = require("user.keymap-utils").vnoremap
local inoremap = require("user.keymap-utils").inoremap
local tnoremap = require("user.keymap-utils").tnoremap
local xnoremap = require("user.keymap-utils").xnoremap
local harpoon = require("harpoon")

nnoremap("S", function()
  local cmd = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>"
  local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
  vim.api.nvim_feedkeys(keys, "n", false)
end)

-- Open Spectre for global find/replace
nnoremap("<leader>S", function()
  require("spectre").toggle()
end)

-- Open Spectre for global find/replace for the word under the cursor in normal mode
-- TODO Fix, currently being overriden by Telescope
nnoremap("<leader>sw", function()
  require("spectre").open_visual({ select_word = true })
end, { desc = "Search current word" })

-- Swap between last two buffers
nnoremap("<leader>'", "<C-^>", { desc = "Switch to last buffer" })

-- Save with leader key
nnoremap("<leader>w", "<cmd>w<cr>", { silent = false })

-- Quit with leader key
nnoremap("<leader>q", "<cmd>q<cr>", { silent = false })

-- Save and Quit with leader key
nnoremap("<leader>z", "<cmd>wq<cr>", { silent = false })

-- Press 'H', 'L' to jump to start/end of a line (first/last char)
nnoremap("L", "$")
nnoremap("H", "^")

-- Press 'U' for redo
nnoremap("U", "<C-r>")

-- go back to previous location
vim.keymap.set("n", "<leader>[", ":Ex<cr>")
-- Format code with leader key
vim.keymap.set("n", "<C-f>", ":Format<cr>")

-- Turn off highlighted results
nnoremap("<leader>no", "<cmd>noh<cr>")

-- Harpoon keybinds --
-- Open harpoon ui
nnoremap("<leader>ho", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- Add current file to harpoon
nnoremap("<leader>ha", function()
  harpoon:list():append()
end)

-- Remove current file from harpoon
nnoremap("<leader>hr", function()
  harpoon:list():remove()
end)

-- Quickly jump to harpooned files
nnoremap("<leader>1", function()
  harpoon:list():select(1)
end)

nnoremap("<leader>2", function()
  harpoon:list():select(2)
end)

nnoremap("<leader>3", function()
  harpoon:list():select(3)
end)

nnoremap("<leader>4", function()
  harpoon:list():select(4)
end)

nnoremap("<leader>5", function()
  harpoon:list():select(5)
end)
