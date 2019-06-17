filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


if filereadable(expand("~/.config/nvim/init.vim.bundles"))
	  source ~/.config/nvim/init.vim.bundles
endif

let mapleader = "`"
let g:mapleader = "`"

"去掉vi的一致性"
set nocompatible
""显示行号"
set number
" 隐藏滚动条"    
 set guioptions-=r 
 set guioptions-=L
 set guioptions-=b
 "隐藏顶部标签栏"
 "set showtabline=0
 "设置字体"
 set nowrap  "设置不折行"
 set fileformat=unix "设置以unix的格式保存文件"
 "set cindent     "设置C样式的缩进格式"
 set tabstop=4   "设置table长度"
 set shiftwidth=4        "同上"
 set showmatch   "显示匹配的括号"
 set scrolloff=5     "距离顶部和底部5行"
 set laststatus=2    "命令行为两行"
 set fenc=utf-8      "文件编码"
 set backspace=2
 set mouse=a     "启用鼠标"
 set selection=exclusive
 set selectmode=mouse,key
 set clipboard+=unnamed
 set matchtime=5
 set ignorecase      "忽略大小写"
 set incsearch
 set hlsearch        "高亮搜索项"
 set expandtab     "不允许扩展table"
 set autoindent
 set smartindent
 set whichwrap+=<,>,h,l
 set autoread
 set noerrorbells

" set cursorline      "突出显示当前行"
 "set cursorcolumn        "突出显示当前列"
 "
 
 "F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
""显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
""窗口大小"
let NERDTreeWinSize=25

"let NERDTreeMapJumpNextSibling='<C-h>'

"let NERDTreeMapJumpPrevSibling='<C-l>'

let g:pymode_rope=0
let g:pymode_virtualenv_path='/home/jiazizhou/anaconda3/envs/python36jzz'
let g:pymode_rope_completion=0
let g:pymode_options_max_line_length=1000
let g:pymode_options_colorcolumn=0
let g:pymode_indent=0
lef g:pymode_lint=0

let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 "

map <silent> <F9> :TlistToggle<cr>

map <silent> <F6> :Autopep8<cr>

"simple fold
set foldmethod=indent
set foldlevel=99

"solarized theme
syntax enable
"set t_Co=256
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
let g:onedark_terminal_italics=1
colorscheme onedark

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"nnoremap <silent> <C-h> <C-w><C-h>
"nnoremap <silent> <C-l> <C-w><C-l>
"nnoremap <silent> <C-j> <C-w><C-j>
"nnoremap <silent> <C-k> <C-w><C-k>
"inoremap <silent> <C-h> <ESC><C-w><C-h>i
"inoremap <silent> <C-l> <ESC><C-w><C-l>i
"inoremap <silent> <C-j> <ESC><C-w><C-j>i
"inoremap <silent> <C-k> <ESC><C-w><C-k>i

nnoremap <silent> <C-Left> <C-w><C-h>
nnoremap <silent> <C-Right> <C-w><C-l>
nnoremap <silent> <C-Down> <C-w><C-j>
nnoremap <silent> <C-Up> <C-w><C-k>
inoremap <silent> <C-Left> <ESC><C-w><C-h>i
inoremap <silent> <C-Right> <ESC><C-w><C-l>i
inoremap <silent> <C-Down> <ESC><C-w><C-j>i
inoremap <silent> <C-Up> <ESC><C-w><C-k>i

inoremap <silent> <M-Left> <ESC>:tabp<CR>i
inoremap <silent> <M-Right> <ESC>:tabn<CR>i
nnoremap <silent> <M-Left> :tabp<CR>
nnoremap <silent> <M-Right>  :tabn<CR>

vnoremap <silent> <C-c> y
vnoremap <silent> <C-x> d
nnoremap <silent> <C-v> p
nnoremap <silent> <C-z> u
inoremap <silent> <C-z> <ESC>ui
vnoremap <silent> <C-z> <ESC>

vnoremap <silent> <C-a> <ESC>
inoremap <silent> <C-a> <ESC><S-V>i
nnoremap <silent> <C-a> <S-V>
"vnoremap <silent> <M-a> <ESC>
"inoremap <silent> <M-a> <ESC><v>i
"nnoremap <silent> <M-a> <v>
"
nnoremap <silent> <C-d> i
vnoremap <silent> <C-d> <ESC>i
inoremap <silent> <C-d> <ESC>

inoremap   <silent> <C-S>   <ESC>:w<CR>
nnoremap   <silent> <C-S>   :w<CR>
inoremap   <silent> <C-Q>   <ESC>:q<CR>
nnoremap   <silent> <C-Q>   :q<CR>

nnoremap j jzz
nnoremap k kzz
nmap <C-l> <plug>NERDCommenterToggle
imap <C-l> <ESC><plug>NERDCommenterToggle i
vmap <C-l> <plug>NERDCommenterToggle

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
"let g:airline_theme="onedark"

map <silent> <A-g> <Plug>(coc-definition)

