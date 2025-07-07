-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local ime_group = vim.api.nvim_create_augroup("ime_group", {})

vim.api.nvim_create_autocmd("InsertLeave", {
  group = ime_group,
  callback = function()
    vim.cmd(":silent :! " .. vim.fn.stdpath("config") .. "/lua/bin/im-select.exe 1033")
  end,
})
vim.api.nvim_create_autocmd("InsertEnter", {
  group = ime_group,
  callback = function()
    vim.cmd(":silent :! " .. vim.fn.stdpath("config") .. "/lua/bin/im-select.exe 2052")
  end,
})
vim.api.nvim_create_autocmd("VimEnter", {
  group = ime_group,
  callback = function()
    vim.cmd(":silent :! " .. vim.fn.stdpath("config") .. "/lua/bin/im-select.exe 1033")
  end,
})
vim.api.nvim_create_autocmd("VimLeave", {
  group = ime_group,
  callback = function()
    vim.cmd(":silent :! " .. vim.fn.stdpath("config") .. "/lua/bin/im-select.exe 2052")
  end,
})
