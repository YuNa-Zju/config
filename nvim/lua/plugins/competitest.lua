return {
  "xeluxee/competitest.nvim",
  dependencies = "MunifTanjim/nui.nvim",
  config = function()
    require("competitest").setup({
      template_file = {
        cpp = vim.fn.stdpath("config") .. "/lua/templates/cp_template.cpp",
      },
    })
  end,
  keys = {
    { "<leader>mr", "<cmd>CompetiTest run<CR>", desc = "Run Test" },
    { "<leader>mp", "<cmd>CompetiTest receive problem<CR>", desc = "Recive Problem" },
    { "<leader>ma", "<cmd>CompetiTest add_testcase<CR>", desc = "Add Testcase" },
    { "<leader>me", "<cmd>CompetiTest edit_testcase<CR>", desc = "Edit Testcase" },
    { "<leader>md", "<cmd>CompetiTest delete_testcase<CR>", desc = "Delete Testcase" },
    { "<leader>ms", "<cmd>CompetiTest show_ui<CR>", desc = "Show Ui" },
  },
}
