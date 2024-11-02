local M = {}

function M.get_project_root_path()
  return vim.fn.expand('%')
end

return M
