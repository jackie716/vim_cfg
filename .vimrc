set langmenu=en              " 设置界面为英文
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set relativenumber           " 开启相对行号
set nu!                      " 显示行号
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
" set nowrapscan               " 搜索到文件两端时不重新搜索
set autoread                 " 自动读取重新载入
set nocompatible             " 关闭兼容模式
set hidden                   " 允许在有未保存的修改时切换缓冲区
set autochdir                " 设定文件浏览器目录为当前目录
set foldmethod=indent        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
set laststatus=2             " 开启状态栏信息
set cmdheight=1              " 命令行的高度，默认为1，这里设为2
set autoread                 " 当文件在外部被修改时自动更新该文件
set nobackup                 " 不生成备份文件
set noswapfile               " 不生成交换文件
set list                     " 显示特殊字符，其中Tab使用高亮~代替，尾部空白使用高亮点号代替
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.
set expandtab                " 将 Tab 自动转化成空格 [需要输入真正的 Tab 符时，使用 Ctrl+V + Tab]
set updatetime=50
set mouse=a                  " 鼠标可用
set clipboard=unnamed        " 设置剪贴板

" 高光光标所在行列
" set cursorcolumn " 开启后 mvim 行之间光标移动比较卡顿
" set cursorline

" 关闭preview预览窗口,YCM的预览窗口也可以用g:ycm_autoclose_preview_window_after_insertion配置,详情:help YCM
set completeopt-=preview

:hi ColorColumn ctermbg=lightgrey guibg=lightgrey
let &colorcolumn=join(range(121,999),",")  " 超过120的行宽部分颜色不一致
" 超过120的行宽显示灰色
" highlight ColorColumn guibg=#2d2d2d ctermbg=0

:hi Comment cterm=italic
:hi Identifier cterm=italic
:hi Constant cterm=italic
:hi Type cterm=italic


set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-7,latin1
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

let coc_open = 1

let mapleader=";"
let g:neocomplcache_enable_at_startup = 1
filetype plugin indent on

autocmd FileType php,python,c,java,perl,shell,bash,vim,cpp,wxml,lua,go set ai
autocmd FileType php,python,c,java,perl,shell,bash,vim,cpp,wxml,lua,go set sw=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,cpp,wxml,lua,go set ts=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,cpp,wxml,lua,go set sts=4
autocmd FileType javascript,html,css,xml,ruby set ai
autocmd FileType javascript,html,css,xml,ruby set sw=2
autocmd FileType javascript,html,css,xml,ruby set ts=2
autocmd FileType javascript,html,css,xml,ruby set sts=2

set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

" --------------- Plug -------------------
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'                                                 " 注释
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }                          " 文件树
Plug 'airblade/vim-gitgutter'                                                   " 行号显示改动信息
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle'}                   " 文件树git
Plug 'sheerun/vim-polyglot'                                                     " 语言包
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }                 " golang 工具包
Plug 'tpope/vim-fugitive'                                                       " git diff
Plug 'gregsexton/gitv'                                                          " git log
" Plug 'Valloric/YouCompleteMe', { 'do': '~/.vim/plugged/YouCompleteMe/install.sh'}                 " 代码补全
Plug 'Yggdroot/indentLine'                                                      " 对齐辅助线
Plug 'majutsushi/tagbar'                                                        " 文件结构
Plug 'vim-airline/vim-airline'                                                  " 底部状态栏增强

" 设置项目根目录
Plug 'airblade/vim-rooter'
Plug 'jparise/vim-graphql'                                                      " graphql 插件
Plug 'chemzqm/wxapp.vim'                                                        " 小程序
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " { 'on': 'Files' }
Plug 'mileszs/ack.vim'
Plug 'dyng/ctrlsf.vim'                                                          " 全文搜索插件

" coc 参照vscode的lsp client
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" WakaTime 统计coding时长
Plug 'wakatime/vim-wakatime'

" color schema
Plug 'gosukiwi/vim-atom-dark'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'altercation/solarized'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/seoul256.vim'
call plug#end()


syntax on
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme onedark

" ---------- lightline ------------
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" ------------YouCompleteMe ---------
let g:ycm_error_symbol = 'E'
let g:ycm_warning_symbol = 'W'
let g:ycm_auto_trigger = 1   " 自动弹出提示
" let g:ycm_always_populate_location_list = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1

" ----------- coc ---------------
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" --------------- vim-polyglot -----------
let g:polyglot_disabled = ['markdown']

" -------------fzf and ag-settings---------------------
nmap <C-p> :Files<CR>
if executable('ag')
    let g:ackprg = 'ag --vimgrep --ignore node_modules --ignore dist'
    let g:ackpreview = 1
endif

" search lines in files
cnoreabbrev Ack Ack!

" -------------- fzf + ag -----------------
" 感觉👇下面的 ctrlsf 功能更加强大
nnoremap <Leader>\ :Ack!<Space>
command! -bang -nargs=* Ag
      \ call fzf#vim#ack(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)

