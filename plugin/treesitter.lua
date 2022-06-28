require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "rust", "go", "python", "svelte" },

    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
