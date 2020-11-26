inoremap "" ""<++><Left><Left><Left><Left><Esc>i
inoremap '' ''<++><Left><Left><Left><Left><Esc>i
inoremap () ()<++><Left><Left><Left><Left><Esc>i
inoremap [] []<++><Left><Left><Left><Left><Esc>i
inoremap {} {}<++><Left><Left><Left><Left><Esc>i
inoremap `` ``<++><Left><Left><Left><Left><Esc>i
inoremap ** **<++><Left><Left><Left><Left><Esc>i
inoremap <> <><++><Left><Left><Left><Left><Esc>i

"the remapping for JumpForward must use imap, the recursive mode.
imap <Tab> <Plug>IMAP_JumpForward
nmap <leader>ll <C-p>

"\<cr> for Return
"the second argument must be wrapped by double quotes
"macro for code block
call IMAP('CBL', "```\<cr><++>\<cr>```\<cr><++>", 'markdown')

"set 'textwidth' to 79 for filetype markdown
  autocmd FileType markdown setlocal textwidth=79
augroup END
