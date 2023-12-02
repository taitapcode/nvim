---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
    ["<leader>a"] = {"ggVG", "Select all"},
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!
M.nvimtree = {
  n = {
     ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  }
}

return M
