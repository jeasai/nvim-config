local actions = require "telescope.actions"

require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["s"] = actions.select_vertical,
        ["t"] = actions.select_tab
      }
    }
  },
  pickers = {
  },
  extensions = {
  }
}
