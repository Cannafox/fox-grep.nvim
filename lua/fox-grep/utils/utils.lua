local M = {}

function M.get_current_path()
  return vim.loop.cwd()
end

return M