" --------------- ctrlsf ----------------
let g:ctrlsf_context = '-B 2 -A 2'
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_selected_line_hl = 'op'
let g:ctrlsf_auto_focus = {
       \ "at" : "start",
       \ }
let g:ctrlsf_position = 'left'
let g:ctrlsf_mapping = {
      \ "openb": { "key": "o", "suffix": "<C-w>p" },
      \ "next": { "key": ["n", "<C-j>"] },
      \ "prev": { "key": ["N", "<C-k>"] },
      \ }

" --------------- nerdcommenter --------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" --------------- nerdtree ---------------
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1

" --------------- nerdtree-git-plugin --------------
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" -------------nerd-commenter--------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" ------------------ git --------------------
let g:gitgutter_sign_added = 'A'
let g:gitgutter_sign_modified = 'M'
let g:gitgutter_sign_removed = 'R'
let g:gitgutter_sign_removed_first_line = '✋'
let g:gitgutter_sign_modified_removed = '😳'

" ------------------- vim-go -------------------

let g:go_auto_sameids = 1
let g:go_addtags_transform = 'camelcase'
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 0
let g:go_metalinter_autosave_enabled = ['vet', 'errcheck', 'deadcode']
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'deadcode']
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_def_reuse_buffer = 1
let g:go_echo_go_info = 1
let g:go_auto_type_info = 0
au FileType go nmap <C-g> <Plug>(go-info)
let g:go_decls_includes = "func,type"
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_list_height = 10
let g:go_list_type = 'quickfix'
if coc_open != 1
    au FileType go nmap <C-]> <Plug>(go-def-tab)
    au FileType go nmap <leader>d <Plug>(go-def-split)
    au FileType go nmap <leader>g <Plug>(go-def-vertical)
endif

" ------------------ mapping -------------------

nmap <Leader>y "*y
nmap <Leader>p "*gp
nmap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>f :CtrlSF<Space>
" 搜索光标所在的关键字
nnoremap <C-a> :CtrlSF<Space><C-R>=expand("<cword>")<CR>
nnoremap <C-s> viw
imap <C-s> <esc>viw
nnoremap <Leader><Space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
nnoremap <C-\> gt
nnoremap <Leader>n :tabnew<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <tab> <C-W><C-W>
nnoremap <C-S-UP> dd<UP>P
nnoremap <C-S-DOWN> ddp
nnoremap <expr><C-h> col('.') == 1 ? '^': '0'
nnoremap <C-l> $
imap <C-S-UP> <esc>dd<UP>Pi
imap <C-S-DOWN> <esc>ddpi

function GetFirstPos()
    let l = getline('.')
    let c = 0
    while c < len(l)
        if l[c] != ' ' && l[c] != '\t'
            break
        endif
        let c = c + 1
    endwhile
    call setpos('.', [0, line('.'), c + 1, 0])
endfunction

function SwitchCase()
    let l = getline('.')
    let word = expand("<cword>")
endfunction

" ------------- macvim 快捷键 -----------
" command + d
map <D-d> dd<esc>
imap <D-d> <esc>ddi
" command + shift + f
nmap <D-F> :CtrlSF<Space>
imap <D-F> <esc>:CtrlSF<Space>
" command + shift + h
nmap <D-H> v^
imap <D-H> <esc>v^
" command + shift + l
nmap <D-L> v$<left>
imap <D-L> <esc>v$<left>
" command + shift + p
nmap <D-P> :Files<CR>
imap <D-P> <esc>:Files<CR>
" command + /
imap <D-/> <esc><leader>c<space>
nmap <D-/> <leader>c<space>
vmap <D-/> <leader>c<space>

" macvim 下 command + 1 打开文件树 ps: jetbrains的习惯
imap <D-1> <esc><leader>t
nmap <D-1> <leader>t
nmap <D-2> :TagbarToggle<CR>
imap <D-2> <esc>:TagbarToggle<CR>
nmap <D-3> :Gblame<CR>
imap <D-3> <esc>:Gblame<CR>
nmap <D-4> :Gvdiff<cr>
imap <D-4> <esc>:Gvdiff<cr>
nmap <D-5> :gitv --all<cr>
imap <D-5> <esc>:gitv --all<cr>
" macvim 下enter会关闭tab.
nmap <cr> :<esc>

nmap <D-S-UP> dd<UP>P
nmap <D-S-DOWN> ddp
imap <D-S-UP> <esc>dd<UP>Pi
imap <D-S-DOWN> <esc>ddpi

