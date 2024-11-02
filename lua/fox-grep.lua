local M = {}

---@param opts table
function M.setup(opts)
  opts = opts or {}

  if opts.verbose then
    M.logger = require("fox-grep.utils.logger").init("lua/fox-grep.lua")
  end
  local core = require("fox-grep.grep_core").setup(opts)
  local keymaps = require("fox-grep.keymaps").setup(opts)

end

return M
