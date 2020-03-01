set nocompatible
filetype off

" 设置运行环境的路径"
set rtp+=~/.vim/bundle/Vundle.vim

"初始化vundle"
call vundle#begin()

"着一行应该永远放在开头"
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'         " 在普通模式下进行搜索
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'majutsushi/tagbar'
nmap <F10> :TagbarToggle<CR>
let g:tagbar_autofocus = 1      "tagbar 一打开就在 tarbar 页面内, 默认在vim 编辑区
let g:tagbar_width=30           "默认为40
let g:tagbar_sort=0             "设置标签不排序,默认排序

Plugin 'oblitum/rainbow'
let g:rainbow_active = 1

Plugin 'preservim/nerdtree'
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

Plugin 'ycm-core/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1 
"确保了在你完成操作之后,自动补全窗口不会消失"
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"定义了“转到定义”的快捷方式"

" 缩进标线
Plugin 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '|'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']   "不同的缩进层级设置不同的缩进线
"let g:indentLine_enabled = 0       关闭插件
"::IndentLinesToggle                开关

"代码对齐
Plugin 'godlygeek/tabular'
" :Tab/:

"python 语法高亮
Plugin 'hdima/python-syntax'
let python_highlight_all = 1
let Python3Syntax = 1

"补全 HTML/XML 标签
Plugin 'docunext/closetag.vim'
let g:closetag_html_style=1

"Plugin 'w0rp/ale'
"代码检测: Syntastic 也不错,但是 Vim 8 之后,因为异步接口的引入,ALE 逐渐占了上风
"ALE 的特点是异步调用,不影响主界面.
"ALE 跟其他插件比如 airline 整合得比较好.
"ALE 依赖于大量的外部工具(cpplint,eslint,etc.),这些工具才是幕后的功臣
"Ubuntu 安装
"   snap install mdl
"   pip install vim-vint
"   apt install gperf
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'
"let g:airline#extensions#ale#enabled = 0
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1

"智能折叠
""Plugin 'tmhedberg/SimpylFold'
"set foldmethod=indent
""let g:SimpylFold_docstring_preview = 1
""let g:SimpylFold_fold_docstring = 1
""let g:SimpylFold_fold_import = 1

"Python 语法自动补全
Plugin 'davidhalter/jedi-vim'
let g:jedi#completions_command = "<C-N>"        " 自动补全
" Goto assignments: <leader>g (typical goto function)
" 跳转到定义             : <leader>d
" 显示Python文档(Pydoc)  : K
" 重命名                 : <leader>r
" 展示某个变量的使用方法 : <leader>n (shows all the usages of a name)
" 打开某个模块           : Pyimport os (打开 os 模块)
" <leader> 默认为 \

" 只针对 python 的语法和格式检查, syntastic 是针对所有编程语言的语法检查
Plugin 'nvie/vim-flake8'
" 系统需要先安装 flak8: pip3 install flak8
" F7  启动 flak8 对当前文件进行语法和格式检查
" autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>
"   更改按键
" autocmd BufWritePost *.py call flake8#Flake8()
"   希望在每次保存 Python 文件时都执行 flake8 检测,可以增加以下配置

"括号/引号自动补齐
Plugin 'Raimondi/delimitMate'
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'jiangmiao/auto-pairs'
"let AutoPairsMapBS = 1            " 删除
"let g:AutoPairsMapCR = 1            "  ENTER 键(回车键)映射为换行并自动缩进,默认值1
"let g:AutoPairsMapSpace = 1

" 高效率注释插件
Plugin 'preservim/nerdcommenter'
" [count]<leader>cc         注释从当前行往下数的 count 行
" [count]<leader>cu         取消注释从当前行往下数的 count 行
" [count]<leader>ci         切换从当前行往下数的 count 行的注释状态
" <leader>c$                注释掉从当前光标所在位置到行尾的剩下内容
" <leader>cA                在光标所在当前行行尾添加注释符号并进入 Vim 的插入模式


"主题========================================================"
Plugin 'jnurmine/Zenburn'           " colors zenburn
Plugin 'morhetz/gruvbox'
Plugin 'whatyouhide/vim-gotham'     " colorcolumn gotham, gotham256
Plugin 'mhinz/vim-janah'            " colorcolumn janah
Plugin 'nanotech/jellybeans.vim'    " colorscheme jellybeans
Plugin 'jonathanfilip/vim-lucius'   " colorscheme lucius
Plugin 'tomasr/molokai'
Plugin 'skreek/skeletor.vim'        " colorscheme skeletor
Plugin 'mhartington/oceanic-next'   " colorscheme OceanicNext
Plugin 'kabbamine/yowish.vim'       " colorscheme yowish



