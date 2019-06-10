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
let g:pymode_virtualenv_path='/home/jiazizhou/anaconda2/envs/python36jzz'
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
