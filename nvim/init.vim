let mapleader=","

let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='solarized light'

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'landaire/deoplete-d'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'jceb/vim-orgmode'
Plug 'Yggdroot/indentLine'
" Plug 'vim-scripts/Conque-GDB'
call plug#end()

set number
set mouse=a

let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

syntax enable

" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
filetype plugin on
" " OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: This enables code folding
" set foldenable " Turn on folding
" set foldmethod=syntax
" set foldcolumn=2 " Give 1 column for fold markers

" COLORS
" vim colors solarized
" set background=light
" set background=dark
" let g:solarized_diffmode="high"
" colorscheme solarized

" load old vim configurations
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

" custom keyboard mappings
" ========================
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>c        :Commits<CR>
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>l        :Lines<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <Leader>` :Marks<CR>

nnoremap <Leader>t :tabnew<CR>
nmap <F8> :NERDTreeToggle<CR>
nmap <F9> :TagbarToggle<CR>

noremap <f11> i/<esc>80A*<Esc>d80\|o<esc>o<bs><tab>
inoremap <f11> /<Esc>80A*<Esc>d80\|o<esc>o<bs><tab>
noremap <f12> 80A*<Esc>d80\|r/o<esc>o
inoremap <f12> i<esc>x80A*<Esc>d80\|r/o<esc>o

" code completion
" ===============
" let g:deoplete#enable_at_startup = 1
" set completeopt-=preview

" autocmd FileType tex setlocal spell spelllang=de,en_us
" autocmd FileType tex setlocal spell spelllang=de
" set spellfile=~/.vim/spell/en.utf-8.add

" set spell
" autocmd FileType d set spell!

let g:NERDSpaceDelims = 1

autocmd FileType d set colorcolumn=121
highlight ColorColumn ctermbg=magenta
" autocmd FileType d call matchadd('ColorColumn', '\%81v', 100)

" set the python path
" let g:python_host_prog = '/usr/bin/python2.7'
" let g:python3_host_prog = '/usr/bin/python3.6'

" Number of spaces to use for each step of (auto)indent.  Used for |'cindent'|, |>>|, |<<|, etc.
" set shiftwidth=8
set sts=0 sw=4 ts=4
autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType d :setl cinoptions=(0,u0,U0
" autocmd FileType d set et
set et

" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
filetype plugin on
" " OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: This enables code folding
" set foldenable " Turn on folding
" set foldmethod=syntax
" set foldcolumn=1 " Give 1 column for fold markers

" tagbar
" ======
" support for dscanner in tagbar
let g:tagbar_type_d = {
            \ 'ctagstype' : 'd',
            \ 'kinds'     : [
            \ 'c:classes:1:1',
            \ 'f:functions:1:1',
            \ 'T:template:1:1',
            \ 'g:enums:1:1',
            \ 'e:enumerators:0:0',
            \ 'u:unions:1:1',
            \ 's:structs:1:1',
            \ 'v:variables:1:0',
            \ 'i:interfaces:1:1',
            \ 'm:members',
            \ 'a:alias'
            \ ],
            \'sro': '.',
            \ 'kind2scope' : {
            \ 'c' : 'class',
            \ 'g' : 'enum',
            \ 's' : 'struct',
            \ 'u' : 'union',
            \ 'T' : 'template'
            \},
            \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u',
            \ 'template'  : 'T'
            \ },
            \ 'ctagsbin' : 'dscanner',
            \ 'ctagsargs' : ['--ctags']
            \ }

" simulate ESC in terminal mode
:tnoremap <Esc> <C-\><C-n>

if has("autocmd")
    au FileType org let maplocalleader="\\"
endif
