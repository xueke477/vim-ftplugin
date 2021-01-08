" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
"set sw=2
set sw=0

"set the max length of each line
"set textwidth=172

"set a colorcolumn at length 172
"set colorcolumn=172

"set auto-indentation
"set pastetoggle=<F9>

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

"enable Alt Key Macros
set winaltkeys=no

"reset Alt Key Macros
"all of the Alt Keys need to be reset by
"http://vim-latex.sourceforge.net/documentation/latex-suite/latex-suite-maps.html#remapping-latex-suite-keys, since the Alt/Option key doesn't work well on Macbook.



"this way we can define more hotkeys in the C-<key> fashion
"imap <C-B> <left>\mathbb{<right>}
"imap <C-c> <Plug>Tex_MathCal
"imap <C-l> <Plug>Tex_LeftRight
"imap <C-i> <Plug>Tex_InsertItemOnThisLine
"imap <C-B> <Plug>Tex_MathBF

"in this way we can create capital-letters macros
"call IMAP('NOMA', '\nomenclature{<++>}<++>', 'tex')

"below is a better way for math fonts
call IMAP('MC', '\mathcal{<++>}<++>', 'tex')
call IMAP('MB', '\mathbb{<++>}<++>', 'tex')
call IMAP('MF', '\mathfrak{<++>}<++>', 'tex')
call IMAP('MS', '\mathscr{<++>}<++>', 'tex')
call IMAP('MV', '\mathbf{<++>}<++>', 'tex')

"or another way as below
"call IMAP('bbG', '\mathbb{G}<++>', 'tex')

