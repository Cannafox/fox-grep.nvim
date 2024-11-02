local M = {}

function M.get_project_root_path()
  return vim.loop.cwd()
end

return M
