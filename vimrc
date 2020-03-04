set nocompatible
filetype off

" 设置运行环境的路径"
set rtp+=~/.vim/bundle/Vundle.vim

"初始化vundle"
call plug#begin('~/.vim/plugged')

"着一行应该永远放在开头"
Plug 'gmarik/Vundle.vim'
""Plug 'kien/ctrlp.vim'         " 在普通模式下进行搜索
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plug 'majutsushi/tagbar'
nmap <F10> :TagbarToggle<CR>
let g:tagbar_autofocus = 1      "tagbar 一打开就在 tarbar 页面内, 默认在vim 编辑区
let g:tagbar_width=30           "默认为40
let g:tagbar_sort=0             "设置标签不排序,默认排序

Plug 'oblitum/rainbow'
let g:rainbow_active = 1

Plug 'preservim/nerdtree'
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

Plug 'ycm-core/YouCompleteMe', { 'do': './install.sh' }
let g:ycm_autoclose_preview_window_after_completion=1
"确保了在你完成操作之后,自动补全窗口不会消失"
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"定义了“转到定义”的快捷方式"

" 缩进标线
Plug 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '|'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']   "不同的缩进层级设置不同的缩进线
"let g:indentLine_enabled = 0       关闭插件
"::IndentLinesToggle                开关

"代码对齐
Plug 'godlygeek/tabular'
" :Tab/:

"python 语法高亮
Plug 'hdima/python-syntax'
let python_highlight_all = 1
let Python3Syntax = 1

"补全 HTML/XML 标签
Plug 'docunext/closetag.vim'
let g:closetag_html_style=1

"Plug 'w0rp/ale'
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
""Plug 'tmhedberg/SimpylFold'
"set foldmethod=indent
""let g:SimpylFold_docstring_preview = 1
""let g:SimpylFold_fold_docstring = 1
""let g:SimpylFold_fold_import = 1

"Python 语法自动补全
"Plug 'davidhalter/jedi-vim'
"let g:jedi#completions_command = "<C-N>"        " 自动补全
" Goto assignments: <leader>g (typical goto function)
" 跳转到定义             : <leader>d
" 显示Python文档(Pydoc)  : K
" 重命名                 : <leader>r
" 展示某个变量的使用方法 : <leader>n (shows all the usages of a name)
" 打开某个模块           : Pyimport os (打开 os 模块)
" <leader> 默认为 \

" 只针对 python 的语法和格式检查, syntastic 是针对所有编程语言的语法检查
Plug 'nvie/vim-flake8'
" 系统需要先安装 flak8: pip3 install flak8
" F7  启动 flak8 对当前文件进行语法和格式检查
" autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>
"   更改按键
" autocmd BufWritePost *.py call flake8#Flake8()
"   希望在每次保存 Python 文件时都执行 flake8 检测,可以增加以下配置

"括号/引号自动补齐
Plug 'Raimondi/delimitMate'
"Plug 'jiangmiao/auto-pairs'
"Plug 'jiangmiao/auto-pairs'
"let AutoPairsMapBS = 1            " 删除
"let g:AutoPairsMapCR = 1            "  ENTER 键(回车键)映射为换行并自动缩进,默认值1
"let g:AutoPairsMapSpace = 1

" 高效率注释插件
Plug 'preservim/nerdcommenter'
" [count]<leader>cc         注释从当前行往下数的 count 行
" [count]<leader>cu         取消注释从当前行往下数的 count 行
" [count]<leader>ci         切换从当前行往下数的 count 行的注释状态
" <leader>c$                注释掉从当前光标所在位置到行尾的剩下内容
" <leader>cA                在光标所在当前行行尾添加注释符号并进入 Vim 的插入模式

" 可视化标签
Plug 'kshenoy/vim-signature'

" 模糊查找神器,性能超越ctrlp
""Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }





"主题========================================================"
Plug 'jnurmine/Zenburn'           " colors zenburn
Plug 'morhetz/gruvbox'
Plug 'whatyouhide/vim-gotham'     " colorcolumn gotham, gotham256
Plug 'mhinz/vim-janah'            " colorcolumn janah
Plug 'nanotech/jellybeans.vim'    " colorscheme jellybeans
Plug 'jonathanfilip/vim-lucius'   " colorscheme lucius
Plug 'tomasr/molokai'
Plug 'skreek/skeletor.vim'        " colorscheme skeletor
Plug 'mhartington/oceanic-next'   " colorscheme OceanicNext
Plug 'kabbamine/yowish.vim'       " colorscheme yowish
Plug 'arzg/vim-colors-xcode'      " colorscheme xcodedark  xcodedarkhc  xcodelight  xcodelighthc  xcodewwdc
Plug 'dylnmc/novum.vim'           " colorscheme novum
Plug 'Mcmartelle/vim-monokai-bold' " colorscheme monokai-bold



