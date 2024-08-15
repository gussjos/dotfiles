syntax on
set number relativenumber

call plug#begin('~/.vim/plugged')

Plug 'shaunsingh/moonlight.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree'  " file list
Plug 'duane9/nvim-rg'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' } " color scheme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " color scheme
Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
"Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }

call plug#end()
set encoding=UTF-8

if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
"let g:material_terminal_italics = 1
""let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
"let g:material_theme_style = 'default'
"colorscheme tokyonight-storm
" colorscheme material-theme
"colorscheme moonlight

let g:python_highlight_all = 1

" Quick window switching
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Changing default NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

nnoremap <C-t> :NERDTreeToggle<CR>
" Highlight currently open buffer in NERDTree
"
" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-tsserver',
  \ ]

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Find files using Telescope command-line sugar.
nnoremap <leader>fe <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

noremap <silent> <C-b-k> :vertical resize +1<CR>
noremap <silent> <C-b-j> :vertical resize -1<CR>
noremap <silent> <C-b-h> :horizontal resize +1<CR>
noremap <silent> <C-b-j> :horizontal resize -1<CR>

" Yank to register and unnamedplus (clipboard)
set clipboard+=unnamedplus
nnoremap <leader>y y+"
vnoremap <leader>y y+"

" Enable autocompletion
set completeopt=menuone

" Use Tab to select the first autocomplete suggestion
inoremap <expr> <Tab> pumvisible() ? "\<C-y>\<C-n>" : "\<Tab>"

" Use Ctrl+J and Ctrl+K to navigate the list of suggestions
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

