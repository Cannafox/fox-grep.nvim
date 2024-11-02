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

  -- if opts.verbose then
  --   M.logger = logger.init("lua/fox-grep/init.lua")
  -- end

  vim.keymap.set("n", "fox", function()
    print("Hi!")
  end)
end

return M