"所有的插件都应该在这一行之前" call vundle#end() 
call plug#end()
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


"2: 基本
set pastetoggle=<F3>
set nocompatible
set wildmenu                " vim 自身命令行模式智能补全
syntax on                   " 允许用指定语法高亮配色方案替换默认方案
syntax enable               " 开启语法高亮功能

set nu
""set relativenumber        " 设置相对行号

set tabstop=4               " 编辑时, 制表符占用空格数
set softtabstop=4           " 让 vim 把连续数量的空格视为一个制表符
set shiftwidth=4            " 格式化时, 制表符占用空格数
set expandtab               " 将制表符扩展为空格
filetype indent on          " 自适应不同语言的智能缩进
" retab: 让vim 按上述规则重新处理制表符与空格关系

set autoindent              " 自动换行
set nosmartindent
set nocindent

set incsearch               " 搜索动态显示
set hlsearch                " 搜索高亮显示
set ignorecase              " 搜索忽略大小写
set smartcase               " 智能搜索



"2.1: 设置前缀键
let mapleader = ';'

"2.2: 保存和退出
nnoremap <leader>w :w<cr>
nnoremap <leader>W :w<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>Q :q!<cr>
inoremap <C-w> <esc>:w<cr>a
inoremap <C-d> <esc>:q!<cr>

"2.3: 插入模式下的移动
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
inoremap <C-v> <C-o>w
inoremap <C-c> <C-o>b
inoremap <C-f> <C-o>$
inoremap <C-e> <C-o>I

inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap " ""<esc>i

"2.4: vim 标签, 多文件编辑
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

"2.5: vim 文件缓存, 多文件编辑
nnoremap <C-n> :bNext<cr>
""nnoremap <C-p> :bprevious<cr>
""nnoremap <leader>l :loadview<cr>
""nnoremap <leader>e :mkview<cr>

"2.6: vim 窗口分割, 多文件编辑移动
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
"nnoremap <leader>l <C-W>l
"nnoremap <leader>h <C-W>h
"nnoremap <leader>j <C-w>j
"nnoremap <leader>k <C-w>k

"2.7: 复制粘贴
vnoremap <leader>y "+y      
" 设置快捷键将选中文本块复制到系统粘贴板
nmap <leader>p "+p          
" 设置快捷键将系统粘贴板内容复制到 vim

"2.8: GUI 设置: UX 讲究的是内容至上: 
set gcr=a:block-blinkon0        " 禁止光标闪烁
set guioptions-=l               " 禁止显示滚动条
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m               " 禁止显示菜单和工具条
set guioptions-=T

"2.9: 添加辅助信息
set laststatus=2                " 总显示状态栏
set ruler                       " 显示光标当前位置
"set cursorline                 " 高亮显示当前行
"set cursorcolumn               " 高亮显示当前列
"set visualbell                 " 闪烁
set nowrap                      " 禁止折行, 代码折行不美观

"2.10: 代码折叠
set foldmethod=syntax
set nofoldenable                " 启动 vim 时关闭折叠代码
" manual:   手动建立折叠
" indent:   基于缩进进行折叠
" syntax:   基于语法进行折叠
" diff:     未更改为本构成折叠


"3: 主题

""colorscheme molokai
""colorscheme  gruvbox
""colorscheme janah
""colors zenburn
""colorscheme yowish
set background=dark

"4.1: 模板文件"
autocmd BufNewFile *.c 0r ~/.vim/templates/c.tpl
autocmd BufNewFile *.php 0r ~/.vim/templates/php.tpl
autocmd BufNewFile *.html 0r ~/.vim/templates/html.tpl
autocmd BUfNewFile *.py 0r ~/.vim/templates/py.tpl
autocmd BUfNewFile *.sh 0r ~/.vim/templates/sh.tpl

"4.2: 配置文件立即自动生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost source ~/.vimrc

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



" Modified 2020-3

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

au BufNewFile,BufRead *.js,*.html,*.css,*.yml,*.yaml
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

