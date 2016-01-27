" Conf for vundle. Help URL: https://github.com/gmarik/vundle
set nocompatible
filetype off " required

"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

" Plugin list
" required
"Bundle 'gmarik/vundle'

" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'digitaltoad/vim-jade'
"Bundle 'tpope/vim-dispatch'
"Bundle 'derekwyatt/vim-scala'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'a.vim'

filetype plugin indent on " required
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" NOTE: comments after Bundle commands are not allowed.
" End for vundle


version 5.0
set nu
set shiftwidth=4
set tabstop=4
set nowrap
set autoindent
set ruler
set smarttab
set nobackup
set graphic
set magic
set noshowcmd
set nowritebackup
set showmode
set softtabstop=4
set expandtab
set background=dark

filetype plugin indent on

syntax on
  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting.

  " Switch on search pattern highlighting.
  set hlsearch

au BufRead *.pc setf esqlc
au BufNewFile,BufReadPost *.odl source $VIMRUNTIME/syntax/c.vim
au BufNewFile,BufReadPost *.odl set cindent
au BufNewFile,BufReadPost *.c source $VIMRUNTIME/syntax/c.vim
au BufNewFile,BufReadPost *.c set cindent
au BufNewFile,BufReadPost *.ddl source $VIMRUNTIME/syntax/cpp.vim
au BufNewFile,BufReadPost *.ddl set cindent
au BufNewFile,BufReadPost *.cpp,*.cc source $VIMRUNTIME/syntax/cpp.vim
au BufNewFile,BufReadPost *.cpp,*.cc set cindent
au BufNewFile,BufReadPost *.h source $VIMRUNTIME/syntax/cpp.vim
au BufNewFile,BufReadPost *.h set cindent
au BufNewFile,BufReadPost *.tex source $VIMRUNTIME/syntax/tex.vim
au BufNewFile,BufReadPost *.tex set autoindent
au BufNewFile,BufReadPost *.java source $VIMRUNTIME/syntax/java.vim
au BufNewFile,BufReadPost *.java set cindent
au BufNewFile,BufReadPost *.xsjs set cindent syntax=javascript
au BufNewFile,BufReadPost *.html,*.htm source $VIMRUNTIME/syntax/html.vim
au BufNewFile,BufReadPost *.html,*.htm set smartindent
au BufNewFile,BufReadPost *.pc source $VIMRUNTIME/syntax/esqlc.vim
au BufNewFile,BufReadPost *.pc set cindent
au BufNewFile,BufReadPost *.cl set filetype=c
au BufNewFile,BufReadPost *.cl set cindent

"For FuzzyFinder
nnoremap fb :FufBuffer!
nnoremap fm :FufMruFile!
nnoremap ff :FufCoverageFile!

"For gtags
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-\> :GtagsCursor<CR>

"For statusline
set statusline=%f\        "tail of the filename
"set statusline+=%{fugitive#statusline()}     "current branch
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2        "display statusline always

"set foldmethod=syntax
"set foldlevelstart=1

"hi SpecialKey     term=bold  ctermfg=Blue  guifg=Blue
"hi NonText        term=bold  ctermfg=Red gui=bold  guifg=Blue
"hi Directory      term=bold  ctermfg=Blue  guifg=Blue
"hi ErrorMsg       term=standout  ctermfg=White  ctermbg=Red  guifg=Black  guibg=Orange
"hi MoreMsg        term=bold  ctermfg=Green  gui=bold  guifg=SeaGreen
"hi ModeMsg        term=bold  ctermfg=Cyan gui=bold
"hi LineNr         term=underline  ctermfg=Yellow  guifg=Yellow
"hi Question       term=standout  ctermfg=Green  gui=bold  guifg=SeaGreen
"hi Title          term=bold  ctermfg=Blue  gui=bold  guifg=Blue
"hi WarningMsg     term=standout  ctermfg=Red  guifg=Red
"hi Constant       term=underline  ctermfg=Magenta  guifg=#ffa0a0
"hi Special        term=bold  ctermfg=Red  guifg=Orange
"hi Statement      term=bold  ctermfg=Yellow  gui=bold  guifg=#ffff60
"hi PreProc        term=underline  ctermfg=Blue  guifg=#ff80ff
"hi Type           term=underline  ctermfg=Green  guifg=Yellow
"hi Comment        term=bold  ctermfg=Cyan  guifg=#80a0ff
"hi Todo           term=bold  ctermfg=Magenta  ctermbg=Black  guifg=Orange
"hi PreCondit      term=bold  ctermfg=Cyan ctermbg=Black  guifg=Orange

"set dir=~/tmp
