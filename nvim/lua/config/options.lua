-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set global indentation to 4 spaces
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4 -- Number of spaces for indentation
vim.opt.tabstop = 4 -- Number of spaces a tab counts for
vim.opt.softtabstop = 4 -- Number of spaces inserted for a tab
vim.opt.clipboard = ""
-- vim.g.clipboard = {
--   name = "OSC 52",
--   copy = {
--     ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
--   },
--   -- WezTerm 不允许读取剪贴板，所以 paste 函数通常需要被禁掉或者留空
--   paste = {
--     ["+"] = function() end, -- 留空或提供一个不会读取剪贴板的函数
--     ["*"] = function() end, -- 留空或提供一个不会读取剪贴板的函数
--   },
-- }
-- if os.getenv("SSH_TTY") then
--   vim.g.clipboard = {
--     name = "OSC 52",
--     -- Try to use OSC 52 escape sequences to copy to system clipboard
--     -- It should not break anything if it’s not supported
--     copy = {
--       ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
--       ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
--     },
--     -- Disable paste since it does not work in some terminals,
--     -- i.e., xterm.js (many app based on Web tech use this)
--     paste = {
--       ["+"] = function(lines)
--         return vim.split(vim.fn.getreg('"'), "\n")
--       end,
--       ["*"] = function(lines)
--         return vim.split(vim.fn.getreg('"'), "\n")
--       end,
--     },
--   }
-- end
