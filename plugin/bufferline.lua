require('bufferline').setup {
  options = {
    mode = "tabs", -- set to "tabs" to only show tabpages instead
    separator_style = "slant"
  },
  highlights = {
    fill = {
        guibg = "#111111"
    },
    separator_selected = {
      guifg = "#111111"
    },
    separator = {
      guifg = "#111111"
    },
  }
}
