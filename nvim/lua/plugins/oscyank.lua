-- lazy.nvim 示例
if true then
  return {}
end
return {
  "ojroques/vim-oscyank",
  lazy = true,
  config = function()
    vim.g.oscyank_term_filter = { "wezterm" } -- 告诉插件只在wezterm中使用OSC 52
  end,
}
