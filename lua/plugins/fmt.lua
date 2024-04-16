local util = require "formatter.util"
require("formatter").setup {
  logging = true,
  log_leval = vim.log.levels.WARN,

  filetype = {
    cpp = {
      function ()
        return {
          exe = 'clang-format',
          args = {
            "--assume-filename",
            util.escape_path(util.get_current_buffer_file_name()),
            "--style={\"BasedOnStyle: Google, AccessModifierOffset: -4, IndentWidth: 4, TabWidth: 4\"}"
          },
          stdin = true
        }
      end
    }
  }

}

vim.cmd([[
  augroup FormatAutoGroup
  autocmd!
  autocmd BufWritePre * FormatWrite
  augroup END
]])
