local M = {}

function M.get_project_root_path()
  return vim.fn.getcwd()
end

return M
