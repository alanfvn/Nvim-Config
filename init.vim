"=============[Plugins]=============
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'

Plug 'ayu-theme/ayu-vim'
Plug 'ntk148v/vim-horizon'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

"=============[General-Config]=============
set number
set relativenumber
set sw=4 "set tab as 4 spaces.
set clipboard=unnamed "allow paste from external sources.
set nowrap "stop line breaking.
set noshowmode
set encoding=utf-8
set matchpairs+=<:>
set nohlsearch
set scrolloff=8
let mapleader="\<Space>"
"=============[Themes]=============
set termguicolors
let ayucolor='mirage'
colorscheme ayu 

"=============[PluginConfig]=============

"********(LightLine)********
let g:lightline = {'colorscheme' : 'ayu'}

"********(NERDTRee)********

let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

"********(COC)********
let g:coc_global_extensions = [ 'coc-tsserver' ]

nmap <leader>rn <Plug>(coc-rename)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"=============[Functions]=============

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
