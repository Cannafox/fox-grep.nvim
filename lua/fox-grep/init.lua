--- Plugin defaults
local defaults = {
  opts = {
    verbose = true
  }
}
--- Grepping tool
-- @module fox-grep
local M = {}

function M.setup(opts)
  opts = opts or defaults

  if opts.verbose then
    M.logger = require("logger").init("lua/fox-grep/init.lua")
  end
end

return M
