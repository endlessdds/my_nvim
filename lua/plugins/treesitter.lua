require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "bash", "python", "lua", "vim", "vimdoc", "query" },

  highlight = { enable = true },
  indent = { enable = true },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
