filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


if filereadable(expand("~/.config/nvim/init.vim.bundles"))
	  source ~/.config/nvim/init.vim.bundles
endif

"let mapleader = "`"
"let g:mapleader = "`"

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
 set virtualedit=onemore
 set guicursor=a:ver1
" set cursorline      "突出显示当前行"
 "set cursorcolumn        "突出显示当前列"
 "
 
 "F2开启和关闭树"
map <silent> <F2> :NERDTreeTabsToggle<CR>
let NERDTreeChDirMode=1
""显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
""窗口大小"
let NERDTreeWinSize=25
let g:nerdtree_tabs_autoclose=1
"let g:nerdtree_tabs_open_on_console_startup=1


"let NE0RDTreeMapJumpPrevSibling='<C-l>'

"let g:pymode_rope=0
"let g:pymode_virtualenv_path='/home/jiazizhou/anaconda3/envs/python36jzz'
"let g:pymode_rope_completion=0
"let g:pymode_options_max_line_length=1000
"let g:pymode_options_colorcolumn=0
"let g:pymode_indent=0
"let g:pymode_doc=0

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
"set termguicolors
set background=dark
let g:onedark_termcolors=16
"let g:solarized_termcolors=256
"colorscheme solarized
"let g:onedark_terminal_italics=1
colorscheme onedark

  if (has("termguicolors"))
    set termguicolors
  endif

let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

"buffer switch mapping
nnoremap <silent> <C-Left> <C-w><C-h>
nnoremap <silent> <C-Right> <C-w><C-l>
nnoremap <silent> <C-Down> <C-w><C-j>
nnoremap <silent> <C-Up> <C-w><C-k>
inoremap <silent> <C-Left> <ESC><C-w><C-h>i
inoremap <silent> <C-Right> <ESC><C-w><C-l>i
inoremap <silent> <C-Down> <ESC><C-w><C-j>i
inoremap <silent> <C-Up> <ESC><C-w><C-k>i

"tab switch mapping
inoremap <silent> <M-Left> <ESC>:tabp<CR>i
inoremap <silent> <M-Right> <ESC>:tabn<CR>i
inoremap <silent> <A-Tab> <ESC>:tabn<CR>i
nnoremap <silent> <M-Left> :tabp<CR>
nnoremap <silent> <M-Right>  :tabn<CR>
nnoremap <silent> <A-Tab>  :tabn<CR>

"copy paste mapping
vnoremap <silent> <C-c> "+y
snoremap <silent> <C-c> <C-g>"+yi
vnoremap <silent> <C-x> "+d
snoremap <silent> <C-x> <C-g>"+di
nnoremap <silent> <C-v> "+gp
inoremap <silent> <C-v> <ESC>"+gpi
snoremap <silent> <C-v> <C-g>"_d"+gpi

"remap <C-z>
nnoremap <silent> <C-r> <C-z>
inoremap <silent> <C-r> <C-o><c-z>

"undo and redo
nnoremap <silent> <C-z> u
inoremap <silent> <C-z> <C-o>u
nnoremap <silent> <C-y> <C-r>
inoremap <silent> <C-y> <C-o><C-r>

"save file and close mapping
inoremap   <silent> <C-f>   <ESC>:w<CR>
nnoremap   <silent> <C-f>   :w<CR>
inoremap   <silent> <C-q>   <ESC>:q<CR>
nmap   <expr> <silent> <C-q>   (bufname('%')=~"NERD_tree")? '<F2>' : ':q<CR>'


"roll mapping
"roll one page
noremap <silent> <C-j> <C-f>
noremap <silent> <C-k> <C-b>
inoremap <silent> <C-j> <C-o><C-f>
inoremap <silent> <C-k> <C-o><C-b>
"roll half page
noremap <silent> <M-j> <C-d>
noremap <silent> <M-k> <C-u>
inoremap <silent> <M-j> <C-o><C-d>
inoremap <silent> <M-k> <C-o><C-u>
"roll one line
noremap <silent> j jzz
noremap <silent> k kzz


"Visual mode mapping
vnoremap <silent> <C-d> <ESC>
inoremap <silent> <C-d> <ESC><S-V>
nnoremap <silent> <C-d> <S-V>
snoremap <silent> <C-d> <ESC><S-V>
vnoremap <silent> <A-d> <ESC>
inoremap <silent> <A-d> <ESC>v
nnoremap <silent> <A-d> v
snoremap <silent> <A-d> <ESC>v
"vnoremap <silent> <C-q> <ESC>`^<C-v>

"insert mode mapping
nnoremap <silent> <C-a> i
vnoremap <silent> <C-a> <ESC>i
inoremap <silent> <C-a> <ESC>

"select mode mapping
nnoremap <silent> <C-s> v<C-g>
inoremap <silent> <C-s> <ESC>v<C-g>
vnoremap <silent> <C-s> <C-g>
snoremap <silent> <C-s> <ESC>i
"rewrite BackSpace
snoremap <silent> <BackSpace> <BackSpace>i

"search the work
inoremap <silent> <C-p> <ESC>:CocList files<CR>
nnoremap <silent> <C-p> :CocList files<CR>
inoremap <silent> <M-p> <ESC>:CocList words<CR>
nnoremap <silent> <M-p> :CocList words<CR>

nmap <C-l> <plug>NERDCommenterToggle
imap <C-l> <ESC><plug>NERDCommenterToggle i
vmap <C-l> <plug>NERDCommenterToggle

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
"let g:airline_theme="onedark"

set updatetime=300

