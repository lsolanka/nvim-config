vim.api.nvim_create_user_command("CountFunctionLines", function()
  local ts_utils = require("nvim-treesitter.ts_utils")
  local node = ts_utils.get_node_at_cursor()
  while node do
    if node:type() == "function_definition" or node:type() == "function_declaration" or node:type() == "method_definition" then
      local start_row, _, end_row, _ = node:range()
      local lines = end_row - start_row + 1
      print("Function lines:", lines)
      return
    end
    node = node:parent()
  end
  print("No function found")
end, {})

