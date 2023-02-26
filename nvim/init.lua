require('base')
require('highlights')
require('maps')
require('plugins')

local has = function (x)
  return vim.fn.has(x) == 1
end

require('windows')
