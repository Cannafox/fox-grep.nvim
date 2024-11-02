--- Grepping tool
-- @module fox-grep
local M = {}

--- Plugin defaults
M.defaults = {
  opts = {
    verbose = true
  }
}

function M.setup(opts)
  opts = opts or M.defaults

  if opts.verbose then
    M.logger = require("fox-grep.utils.logger").init("lua/fox-grep/init.lua")
  end

  vim.keymap.set("n", "fox", function()
    print("Hi!")
  end)
end

return M
