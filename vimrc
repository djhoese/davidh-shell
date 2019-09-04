" tabs are 4 spaces
set tabstop=4
" replaces tabs with spaces
set expandtab
" make backspace work like most other apps
set backspace=2
" line numbers on the side
"set number
" syntax highlighting
syntax on
set background=dark
"colorscheme ir_black
"colorscheme solarized

" filetype detection
filetype on
filetype plugin indent on
" move 4 spaces when using << or >> to indent text
set shiftwidth=4
" shift with >> or << moves to the next multiple of shiftwidth
set shiftround
" backspace will know to go back 4 spaces instead of 1 at a time
set softtabstop=4
set autoindent
set visualbell
set ruler
set incsearch
set hlsearch

" tabs (multiple pages)
" always show the tab bar
set showtabline=2

" setting up folding
set fdm=syntax
set foldlevel=100
" show the folds (gets ugly)
"set foldcolumn=0
"set foldcolumn=3
" map space to open/close fold
nnoremap <space> za
" map F8 to stop all autoindenting
nnoremap <F8> :setl noai nocin nosi inde=<CR>

" Better python indenting
vnoremap < <gv
vnoremap > >gv

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" CSV helper
" Highlight a column in csv text.
" :Csv 1    " highlight first column
" :Csv 12   " highlight twelfth column
" :Csv 0    " switch off highlight
function! CSVH(colnr)
  if a:colnr > 1
    let n = a:colnr - 1
    execute 'match Keyword /^\([^,]*,\)\{'.n.'}\zs[^,]*/'
    execute 'normal! 0'.n.'f,'
  elseif a:colnr == 1
    match Keyword /^[^,]*/
    normal! 0
  else
    match
  endif
endfunction
command! -nargs=1 Csv :call CSVH(<args>)"

