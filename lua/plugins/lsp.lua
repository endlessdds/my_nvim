local cap = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").clangd.setup {
  capabilities = cap,
  cmd = {
    "clangd",
    "--header-insertion=never",
    "--query-driver=/opt/homebrew/opt/llvm/bin/clang",
    "--all-scopes-completion",
    "--completion-style=detailed",
  },
  init_options = {
    fallbackFlags = {"--std=c++17"}
  },
  filetypes = {
    "c", "cpp"
  }
}

require("lspconfig").lua_ls.setup {
  capabilities = cap,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
}

require'lspconfig'.cmake.setup{
  capabilities = cap,
  cmd = { "cmake-language-server" },
  filetypes = { "cmake" },
  init_options = {
    buildDirectory = "build"
  }
}
