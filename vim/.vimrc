" vimrc

" ==========================================================================
" plugins
" ==========================================================================

call plug#begin('~/.vim/plugged') " vim-plug

    " ------------
    " colorschemes
    " ------------
    
    Plug 'mathofprimes/wildgrass'
        let g:wildgrass_dark = 'teal'
        let g:wildgrass_light = 'pear'
        let g:wildgrass_contrast = 'hard'
    
    Plug 'sainnhe/gruvbox-material'

    " ---------
    " languages
    " ---------

    Plug 'JuliaEditorSupport/julia-vim' " julia 

    Plug 'lervag/vimtex' " latex
        if !exists('g:ycm_semantic_triggers') " enable ycm for latex
            let g:ycm_semantic_triggers = {}
        endif
        au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

    " -------
    " general
    " -------

    Plug 'LunarWatcher/auto-pairs' " auto close commas/brackets/etc
    Plug 'tabnine/YouCompleteMe' " ycm w/ tabnine ai
    Plug 'tpope/vim-fugitive' " git branch

call plug#end()

packadd! matchit " jump between opening/closing statements with [ and ]. 
                 " needed to enable this feature for the julia plugin

set textwidth=100


" ==========================================================================
" file browsing
" ==========================================================================

" netrw

let g:netrw_banner = 0
let g:netrw_altv = 1 
let g:netrw_alto = 1 
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4 

" ==========================================================================
" statusline
" ==========================================================================

" statusline

set laststatus=2 " statusline is always shown
set statusline+=\ %y%h 
set statusline+=\ %F%R
set statusline+=\ %{FugitiveStatusline()} " git integration through vim-fugitive
set statusline+=%= " right-justify everything past here
set statusline+=\ col\ %c\ row\ %l\ of\ %L\ | " output 'col x row y of line' 

" ==========================================================================
" Various 
" ==========================================================================

set background=dark
colorscheme wildgrass
filetype plugin indent on 
syntax on

" ==========================================================================
" Options
" ==========================================================================

" everything else is organized as in :options

" ---------
" Important
" ---------

set nocompatible " disable vi compatibility
set noinsertmode " don't use insert mode as default mode



" 2 -- MOVING AROUND, SEARCHING AND PATTERNS --

set startofline " jump commands move cursor to first non-blank char of a line
set cdhome " cd w/o arguments goes to home directory
set autochdir " change to directory of file in buffer 
set incsearch " show match for partly typed search command 
set ignorecase " ignore case when using a search command
set smartcase  " override ignorecase when using a search pattern

" 3 -- TAGS --

" 4 -- DISPLAYING TEXT --

set scroll=5
set number
set relativenumber

" 5 -- SYNTAX, HIGHLIGHTING AND SPELLING --

set hlsearch
set termguicolors
set cursorline 
set cursorcolumn 
set spell 
set spelllang=en_us 

" 6 -- MULTIPLE WINDOWS --

set splitright  

" 7 -- MULTIPLE TAB PAGES --

" 8 -- TERMINAL --

set term=$TERM
set esckeys 
 
" 9 -- USING THE MOUSE --

set mouse=a 

" 10 -- PRINTING --

" 11 -- MESSAGES AND INFO --

set showcmd

" 12 -- SELECTING TEXT --

" 13 -- EDITING TEXT --

" 14 -- TABS AND INDENTING --

set tabstop=4
set shiftwidth=4 
set softtabstop=4
set expandtab
set autoindent 

" 15 -- FOLDING --

" 16 -- DIFF MODE --

" 17 -- MAPPING --

" 18 -- READING AND WRITING FILES --

" 19 -- THE SWAP FILE --

" 20 -- COMMAND LINE EDITING --

set wildmode=list:longest
set wildmenu

" 21 -- EXECUTING EXTERNAL COMMANDS --

" 22 -- RUNNING MAKE AND JUMPING TO ERRORS (QUICKFIX) --

" 23 -- LANGUAGE SPECIFIC --

" 24 -- MULTI-BYTE CHARACTERS --

" 25 -- VARIOUS --

" end of vimrc
