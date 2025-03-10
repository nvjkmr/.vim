"" Neovim LSP

lua << EOF

require'lspconfig'.pyright.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.solargraph.setup{}

local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<space>k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
end

-- gopls
nvim_lsp.gopls.setup {
  on_attach = on_attach,
  cmd = {"gopls", "serve"},
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      usePlaceholders = true,
    },
  },
}

-- solargraph
local ruby_path = io.popen('which ruby'):read('*a'):gsub("%s+", "")
nvim_lsp.solargraph.setup {
  on_attach = on_attach,
  cmd = { ruby_path, "stdio" },
  flags = {
    debounce_text_changes = 150,
  },
}

-- standardrb
vim.opt.signcolumn = "yes" -- otherwise it bounces in and out, not strictly needed though
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }), -- also this is not /needed/ but it's good practice 
  callback = function()
    vim.lsp.start {
      name = "standard",
      cmd = { "~/.gem/ruby/3.0.0/bin/standardrb", "--lsp" },
    }
  end,
})

-- pyright
nvim_lsp.pyright.setup {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
}

-- goimports function
function goimports(timeout_ms)
  timeout_ms = timeout_ms or 1000

  local params = vim.lsp.util.make_range_params()
  params.context = { only = { 'source.organizeImports' } }

  -- Request code actions
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
  
  if not result then
    print("No response from LSP for organize imports")
    return
  end

  -- Iterate through results and apply edits
  for _, res in pairs(result or {}) do
    if res and res.result then
      for _, r in pairs(res.result) do
        if r.edit and not vim.tbl_isempty(r.edit) then
          vim.lsp.util.apply_workspace_edit(r.edit, 'UTF-8')
        elseif r.command then
          vim.lsp.buf.execute_command(r.command)
        end
      end
    end
  end

  -- Format the buffer
  vim.lsp.buf.format({ async = false })
end
EOF

autocmd BufWritePost *.go lua goimports(500)
