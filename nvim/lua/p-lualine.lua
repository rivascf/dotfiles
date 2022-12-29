require('lualine').setup {
  options = {
    icons_enabled = true,
    --theme = 'auto',
    theme = 'nightfox',
    --component_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode', 'paste' },
    --lualine_b = { 'branch', 'diff', 'diagnostics' },
    --lualine_b = { { 'filename', path = 3 } },
    lualine_b = {
      {
        'filename',
        path = 1,
        shorting_target = 40,
        symbols = {
          modified = '落', -- Text to show when the file is modified.
          readonly = '', -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
          newfile = '[New]', -- Text to show for new created file before first writting
        },
      },
    },
    --lualine_c = { 'filename' },
    lualine_c = {
      { 'diagnostics' },
    },
    --lualine_x = { 'encoding', 'fileformat', 'filetype' },
    --lualine_x = { '' },
    lualine_x = {
      { 'branch', icon = '' },
      { 'diff', color_added = '#a7c080', color_modified = '#ffdf1b', color_removed = "#ff6666" }
    },
    lualine_y = { 'fileformat', 'encoding' },
    lualine_z = { 'filetype' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
