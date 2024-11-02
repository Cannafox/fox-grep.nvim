local M = {}

M.default = {
  {"n", "foxr", function() print("root") end},
}

function M.setup(opts)
  opts = opts or {}

  if opts.verbose then
    M.logger = require("fox-grep.utils.logger")
    M.logger.init("lua/fox-grep/keymaps.lua")
  end

  for _, keymap in ipairs(M.default) do
    if opts.verbose then
      M.logger.print(string.format("Setting keymap: %s", keymap))
    end
    vim.keymap.set(unpack(keymap))
  end
end

return M
