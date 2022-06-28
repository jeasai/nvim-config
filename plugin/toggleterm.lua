function _G.set_terminal_keymaps()
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], {noremap = true})
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
