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
nmap <leader>ll :silent! call Vim_Markdown_Preview_myown()<CR>
nmap <leader>lv :call Vim_Markdown_Render_myown()<CR>


function! Vim_Markdown_Preview_myown()
  let b:curr_file = expand('%:p')
  call system('perl ~/my_scripts/Markdown.pl "' . b:curr_file . '" > /Users/xueke/Dropbox/html/myown-markdown.html')
  let title = 'preview'
  let date = 'today'
  execute '!python3 /Users/xueke/my_scripts/render_github_markdown.py ' . title . ' ' . date
  call system('open -a Safari /Users/xueke/Dropbox/html/' . date . '_' . title . '.html')
endfunction

function! Vim_Markdown_Render_myown()
  let b:curr_file = expand('%:p')
  call system('perl ~/my_scripts/Markdown.pl "' . b:curr_file . '" > /tmp/myown-markdown-preview.html')
  let title = input('Enter title: ')
  let date = input('Enter date as MMDDYYYY: ')
  execute '!python3 /Users/xueke/my_scripts/render_github_markdown.py ' . title . ' ' . date
  call system('open -a Safari /Users/xueke/Dropbox/html/' . date . '_' . title . '.html')
endfunction


"\<cr> for Return
"the second argument must be wrapped by double quotes
"macro for code block
call IMAP('CBL', "```\<cr><++>\<cr>```\<cr><++>", 'markdown')