"--------------------------------------------------------------"
"here are my personal hotkeys 
call IMAP('ON', '\operatorname{<++>}<++>', 'tex')
call IMAP('>>', '\longrightarrow <++>', 'tex')
call IMAP('ABS', '|<++>|<++>', 'tex')
call IMAP('LDT', '<++>, \ldots, <++>', 'tex')
call IMAP('DEF', '\stackrel{\textup{\tiny def}}{=} <++>', 'tex')
call IMAP('SET', '\{\ <++>\  | \  <++> \  \}<++>', 'tex')
call IMAP('SST', '\{<++>\}<++>', 'tex')
call IMAP('RTL','Lemma \ref{<++>}<++>','tex')
call IMAP('RTC','Corollary \ref{<++>}<++>','tex')
call IMAP('RTP','Proposition \ref{<++>}<++>','tex')
call IMAP('RTT','Theorem \ref{<++>}<++>','tex')
"temporary call hotkeys; for Thesis
"call IMAP('CST', '\dot{<++>}<++>(L \cap B)<++>', 'tex')
call IMAP('HIF', '\pi_{I}^{-1}(N)<++>', 'tex')
call IMAP('GM', '\mathbb{C}^{\times}<++>', 'tex')
"call IMAP('DD', '\dot{<++>}<++>', 'tex')
call IMAP('DC', '\dot{<++>} \cdot <++>', 'tex')
call IMAP('POB', '\pi_{I}^{-1}(N) \cap \mathcal{O}_{<++>}<++>', 'tex')
"call IMAP('PTP', 'P(N, <++>, <++>)<++>', 'tex')
"call IMAP('LTP', 'L(N, <++>, <++>)<++>', 'tex')
call IMAP('ROO', '<++>\beta+<++>\alpha<++>', 'tex')
"call IMAP('ROB', '<++>\alpha_{<++>}+<++>\alpha_{<++>} <++>', 'tex')
"call IMAP('ROC', '<++>\alpha_{<++>}+<++>\alpha_{<++>}+<++>\alpha_{<++>} <++>', 'tex')
"call IMAP('ROD', '<++>\alpha_{<++>}+<++>\alpha_{<++>}+<++>\alpha_{<++>}+<++>\alpha_{<++>} <++>', 'tex')
call IMAP('SV', '\overline{X_{<++>}}<++>', 'tex')
"call IMAP('UP', '\mathfrak{u}_P^{\ge 2}<++>', 'tex')
"call IMAP('PFM', 'R\pi_{M*}\underline{\mathbb{C}}<++>', 'tex')
"call IMAP('PFI', 'R\pi_{I*}\underline{\mathbb{C}}<++>', 'tex')
"call IMAP('QTP', '(L, L \cap B, \mathfrak{g}(2), U, N)<++>', 'tex')
"call IMAP('WCT', '\mathbb{C} \times <++>', 'tex')
"call IMAP('WTC', '\times \mathbb{C} <++>', 'tex')
"call IMAP('WIT', '\{ \infty \} \times <++>', 'tex')
"call IMAP('WTI', '\times \{ \infty \} <++>', 'tex')
"call IMAP('PHU', '\Phi(U)=\Phi(\mathfrak{g}(2)) \setminus \{ <++> \} <++>', 'tex')
call IMAP('SPL', "%--------------------------------------------------------------------------------------------------\<CR><++>", 'tex')  "note the double quotation marks
"call IMAP('SPC', '\hspace{0.4cm} $\emptyset $ \hspace{0.4cm}<++>', 'tex')
"call IMAP('PRA', 'x_{\alpha_2}(z_1) \dot{s}_2 <++>','tex')
"call IMAP('PRB', 'x_{\alpha_4}(z_2) \dot{s}_4 <++>','tex')
"call IMAP('PRC', 'x_{\alpha_6}(z_3) \dot{s}_6 <++>','tex')
"call IMAP('CPA', '\dot{s}_2 \cdot x_{\alpha_2}(-z_1) \cdot <++>','tex')
"call IMAP('CPB', '\dot{s}_4 \cdot x_{\alpha_4}(-z_2) \cdot <++>','tex')
"call IMAP('CPC', '\dot{s}_6 \cdot x_{\alpha_6}(-z_3) \cdot <++>','tex')
call IMAP('ICG', '\operatorname{IC}(\overline{\mathfrak{g}^{rs}}, <++>)<++>','tex')
call IMAP('ICN', '\operatorname{IC}(<++>, <++>)<++>','tex')
call IMAP('RPM', 'R\pi_{M*}\underline{\mathbb{C}}[<++>]<++>','tex')
call IMAP('RPI', 'R\pi_{I*}\underline{\mathbb{C}}[<++>]<++>','tex')
call IMAP('FMI', 'F(R\pi_{M*}\underline{\mathbb{C}}[d])=R\pi_{I*}\underline{\mathbb{C}}[d^{\vee}]<++>','tex')
call IMAP('MPM', '\pi_M: G \times^B M \longrightarrow \mathfrak{g}<++>','tex')
call IMAP('MPI', '\pi_I: G \times^B I \longrightarrow \mathfrak{g}<++>','tex')
call IMAP('HSB', '\operatorname{Hess}(M, y)<++>','tex')
call IMAP('DD', 'd^{\vee}<++>','tex')
call IMAP('DMC', '\operatorname{dim}_{\mathbb{C}}<++>','tex')
call IMAP('CSC', '\underline{\mathbb{C}}<++>','tex')
call IMAP('PP', '\pause<++>','tex')
call IMAP('BLL', '$\bullet$<++>','tex')
call IMAP('YAN', '201<++>\#<++>','tex')
call IMAP('VOL', 'volume~\underline{<++>}, no. <++>, (pp.\ <++>-<++>).','tex')

"note the double-quotation" in the second argument, \<CR> as
"enter and the double-backslash in \\begin{} 
call IMAP('ALI', "\<ESC>:TMacro\<CR>aligned\<CR>i", 'tex')
call IMAP('TIK', "\<ESC>:TMacro\<CR>tikz\<CR>i",'tex')
call IMAP('ABR', "\<ESC>:TMacro\<CR>anglebracket\<CR>i",'tex')
call IMAP('XYP', "\<ESC>:TMacro\<CR>xypic\<CR>i",'tex')
call IMAP('TBI', "\<ESC>:TMacro\<CR>tobeinserted\<CR>i",'tex')
call IMAP('FLA', "\<ESC>:TMacro\<CR>flalign\<CR>i",'tex')
"temporary macros; for Thesis
"call IMAP('IDL', "\<ESC>:TMacro\<CR>ideal\<CR>i", 'tex')
"call IMAP('THT', "\<ESC>:TMacro\<CR>thesis_table\<CR>i", 'tex')
"call IMAP('EQT', "\<ESC>:TMacro\<CR>equation\<CR>i", 'tex')


"--------------------------------------------------------------"

"reset jumping; seems this must be at the end
imap <Tab> <Plug>IMAP_JumpForward
