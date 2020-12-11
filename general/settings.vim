" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
  " Recently vim can merge signcolumn and number column into one
set signcolumn=yes
set encoding=utf-8
set fileencoding=utf-8
set ruler
set iskeyword+=-
set mouse=a
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set laststatus=0
set rnu
set cursorline
set showtabline=2
set noshowmode
set nojoinspaces
if !&scrolloff
	set scrolloff=3
endif
if !&sidescrolloff
	set sidescrolloff=5
endif
set nostartofline
highligh ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/
set gdefault


" Relative numbering
function! NumberToggle()
	if(&relativenumber == 1)
		set nornu
		set number
	else
		set rnu
	endif
endfunc
nnoremap <F6> :call NumberToggle()<cr>
