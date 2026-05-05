-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- macOS (Apple Silicon): Tree-sitter parser .so files can carry `com.apple.provenance` or end up in a
-- bad code-signature state after :TSUpdate; the kernel may SIGKILL (exit 137) on dlopen/page-in.
-- See https://github.com/nvim-treesitter/nvim-treesitter/issues/8530
if vim.fn.has("mac") == 1 then
  vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    once = true,
    group = vim.api.nvim_create_augroup("macos_treesitter_parser_sign", { clear = true }),
    callback = function()
      vim.defer_fn(function()
        local dirs = {
          vim.fn.stdpath("data") .. "/site/parser",
          vim.fn.stdpath("data") .. "/lazy/nvim-treesitter/parser",
        }
        for _, dir in ipairs(dirs) do
          if vim.fn.isdirectory(dir) == 1 then
            for _, path in ipairs(vim.fn.glob(dir .. "/*.so", false, true)) do
              pcall(vim.fn.system, { "xattr", "-d", "com.apple.provenance", path })
              pcall(vim.fn.system, { "codesign", "-f", "-s", "-", path })
            end
          end
        end
      end, 0)
    end,
  })
end
