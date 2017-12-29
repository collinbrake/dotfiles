" must install minpac manually:
" https://github.com/k-takata/minpac
" call minpac#update()
" call minpac#clean()
" :messages (can be used to view minpac log)

packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('fatih/vim-go')
"call minpac#add('nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
call minpac#add('pangloss/vim-javascript')
call minpac#add('mxw/vim-jsx')
call minpac#add('sbdchd/neoformat')
call minpac#add('scrooloose/nerdtree')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('fholgado/minibufexpl.vim')
call minpac#add('elmcast/elm-vim')
call minpac#add('stevearc/vim-arduino')
call minpac#add('vim-scripts/indentpython.vim')
call minpac#add('rust-lang/rust.vim')
call minpac#add('vim-syntastic/syntastic')
call minpac#add('majutsushi/tagbar')
call minpac#add('tpope/vim-fugitive')

" autoformatting notes
" using shfmt (go app) for shell formatting

let g:jsx_ext_required = 0

let g:go_fmt_command = "goimports"
let g:go_addtags_transform = 'camelcase'

let g:elm_format_autosave = 1

" let g:neoformat_enabled_c = ['clang']
let g:neoformat_c_clang = {
            \ 'exe': 'clang-format',
            \ 'args': ['--style="{BasedOnStyle: llvm, IndentWidth: 8, UseTab: Always, BreakBeforeBraces: Linux, AllowShortIfStatementsOnASingleLine: false, IndentCaseLabels: false}"'],
            \ 'stdin': 1,
            \ }

let g:neoformat_c_astyle = {
            \ 'exe': 'astyle',
            \ 'args': ['--mode=c', '--style=linux', '--indent=tab'],
            \ 'stdin': 1,
            \ }

autocmd BufWritePre *.js,*.jsx,*.sh Neoformat
autocmd BufRead,BufNewFile *.js,*.jsx set ts=2 sw=2 expandtab
autocmd BufRead,BufNewFile *.elm set ts=4 sw=4 expandtab
autocmd BufRead,BufNewFile *.m set ts=4 sw=4 expandtab
autocmd BufRead,BufNewFile *.yml set ts=2 sw=2 expandtab
autocmd FileType sh set ts=2 sw=2 expandtab nosmartindent autoindent
autocmd BufRead,BufNewFile *.c,*.h set ts=8 sw=8 noexpandtab

au BufNewFile,BufRead *.py set ts=4 softtabstop=4  sw=4 textwidth=79 expandtab  autoindent fileformat=unix

let mapleader=","
nmap <tab> :bn<cr>
nmap <s-tab> :bp<cr>
nmap <leader>b :CtrlPBuffer <cr>
nmap <leader>p :CtrlP <cr>
nmap <leader>f :NERDTreeToggle <cr>

set hlsearch

" tab filename expansion
set wildmode=longest,list,full
set wildmenu

" syntastic
" was installed for rust
" still needs work as it deletes the useful stuff from status line
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

nmap <F8> :TagbarToggle<CR>
hi DiffText cterm=bold ctermbg=11 gui=bold guibg=Red

