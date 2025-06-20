return {
  "stevearc/overseer.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  opts = {
    templates = { "builtin", "user.cpp_compile_run", "user.python_run" },
    strategy = {
      "toggleterm",
      -- 当任务窗口打开时，自动聚焦到该窗口
      focus_on_open = true,
      -- 其他一些推荐配置
      direction = "float", -- 使用浮动窗口
      auto_scroll = true, -- 自动滚动到底部
      hidden = true, -- 任务结束后，在 toggleterm 列表中隐藏该终端
    },
  },

  keys = {
    { "<leader>cR", "<cmd>OverseerRun<CR>", mode = { "n" }, desc = "OverseerRun" },
    { "<leader>cT", "<cmd>OverseerToggle<CR>", mode = { "n" }, desc = "OverseerToggle" },
  },
}
