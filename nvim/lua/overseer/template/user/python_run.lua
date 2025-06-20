return {
  name = "Python: Run",
  builder = function()
    local file = vim.fn.expand("%:p")
    local venv = os.getenv("VIRTUAL_ENV")
    local python_executable = venv and (venv .. "/bin/python") or "python3"
    return {
      name = "Run Python: " .. vim.fn.expand("%:t"),
      cmd = { python_executable, file },
      components = { "default" },
    }
  end,
  condition = {
    filetype = { "python" },
  },
}
