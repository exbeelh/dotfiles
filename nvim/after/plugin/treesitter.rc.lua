local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
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


