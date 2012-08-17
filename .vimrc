"中文
set helplang=cn

"utf-8编码
set encoding=utf-8

" 设置鼠标一直可用
set mouse=a


"语法高亮
syntax enable
syntax on
colorscheme desert

"设置（软）制表符宽度为4：
set tabstop=4
set softtabstop=4

"设置缩进的空格数为4
set shiftwidth=4

"设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置：
set autoindent

"设置使用 C/C++ 语言的自动缩进方式：
set cindent

"设置C/C++语言的具体缩进方式（以我的windows风格为例）：
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

"如果想在左侧显示文本的行号，可以用以下语句：
set nu

"最后，如果没有下列语句，就加上吧：
if &term=="xterm"
set t_Co=8
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif

"taglist 插件Ctags 插件: TagList
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"文件浏览器和窗口管理器 -- 插件: WinManager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" tags
"set tags=./tags

"是否使用 quickfix 窗口来显示 cscope 结果
set cscopequickfix=s-,c-,d-,i-,t-,e-

"映射cscope键盘
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"快速浏览和操作Buffer -- 插件: MiniBufExplorer
                   "以下的两个功能需要在~/.vimrc中增加:
let g:miniBufExplMapCTabSwitchBufs = 1"<C-Tab>     向前循环切换到每个buffer上,并在但前窗口打开
                                                               "<C-S-Tab>     向后循环切换到每个buffer上,并在但前窗口打开
                   "如果在~/.vimrc中设置了下面这句:
let g:miniBufExplMapWindowNavVim = 1"则可以用<C-h,j,k,l>切换到上下左右的窗口中去,就像:
                                                                "C-w,h j k l    向"左,下,上,右"切换窗口.
                   "在~/.vimrc中设置:
let g:miniBufExplMapWindowNavArrows = 1"是用<C-箭头键>切换到上下左右窗口中去

"c/h文件间相互切换 -- 插件: A
nnoremap <silent> <F12> :A<CR>"意思是按F12时在一个新的buffer中打开c\h文件,

"在工程中查找 -- 插件: Grep
nnoremap <silent> <F3> :Grep<CR>"在想查的词上按F3

"c智能补全
filetype plugin indent on"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu"关掉智能补全时的预览窗口


"加速你的补全 -- 插件: SuperTab
let g:SuperTabRetainCompletionType=2"设置按下<Tab>后默认的补全方式
let g:SuperTabDefaultCompletionType="<C-X><C-O>"" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止

"关闭了VI兼容模式，并允许进行文件类型检测 插件OmniCppComplete：
"c++补全ctag命令    ctags -R --c++-kinds=+p --fields=+iaS --extra=+q src
set nocp
filetype plugin on

"THE END
