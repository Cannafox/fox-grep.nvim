local M = {}

---@param opts table
function M.setup(opts)
  local logger = require("fox-grep.utils.logger").init("lua/fox-grep.lua")
  local core = require("fox-grep.grep_core")
end

return M
