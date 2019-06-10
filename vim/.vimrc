filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


if filereadable(expand("~/.vimrc.bundles"))
	  source ~/.vimrc.bundles
endif

"去掉vi的一致性"
"set nocompatible
""显示行号"
set number
" 隐藏滚动条"    
 set guioptions-=r 
 set guioptions-=L
 set guioptions-=b
 "隐藏顶部标签栏"
 "set showtabline=0
 "设置字体"
 set guifont=Monaco:h13         
 set nowrap  "设置不折行"
 set fileformat=unix "设置以unix的格式保存文件"
 set cindent     "设置C样式的缩进格式"
 set tabstop=4   "设置table长度"
 set shiftwidth=4        "同上"
 set showmatch   "显示匹配的括号"
 set scrolloff=5     "距离顶部和底部5行"
 set laststatus=2    "命令行为两行"
 set fenc=utf-8      "文件编码"
 set backspace=2
 set mouse=a     "启用鼠标"
 "set selection=exclusive
 "set selectmode=mouse,key
 set matchtime=5
 set ignorecase      "忽略大小写"
 set incsearch
 set hlsearch        "高亮搜索项"
 set expandtab     "不允许扩展table"
 set autoindent
 set whichwrap+=<,>,h,l
 set autoread
" set cursorline      "突出显示当前行"
 "set cursorcolumn        "突出显示当前列"


"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
""显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
""窗口大小"
let NERDTreeWinSize=25

let g:pymode_rope=0
let g:pymode_virtualenv_path='/home/jiazizhou/anaconda3/envs/python36jzz'
let g:pymode_rope_completion=0
let g:pymode_options_max_line_length=1000
let g:pymode_options_colorcolumn=0
let g:pymode_indent=0

let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 "

map <silent> <F9> :TlistToggle<cr>

"simple fold
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"solarized theme
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized





"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.

let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 1
"
let g:neocomplcache_enable_quick_match = 1
"" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
        \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
                \ 'scheme' : $HOME.'/.gosh_completions'
                            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
    
    " Recommended key-mappings.
    " " <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
      " For no inserting <CR> key.
    return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
      "   " <TAB>: completion.
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
      "   " <C-h>, <BS>: close popup and delete backword char.
 "inoremap <expr><CR> neocomplete#smart_close_popup()."\<CR>"
 inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
      "   " Close popup by <Space>.
      "   inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
      "
      "   " AutoComplPop like behavior.
      "   "let g:neocomplete#enable_auto_select = 1
      "
      "   " Shell like behavior(not recommended).
      "   "set completeopt+=longest
      "   "let g:neocomplete#enable_auto_select = 1
      "   "let g:neocomplete#disable_auto_complete = 1
      "   inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
      "
      "   " Enable omni completion.
 autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
 autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
 autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
 autocmd FileType python setlocal omnifunc=jedi#completions
 autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"jedi config
let g:neocomplete#enable_auto_select = 0
let g:jedi#popup_select_first=0
set completeopt=longest,menuone
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\)\w*'
      "
      "" Enable heavy omni completion.
    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
        "let g:neocomplete#sources#omni#input_patterns.php = '[^.
        "\t]->\h\w*\|\h\w*::'
        ""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:]*\t]\%(\.\|->\)'
                "let g:neocomplete#sources#omni#input_patterns.cpp =
                "'[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
                "
                "" For perlomni.vim setting.
                " https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl ='\h\w*->\h\w*\|\h\w*::'
