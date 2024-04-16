vim.g.neoformat_c_clangformat = {
  exe = "clang-format",
  args = { "-assume-filename=%:p" },
  stdin = 1
}
vim.g.neoformat_enabled_c = "clangformat"


vim.cmd([[
  augroup fmt
    autocmd!
    autocmd BufWritePre * Neoformat
  augroup END
]])
