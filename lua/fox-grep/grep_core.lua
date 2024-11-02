--- Grepping tool
-- @module fox-grep
local M = {}

--- Plugin defaults
M.defaults = {
  opts = {
    verbose = true
  }
}

function M.print_current_directory()
  print(require("fox-grep.utils.utils").get_current_path())
end

function M.setup(opts)
  opts = opts or M.defaults

  if opts.verbose then
    M.logger = require("fox-grep.utils.logger").init("lua/fox-grep/grep_core.lua")
  end
end

return M
