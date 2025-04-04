require('bdatsukh.base')
require('bdatsukh.highlights')
require('bdatsukh.maps')
require('bdatsukh.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
    require('bdatsukh.macos')
end
if is_win then
    require('bdatsukh.windows')
end
