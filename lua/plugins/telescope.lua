local Util = require("lazyvim.util")
local Actions = require("telescope.actions")
local layout_config = {
  width = 0.9,
  preview_cutoff = 120,
  preview_width = 0.6,
}

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- new
    {
      "<C-p>",
      Util.telescope("files", { cwd = false, layout_config = layout_config }),
      desc = "Find Files (root dir)",
    },
    -- { "<C-l>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { layout_config = layout_config }, desc = "Buffer" },
    { "<C-l>", Util.telescope("current_buffer_fuzzy_find", { layout_config = layout_config }) },
    -- { "<leader>gd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
    {
      "<leader>/",
      Util.telescope("live_grep", { cwd = false, layout_config = layout_config }),
      desc = "Find in Files (Grep)",
    },

    -- disables default mappings
    { "<leader>,", false },
    { "<leader>:", false },
    { "<leader><space>", false },
    { "<leader>fb", false },
    { "<leader>ff", false },
    { "<leader>fF", false },
    { "<leader>fr", false },
    { "<leader>sb", false },
    { "<leader>sd", false },
    { "<leader>sg", false },
    { "<leader>sG", false },
    { "<leader>sw", false },
    { "<leader>sW", false },
  },
  opts = {
    defaults = {
      -- layout_config = {
      --   width = 0.9,
      --   preview_cutoff = 120,
      --   preview_width = 0.6,
      -- },
      mappings = {
        i = {
          ["<c-t>"] = Actions.select_tab,
          ["<C-j>"] = Actions.move_selection_next,
          ["<C-k>"] = Actions.move_selection_previous,
        },
      },
    },
  },
}
