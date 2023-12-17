return {
  'voldikss/vim-floaterm',
  config = function ()
    vim.keymap.set('n', "<leader>t", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ")
    vim.keymap.set('n', "t", ":FloatermToggle terminal<CR>")
    vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")
  end
}
