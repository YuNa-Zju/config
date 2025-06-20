-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp", -- 只针对 cpp 文件
  callback = function()
    -- 使用 vim.opt_local 为当前缓冲区设置选项，不会影响其他文件
    vim.opt_local.expandtab = true -- 使用空格替换 Tab
    vim.opt_local.shiftwidth = 4 -- 设置缩进的空格数为 4
    vim.opt_local.tabstop = 4 -- 设置一个 Tab 显示为 4 个空格
    vim.opt_local.softtabstop = 4 -- 设置在插入模式下按 Tab 键插入 4 个空格
  end,
})
