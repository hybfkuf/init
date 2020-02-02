set nocompatible
""filetype off

" 设置运行环境的路径"
set rtp+=~/.vim/bundle/Vundle.vim

"初始化vundle"
call vundle#begin()

"着一行应该永远放在开头"
Plugin 'gmarik/Vundle.vim'

"这个示范来自https//:github.com/gmarik/Vundle.vim README"
Plugin 'tpope/vim-fugitive'

"取自http://vim-scripts.org/vim/scripts.html的插件"
Plugin 'L9'

"该git插件没有放在github上"
Plugin 'git://git.wincent.com/command-t.git'

"本地计算机的Git仓库路径 (例如,当你在开发你自己的插件时)"
Plugin 'file:///home/gmarik/path/to/plugin'

"vim脚本sparkup存放在这个名交vim的仓库下的一个子目录中"
"将这个路径正确地设置为runtimepath"
Plugin 'rstacruz/sparkup',{'rtp': 'vim/'}
"避免与L9发生名字上的冲突"
Plugin 'user/L9',{'name':'newL9'}


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
	"Plugin 'rstacruz/sparkup', {'rtp':'another_vim_path/'}) "
"如果你有同名的插件,你可以重命名你的插件,这样就不会发送冲突"
	"Plugin 'user/plugin',{'name':'newPlugin'} "
"vum相关命令"
	"PluginInstall"
	"PluginClean"
	"pluginUpdate"
	"pluginList"
	"PluginSearch"

"================================================="

execute pathogen#infect()
" <> 中文版的vim帮组"
"":helptags ~/.vim/doc
"--------------------------------------------------"
" <> 彩虹括号插件的快捷键"
nnoremap <F5> :RainbowParenthesesToggle<cr>
"--------------------------------------------------"
" <>  便签栏插件的快捷键"
"" TagbarOpen: 打开侧边栏
"" TagbarClose
"" TagbarToggle: 重复
nnoremap <F9> :TagbarToggle<cr>
"-------------------------------------------------"
" <> 自动补齐插件的快捷键"
""nnoremap <F5> :DelimitMateSwitch<cr>
"-------------------------------------------------"
" <> 语法检查插件的快捷键"
nnoremap <F4> :SyntasticReset<cr>
inoremap <C-b> <esc>:SyntasticReset<cr>a
"-------------------------------------------------"
" <> 目录栏的插件的快捷键"
nnoremap <F10> :NERDTreeToggle<cr>

"-------------------------------------------------"
"所有的插件都应该在这一行之前" call vundle#end() 

"================================================="
" 1: 必须:
"set background=dark
""set cursorline
""set cursorcolumn
set pastetoggle=<F3>
""set visualbell
""set laststatus=2

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

"colorscheme molokai
""colorscheme  gruvbox

"模板文件"
autocmd BufNewFile *.c 0r ~/.vim/templates/c.tpl
autocmd BufNewFile *.php 0r ~/.vim/templates/php.tpl
autocmd BufNewFile *.html 0r ~/.vim/templates/html.tpl
autocmd BUfNewFile *.py 0r ~/.vim/templates/py.tpl

call pathogen#infect()
syntax on
filetype plugin indent on
set colorcolumn=88
set expandtab
