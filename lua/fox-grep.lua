local core = require("fox-grep.grep_core")
local keymaps = require("fox-grep.keymaps")

local M = {}

---@param opts table
function M.setup(opts)
  opts = opts or {}

  if opts.verbose then
    M.logger = require("fox-grep.utils.logger").init("lua/fox-grep.lua")
  end

  local default_keymaps = {
    {"n", "foxc", core.print_current_directory()}
    -- {"n", "foxg", core.grep_current_directory()},
  }

  core.setup(opts)
  keymaps.setup(opts, default_keymaps)
end

return M
