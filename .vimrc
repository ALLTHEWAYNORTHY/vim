" run time set 
set runtimepath^="/Users/users/.vim"

" Configuration file for vim
" CVE-2007-2438
set modelines=0

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
" more powerful backspacing
set backspace=2

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

"显示行号
set nu
set relativenumber

"启动时隐去援助提示
set shortmess=atI

"语法高亮
syntax on

"使用vim的键盘模式
"set nocompatible

"不需要备份
set nobackup

"没有保存或文件只读时弹出确认
set confirm

"鼠标可用
set mouse=a

"tab缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=4

"文件自动检测外部更改
set autoread

"c文件自动缩进
set cindent

"自动对齐
set autoindent

"自动保存
set autowriteall
autocmd BufLeave,FocusLost * silent! wall

"智能缩进
set smartindent

"高亮查找匹配
set hlsearch

"高亮当前行
set cursorline
highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE

"
set path+=**
set wildmenu

"复制到系统
vmap "+y :w !pbcopy<CR><CR>
nmap "+p :r !pbpaste<CR><CR>

" plugin markdown view
let vim_markdown_preview_github=1
