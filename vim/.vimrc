" My vim file

" {{{ Basic Settings

" Prefered color scheme
colorscheme murphy

" Blocking the old blockers
set nocompatible

" Enable syntax and pluggins
syntax enable
filetype plugin on

" FINDING FILES:

" Search down into subfolders
" Provide tab completion for all file related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" }}}

" {{{ Customization 

" {{{ TAG JUMPING:

" command to create the tags file, ctags should be installed
command! MakeTags !ctags -R .

" WITH THE ABOVE WE CAN: [^ means controll]
" - Use ^] to jump to tag under the curser
" - Use g^] for ambiguous tags, will provide a list to select from
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't helps if we need visual list of tags

" }}}

" {{{ FILE BROWSING:
" Browsing tweaks
let g:netrw_banner=0		" disable the annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1		" open splits in the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\s\+'

" NOW WE CAN:
" - :edit to open the file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
" }}} 

" {{{ SNIPPETS AND MAPPING:
" Define the snippet in a folder, then
" The below part will be active when we press ,html in normal mode. 
" nnoremap => normal mode, no remap for ,html keyword
" Followed by the action it is gonna trigger
" read will read the file from the location, and put it into the current
" buffer
" -1 is used to move the cursor to top
" the strings at the end is to automate return key(carrige return) and move
" the cursor to the point at which we need to start editing
" nnoremap ,html :-1read $HOME/skeleton.html<CR>3jwf>a

" !Add rest of the snippets below this line

" }}} 

" {{{ BUILD INTEGRATION:
" Needs to use pluggins
" }}}

" }}}


" {{{ PLUGINS

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
"
"

call plug#begin('~/.vim/plugged')

" {{{ NERDTREE
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" }}}

" {{{ Git
Plug 'https://github.com/tpope/vim-fugitive.git'
" }}}


call plug#end()
" }}}
