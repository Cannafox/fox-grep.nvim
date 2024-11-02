---Logging module
--@module logger
local M = {}

---Initialize logger module
--@function [parent=#geometry] init
--@param #string name
--@return nil
function M.init(name)
  M.name = name

  M.print("Initialized!")
end

---Print line
--@function [parent=#geometry] print
--@param #string line
--@return nil
function M.print(line)
  local result = string.format(
    "[%s] %s",
    M.name, line
  )
  print(result)
end

return M
