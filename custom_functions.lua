--[[ to return a function i have to create a table and 
return the table with the function.
The function must be NON LOCAL
--]]

M = {}

local frequent_paths = {
  config = "Users/tommasobassignana/.config/nvim",
  algo = "~/Desktop/PyAlgoV2" }

function M.change_directory()
  local choice = vim.fn.inputlist({
    'select a path',
    'press 1 for config: ' .. frequent_paths.config,
    'press 2 for algo: ' .. frequent_paths.algo
    })

  if choice > 0 then
    local selected_path
    if choice == 1 then
      selected_path = frequent_paths.config
    elseif choice == 2 then
      selected_path = frequent_paths.algo
    end

    if selected_path then
      vim.cmd('cd: ' .. selected_path)
    end
  end
end

return M
