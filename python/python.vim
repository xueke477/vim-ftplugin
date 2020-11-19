inoremap '' ''<++><Left><Left><Left><Left><Esc>i
inoremap () ()<++><Left><Left><Left><Left><Esc>i
inoremap [] []<++><Left><Left><Left><Left><Esc>i
inoremap {} {}<++><Left><Left><Left><Left><Esc>i
"the remapping for JumpForward must use imap, the recursive mode.
imap <Tab> <Plug>IMAP_JumpForward

"Implementation of one-line macros via IMAP()
call IMAP('NPA', 'np.array(<++>)<++>', 'python')
call IMAP('IDM', "np.eye(<++>, dtype='int64')<++>", 'python')
call IMAP('ZER', "np.zeros(<++>, dtype='int64')<++>", 'python')

"Implementation of macros via vim-macrobatics
"This method has no limit on the number of macros recorded.
"normal mode after macro
inoremap DOC """<Esc>:call macrobatics#playNamedMacro('python.DOC')<cr>
inoremap OLN """<Esc>:call macrobatics#playNamedMacro('python.OLN')<cr>
"the macro for aligning copy-pasted codes
nnoremap <leader><Space> :call macrobatics#playNamedMacro('python.ALI')<cr>

"Implementation of macros via the Vim built-in functionality
"There can be at most 26 macros at any given time.
"insert mode after macro
"macro @z records operations the same as for DOC above
"inoremap DOC """<Esc>@za
"macro @y records operations the same as for OLN above
"inoremap OLN """<Esc>@ya
"
"set color column
highlight ColorColumn ctermbg=gray
set colorcolumn=80
