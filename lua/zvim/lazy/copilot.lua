return {
  'github/copilot.vim',
  config = function()
    vim.cmd([[
      imap <silent><script><expr> <M-CR> copilot#Accept("\<CR>")
      let g:copilot_no_tab_map = v:false
      let g:copilot#enable = 1
    ]])
  end,
}