"所有的插件都应该在这一行之前" call vundle#end() 
call vundle#end() 
filetype plugin indent on

"有一些网站可以帮组找到适合的vim插件:"
	"http://www.vim-scripts.org"
	"http://www.vimawesome.com"
	"https://github.com"
"默认情况下vundle将从github.com或者vim-scripts.org下载安装插件,你可以改变这个默认的行为"
	"从github安装插件: Plugin 'user/plugin' "
	"从http://vim-scropts.org/vim/scripts.html处安装: Plugin 'plugin_name' "
	"从另一个git仓库中安装: Plugin 'git://git.another_repo.com/plugin' "
	"从本地文件中安装: Plugin 'file:///home/user/path/to/plugin' "
"你同可以定制其他东西,例如你的插件的运行时的路径,当你自己在编写一个插件时,或者你想从其他目录而不是~/.vim目录中加载插件时,这样做就非常有用"

"================================================================


" 1: 必须:
"set background=dark
""set cursorline
""set cursorcolumn
set pastetoggle=<F3>
""set visualbell
set laststatus=2

" 2: 设置行号和相对行号
set nu
""set relativenumber

" 3: 设置制表符和缩进长度
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 4: 设置自动换行
set autoindent
set nosmartindent
set nocindent

" 5: 搜索高亮显示,忽略大小写
set incsearch
set hlsearch
set ignorecase
set smartcase

" 6: 快捷键设置
let mapleader = ';'
nnoremap <leader>w :w<cr>
nnoremap <leader>W :w<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>Q :q!<cr>
inoremap <C-d> <esc>:q!<cr>
inoremap <C-w> <esc>:w<cr>a

inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
inoremap <C-v> <C-o>w
inoremap <C-c> <C-o>b
inoremap <C-f> <C-o>$
inoremap <C-e> <C-o>I
inoremap <C-z> <esc>bdwa
nnoremap <leader>l :loadview<cr>

map <C-h> <esc>bp<cr>
map <C-l> <esc>bn<cr>
map <C-j> <esc>tabp<cr>
map <C-k> <esc>tabn<cr>
map <C-n> <esc>tabnew<cr>

inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap " ""<esc>i

nnoremap <leader>n :tabnew<cr>
nnoremap <leader>N :tabnew<cr>
nnoremap <leader>j :tabp<cr>
nnoremap <leader>J :tabp<cr>
nnoremap <leader>k :tabn<cr>
nnoremap <leader>K :tabn<cr>
nnoremap <leader>1 :tabn1<cr>
nnoremap <leader>2 :tabn2<cr>
nnoremap <leader>3 :tabn3<cr>
nnoremap <leader>4 :tabn4<cr>
nnoremap <leader>5 :tabn5<cr>
nnoremap <leader>6 :tabn6<cr>
nnoremap <leader>7 :tabn7<cr>
nnoremap <leader>8 :tabn8<cr>
nnoremap <leader>9 :tabn9<cr>
nnoremap <leader>0 :tabn0<cr>

nnoremap <C-L> <esc>:bNext<cr>
nnoremap <C-h> <esc>:bprevious<cr>
nnoremap <C-n> <esc>:tabnew<cr>
nnoremap <C-j> <esc>:tabp<cr>
nnoremap <C-k> <esc>:tabn<cr>

nnoremap <leader>l :loadview<cr>
nnoremap <leader>e :mkview<cr>

inoremap <C-b> <esc><C-e>a

""colorscheme molokai
""colorscheme  gruvbox
""colorscheme janah
""colors zenburn
""colorscheme yowish
set background=dark

"模板文件"
autocmd BufNewFile *.c 0r ~/.vim/templates/c.tpl
autocmd BufNewFile *.php 0r ~/.vim/templates/php.tpl
autocmd BufNewFile *.html 0r ~/.vim/templates/html.tpl
autocmd BUfNewFile *.py 0r ~/.vim/templates/py.tpl

syntax on
filetype plugin indent on
set colorcolumn=88
set expandtab
noremap <C-S-i> <esc>0i#<esc>j



" Modified 2020-2-28
set encoding=utf-8
filetype on
filetype plugin on
filetype plugin indent on
syntax on
filetype plugin indent on
set colorcolumn=88
set expandtab
noremap <C-S-i> <esc>0i#<esc>j



" Modified 2020-2-28
set encoding=utf-8
filetype on
filetype plugin on
filetype plugin indent on
syntax on

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css,*.yam,*.yaml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" 记住浏览位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
