---@type LazySpec
return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  event = "VeryLazy",
  config = function()
    require("claude-code").setup {
      window = {
        position = "vertical",
      },
      refresh = {
        enable = true,
        updatetime = 100,
        timer_interval = 1000,
        show_notifications = true,
      },
      git = {
        use_git_root = true,
      },
    }
  end,
  cmd = { "ClaudeCode", "ClaudeCodeContinue", "ClaudeCodeResume", "ClaudeCodeVerbose" },
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Open Claude Code" },
  },
}
