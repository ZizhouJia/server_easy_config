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
 set updatetime=300
 
 "set cursorcolumn        "突出显示当前列"
 "
 
 "F2开启和关闭树"
nmap <silent> <F2> :NERDTreeTabsToggle<CR>
let NERDTreeChDirMode=1
""显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
""窗口大小"
let NERDTreeWinSize=25
let g:nerdtree_tabs_autoclose=1

let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 "

map <silent> <F9> :TlistToggle<cr>

map <silent> <F6> :Autopep8<cr>

"simple fold
set foldmethod=indent
set foldlevel=99

"theme
syntax enable
if (has("termguicolors"))
    set termguicolors
endif
if &term=~# '^screen'
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
end
let g:onedark_terminal_italics=1
colorscheme onedark


"airline setting
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme="onedark"

"Cursor setting
highlight Cursor guifg=blue
highlight iCursor guifg=blue
set guicursor=a:ver25-Cursor
set guicursor+=a:blinkon1
set cursorline

"Cursor function
let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

"buffer switch mapping
nnoremap <silent> <C-Left> <C-w><C-h>
nnoremap <silent> <C-Right> <C-w><C-l>
nnoremap <silent> <C-Down> <C-w><C-j>
nnoremap <silent> <C-Up> <C-w><C-k>
inoremap <silent> <C-Left> <C-o><C-w><C-h>
inoremap <silent> <C-Right> <C-o><C-w><C-l>
inoremap <silent> <C-Down> <C-o><C-w><C-j>
inoremap <silent> <C-Up> <C-o><C-w><C-k>

"tab switch mapping
inoremap <silent> <M-Left> <C-o>:tabp<CR>
inoremap <silent> <M-Right> <C-o>:tabn<CR>
nnoremap <silent> <M-Left> :tabp<CR>
nnoremap <silent> <M-Right>  :tabn<CR>


"copy paste mapping
vnoremap <silent> <C-c> "+y
snoremap <silent> <C-c> <C-g>"+yi
vnoremap <silent> <C-x> "+d
snoremap <silent> <C-x> <C-g>"+di
nnoremap <silent> <C-v> "+gp
inoremap <silent> <C-v> <C-r>+
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
snoremap   <silent> <C-f>   <ESC>:w<CR>
nnoremap   <silent> <C-f>   :w<CR>
inoremap   <silent> <C-q>   <C-o>:q<CR>

nmap   <expr> <silent> <C-q>   (bufname('%')=~"NERD_tree")? '<F2>' : ':q<CR>'


"roll mapping
"inoremap <silent> <M-j> <Left>
"inoremap <silent> <M-k> <Down>
"inoremap <silent> <M-i> <Up>
"inoremap <silent> <M-l> <Right>
"inoremap <silent> <M-o> <End>
"inoremap <silent> <M-N> <C-M>
"nnoremap <silent> <M-j> <Left>
"nnoremap <silent> <M-k> <Down>
"nnoremap <silent> <M-i> <Up>
"nnoremap <silent> <M-l> <Right>
"nnoremap <silent> <M-o> $<Right>
"snoremap <silent> <M-j> <Left>
"snoremap <silent> <M-k> <Down>
"snoremap <silent> <M-i> <Up>
"snoremap <silent> <M-l> <Right>
"snoremap <silent> <M-o> <C-g>$<C-g>

inoremap <silent> <M-l> <End>
inoremap <silent> <M-;> <End><C-M>


"roll half page
nnoremap <silent> <M-Down> <C-d>zz
nnoremap <silent> <M-Up> <C-u>zz
inoremap <silent> <M-Down> <C-o><C-d><C-o>zz
inoremap <silent> <M-Up> <C-o><C-u><C-o>zz
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

"rewrite right mouse click on normal mode to set the right click to isnert mode
nnoremap <expr> <silent> <RightMouse> (bufname('%')=~"NERD_tree")? '<ESC>' : 'i'
inoremap <RightMouse> <ESC>
nnoremap <expr> <silent> <2-RightMouse> (bufname('%')=~'NERD_tree')? '<ESC>' : 'i'
inoremap <2-RightMouse> <ESC>
nnoremap <expr> <silent> <3-RightMouse> (bufname('%')=~'NERD_tree')? '<ESC>' : 'i'
inoremap <3-RightMouse> <ESC>
nnoremap <expr> <silent> <4-RightMouse> (bufname('%')=~'NERD_tree')? '<ESC>' : 'i'
inoremap <4-RightMouse> <ESC>

"search the work
inoremap <silent> <M-p> <C-o>:CocList files<CR>
nnoremap <silent> <M-p> :CocList files<CR>
inoremap <silent> <C-p> <C-o>:CocList words<CR>
nnoremap <silent> <C-p> :CocList words<CR>

"commenter setting
nmap <C-_> <plug>NERDCommenterToggle
imap <C-_> <C-o><plug>NERDCommenterToggle
vmap <C-_> <plug>NERDCommenterToggle
smap <C-_> <C-g><plug>NERDCommenterToggle i<Left>

"goto definenation in new table
nmap <C-g> :call CocAction('jumpDefinition', 'tabe')<CR>
imap <C-g> <C-o>:call CocAction('jumpDefinition', 'tabe')<CR>

"complete tab setting
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"



