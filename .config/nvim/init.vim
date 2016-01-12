if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

 " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

" Neobundle
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv.git'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'othree/html5.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'bling/vim-airline'

call neobundle#end()

 " Required:
filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
NeoBundleCheck

" colorsss
colorscheme base16-ocean
set background=dark

"""""
" END OF NEO BUNDLE
"""""

" Show programming syntax
syntax on

" Show lines 
set number

" config to soft tab
set softtabstop=2 shiftwidth=2 expandtab

" Set outside file
set autoread

"Copy indent from current line when starting a new line
set autoindent 
"when we autoindent, backspace will delete the entire tab width, not just individual spaces
set smarttab 
set smartindent


" Always show status 
set laststatus=2

"searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Remap arrow keys
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
" Remap arrow keys for insert mode
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
" Remap arrow keys for visual mode
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>

" Nerdtree
let g:nerdtree_tabs_open_on_gui_startup=0
nmap ,n :NERDTreeToggle<CR>
nmap ,m :NERDTreeFind<CR>

let g:vim_markdown_folding_disabled=1

let g:ctrlp_custom_ignore = {
      \  'dir' : '(node_modules|virtualenv)'
      \}

" Spell Check toggle
"let g:myLangList=["nospell","en_gb"]
"function! ToggleSpell()
"  if !exists( "b:myLang" )
"    if &spell
"      let b:myLang=index(g:myLangList, &spelllang)
"    else
"      let b:myLang=0
"    endif
"  endif
"  let b:myLang=b:myLang+1
"  if b:myLang>=len(g:myLangList) | let b:myLang=0 | endif
"  if b:myLang==0
"    setlocal nospell
"  else
"    execute "setlocal spell spelllang=".get(g:myLangList, b:myLang)
"  endif
"  echo "spell checking language:" g:myLangList[b:myLang]
"endfunction
"command! ToggleSpell call ToggleSpell()
"nmap <silent> <F8> :call ToggleSpell()<CR>
"
""Spell suggestion under cursor
"nnoremap <silent><F2> :cal SpellSuggest()<CR>
"function! SpellSuggest()
"  let s = substitute(system("echo ".expand("<cword>")." | aspell -a -W2 | grep '^&'"), "^.*:\\s\\(.*\\)\\n", "\\1,", "")
"  if s != ""
"    let slength = strlen(s)
"    let end = 0
"    let i = 0
"    while end != slength
"      let i = i + 1
"      let w = matchstr(s, "^\\%(.\\{-}\\zs[^ ,]\\+\\ze,\\)\\{".i."}")
"      echon "(".i.")".w." "
"      let end = matchend(s, w.",")
"    endwhile
"    echo ""
"    let c = input("Replace with: ")
"    if c =~ "^[1-9]\\d*$" && c > 0 && c <= i
"      execute "normal! ciw".matchstr(s, "^\\%(.\\{-}\\zs[^ ,]\\+\\ze,\\)\\{".c."}")
"    endif
"  else
"    echo "No suggestions"
"  endif
"endfunction
"command! SpellSuggest call SpellSuggest()
