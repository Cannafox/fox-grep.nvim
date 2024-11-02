local M = {}

M.default = {
  {"n", "foxr", function() print("root") end},
}

function M.setup(opts)
  opts = opts or {}

  if opts.verbose then
    M.logger = require("fox-grep.utils.logger").init("lua/fox-grep/keymaps.lua")
  end

  for _, keymap in ipairs(M.default) do
    vim.keymap.set(unpack(keymap))
  end
end

return M
