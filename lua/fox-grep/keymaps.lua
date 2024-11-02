local utils = require("fox-grep.utils.utils")

local M = {}

function M.setup(opts)
  opts = opts or {}

  if opts.verbose then
    M.logger = require("fox-grep.utils.logger")
    M.logger.init("lua/fox-grep/keymaps.lua")
  end

  for _, keymap in ipairs(opts.default) do
    if opts.verbose then
      M.logger.print(string.format("Setting: Mode: %s Key: %s", keymap[1], keymap[2]))
    end
    vim.keymap.set(unpack(keymap))
  end
end

return M
