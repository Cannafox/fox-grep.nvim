local M = {}

function M.get_current_path()
  return vim.loop.cwd()
end

function M.setup(opts)
  print("chuj")
end

return M
