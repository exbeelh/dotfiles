local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enbale = true,
    disable = {},
  },
  indent = {
    enbale = true,
    disbale = {},
  },
  ensure_installed = {
    'tsx',
    'javascript',
    'lua',
    'json',
    'css'
  },
  autotag = {
    enable = true,
  }
}


