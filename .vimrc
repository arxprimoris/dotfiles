" Set color scheme
colorscheme arx
set bg=dark

" Pathogen plugin function to load all plugins in the bundle folder
<<<<<<< HEAD
" call pathogen#infect()
=======
call pathogen#infect()
>>>>>>> ecf73cc0a19bd577aa1259379e57286534bb2bb6
" Automatically re-source .vimrc when it is edited
au! BufWritePost .vimrc source %

" Vim statusline (powerline)
<<<<<<< HEAD
set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim
=======
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
>>>>>>> ecf73cc0a19bd577aa1259379e57286534bb2bb6

" Display line numbers on right side
set number
" Margin after last column
set wrapmargin=4
" Display line and column position in lower right
set ruler
" Allow the mouse to be used
set mouse=a
" Highlight current cursor line
set cursorline
" Sets how many columns used for tab
set tabstop=4
set shiftwidth=4
" Enable status line always
set laststatus=2
" Don't worry about mainting backward compatibility with vi
set nocompatible
" When a tab is closed, remove buffer
set nohidden
" Don't use vim's crazy clipboard naming convention
set clipboard=unnamed
" Setup the column guide on right side
set colorcolumn=100
" Omni completion
set ofu=syntaxcomplete#Complete

" Rebind <Leader> key
let mapleader = ","
" Setup powerline
let g:Powerline_symbols = 'fancy'

" Turn syntax highlighting on
syntax on
" Set 256 terminal colors
set t_Co=256
" Filetype plugins
<<<<<<< HEAD
filetype plugin on
=======
filetype plugin on 
>>>>>>> ecf73cc0a19bd577aa1259379e57286534bb2bb6
filetype indent on

" Close vim if NERDTree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")	| q | endif

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
<<<<<<< HEAD
return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
=======
	return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc 
>>>>>>> ecf73cc0a19bd577aa1259379e57286534bb2bb6
nmap <Leader>h :call <SID>SynStack()<CR>

" Change omnicomplete selection keybindings
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction
inoremap <silent>j <C-R>=OmniPopup('j')<CR>
inoremap <silent>k <C-R>=OmniPopup('k')<CR>

<<<<<<< HEAD
" Stay in visual mode when indenting or unindenting blocks of text
=======
" Stay in visual mode when indenting or unindenting blocks of text 
>>>>>>> ecf73cc0a19bd577aa1259379e57286534bb2bb6
vnoremap < <gv
vnoremap > >gv

" Map <F2> to toggle NERDTree window.
map <F2> :NERDTreeToggle<CR>
" Map <CTL>-s to write the file
map <C-s> :w<CR>
" Bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <C-j> <c-w>j
map <C-k> <c-w>k
map <C-l> <c-w>l
map <C-h> <c-w>h
" Easier moving between tabs
map <Leader>p <esc>:tabprevious<CR>
map <Leader>n <esc>:tabnext<CR>
" Make tab behavior somewhat like it is in other editors
tab sball
set switchbuf=usetab,newtab
