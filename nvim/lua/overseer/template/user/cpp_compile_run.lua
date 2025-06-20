return {
  -- 模板的显示名称
  name = "C++: Compile and Run",
  -- builder 函数构建任务的细节
  builder = function()
    local source_file = vim.fn.expand("%:p")
    local output_file = vim.fn.expand("%:p:r")
    return {
      name = "Compile & Run: " .. vim.fn.expand("%:t"),
      cmd = { "bash", "-c", string.format("g++ -std=c++17 %s -o %s && %s", source_file, output_file, output_file) },
      -- 任务的组件
      components = { "default" },
    }
  end,
  -- 此模板只在 c 和 cpp 文件中建议
  condition = {
    filetype = { "c", "cpp" },
  },
}