if has('gui_vimr')
    " ------------- vimr 快捷键 -----------
    map <M-w> <esc>:wq!<cr>
    " command + d
    map <M-d> dd<esc>
    imap <M-d> <esc>ddi
    " command + shift + f
    nmap <M-F> :CtrlSF<Space>
    imap <M-F> <esc>:CtrlSF<Space>
    " command + shift + h
    nmap <M-H> v^
    imap <M-H> <esc>v^
    " command + shift + l
    nmap <M-L> v$<left>
    imap <M-L> <esc>v$<left>
    " command + shift + p
    nmap <M-P> :Files<CR>
    imap <M-P> <esc>:Files<CR>
    " command + /
    imap <M-/> <esc><leader>c<space>
    nmap <M-/> <leader>c<space>
    vmap <M-/> <leader>c<space>

    " macvim 下 command + 1 打开文件树 ps: jetbrains的习惯
    imap <M-1> <esc><leader>t
    nmap <M-1> <leader>t
    nmap <M-2> :TagbarToggle<CR>
    imap <M-2> <esc>:TagbarToggle<CR>
    nmap <M-3> :Gblame<CR>
    imap <M-3> <esc>:Gblame<CR>
    nmap <M-4> :Gvdiff<cr>
    imap <M-4> <esc>:Gvdiff<cr>
    nmap <M-5> :gitv --all<cr>
    imap <M-5> <esc>:gitv --all<cr>
    " macvim 下enter会关闭tab.
    nmap <cr> :<esc>

    nmap <M-S-UP> dd<UP>P
    nmap <M-S-DOWN> ddp
    imap <M-S-UP> <esc>dd<UP>Pi
    imap <M-S-DOWN> <esc>ddpi
endif

" Ctrl + ]            多选择跳转
nmap <c-]> g<c-]>
vmap <c-]> g<c-]>
imap <c-]> <esc>g<c-]>

" Ctrl + T            跳回原位置
nmap <c-t> :pop<cr>
imap <c-t> <esc>:pop<cr>i
" Ctrl + U            简化全能补全按键
imap <c-u> <c-x><c-o>

" 编辑模式下也能翻页
imap <c-b> <esc><c-b>i
imap <c-f> <esc><c-f>i

" Ctrl + H            光标移当前行行首[插入模式]、切换左窗口[Normal 模式]
imap <c-h> <left>

" Ctrl + J            光标移下一行行首[插入模式]、切换下窗口[Normal 模式]
imap <c-j> <down>

" Ctrl + K            光标移上一行行尾[插入模式]、切换上窗口[Normal 模式]
imap <c-k> <up>

" Ctrl + L            光标移当前行行尾[插入模式]、切换右窗口[Normal 模式]
imap <c-l> <right>

" \gd                 打开 Git 文件对比模式 [竖直] [GitGutter 插件]
nmap <leader>gd :Gvdiff<cr>
" 打开log(~= gloga), 并查看commit。[gitv插件]
nmap <leader>gg :gitv --all<cr>

" \rt                 一键替换全部 Tab 为空格
nmap <leader>rt <esc>:retab<cr>

" insert模式下,向下滚屏
imap <c-e> <esc><c-e>i
" insert模式下,向上滚屏
imap <c-y> <esc><c-y>i



" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
if coc_open == 1
    inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
else
    inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-n>"
end
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function Is_coc_open()
    return coc_open == 1
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

if coc_open == 1
    " ----- coc setting -----

    " 对某些单词禁用补全
    autocmd FileType ruby let b:coc_suggest_blacklist = ['do', "end"]
    " 文件类型映射字典
    let g:coc_filetype_map = {
        \ 'html.swig': 'html',
        \ 'wxss': 'css',
        \ }


    " Better display for messages
    set cmdheight=2

    " You will have bad experience for diagnostic messages when it's default 4000.
    set updatetime=300

    " don't give |ins-completion-menu| messages.
    set shortmess+=c

    " always show signcolumns
    set signcolumn=yes


    " Remap keys for gotos
    nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>
    nmap <silent> gy :call CocAction('jumpTypeDefinition', 'edit')<CR>
    nmap <silent> gi :call CocAction('jumpImplementation', 'edit')<CR>
    nmap <silent> gr :call CocAction('jumpReferences', 'edit')<CR>
    " nmap <silent> gy <Plug>(coc-type-definition)
    " nmap <silent> gi <Plug>(coc-implementation)
    " nmap <silent> gr <Plug>(coc-references)

    nmap <silent> <c-]> :call CocAction('jumpDefinition', 'tab drop')<CR>
    " nmap <c-i> <Plug>(coc-references)

    " " Use K to show documentation in preview window
    " nnoremap <silent> K :call <SID>show_documentation()<CR>
    "
    " function! s:show_documentation()
    "   if (index(['vim','help'], &filetype) >= 0)
    "     execute 'h '.expand('<cword>')
    "   else
    "     call CocAction('doHover')
    "   endif
    " endfunction

    " " Using CocList
    " " Show all diagnostics
    " nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
    " " Manage extensions
    " nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
    " " Show commands
    " nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
    " " Find symbol of current document
    " nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
endif
