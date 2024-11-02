local M = {}

function M.get_project_root_path()
  return vim.bo.fileformat
end

return M
