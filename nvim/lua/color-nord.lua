--vim.cmd('colorscheme nord')

-- Example config in lua
--vim.g.nord_contrast = true
--vim.g.nord_borders = false
vim.g.nord_disable_background = true
vim.g.nord_italic = false
--vim.g.nord_uniform_diff_background = true
--vim.g.nord_bold = false

vim.g.nord_diagnostic_line_highlight = 1

-- Load the colorscheme
require('nord').set()
