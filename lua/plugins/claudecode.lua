return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  opts = {
    terminal = {
      split_width_percentage = 0.4,
    },
  },
  cmd = {
    "ClaudeCode",
    "ClaudeCodeFocus",
    "ClaudeCodeSelectModel",
    "ClaudeCodeAdd",
    "ClaudeCodeSend",
    "ClaudeCodeTreeAdd",
    "ClaudeCodeStatus",
    "ClaudeCodeStart",
    "ClaudeCodeStop",
    "ClaudeCodeOpen",
    "ClaudeCodeClose",
    "ClaudeCodeDiffAccept",
    "ClaudeCodeDiffDeny",
    "ClaudeCodeCloseAllDiffs",
  },
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
    { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select model" },
    { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection" },
    { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Reject diff" },
  },
}
