 if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 call neobundle#rc(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 "
 " Note: You don't set neobundle setting in .gvimrc!
 " Original repos on github
 NeoBundle 'tpope/vim-fugitive'


" powerline
 NeoBundle 'alpaca-tc/alpaca_powertabline'
 NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}

" unite
 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'Shougo/vimproc'
 NeoBundle 'Shougo/unite-outline'
 "NeoBundle 'h1mesuke/unite-outline'

 NeoBundle 'corntrace/bufexplorer'

 NeoBundle 'https://github.com/scrooloose/nerdtree.git'
 NeoBundle 'https://github.com/scrooloose/syntastic.git'

 NeoBundle 'git://github.com/fuenor/qfixhowm' 
" Color schem
" NeoBundle 'altercation/vim-colors-solarized'

 " ...

 filetype plugin indent on     " Required!
 "
 " Brief help
 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

 " Installation check.
 NeoBundleCheck


" バッファエクスプローラー
" 表示をトグル
nnoremap gbb :TMiniBufExplorer<CR>
" 表示してフォーカスを一覧にもってくる
"nnoremap gbg :MiniBufExplorer<CR>

" ctag の設定( volume配下のみ 環境変更時に再設定が必要 )
" set tags=/Volumes/fxos_work/src/B2G_29_peak/B2G/tags
set tags=/Volumes/fxos_work/src/B2G_0109_ns/B2G/tags

"クリップボードをWindowsと連携
set clipboard=unnamed
"Vi互換をオフ
set nocompatible
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
set listchars=eol:$,tab:>\ ,extends:<
"行番号を表示する
set number
"シフト移動幅
"set shiftwidth=4
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
" バックアップ取らない
set nobackup
" 他で書き換えられたら自動で読み直す
set autoread
" スワップファイル作らない
set noswapfile

" ステータスラインを常に表示する
:set laststatus=2

" 検索時に大文字小文字を区別しない
set ignorecase

" 検索結果をハイライト
set hlsearch

" 2バイト文字対応
set ambiwidth=double

" 背景を透過
":set transparency=4
" gvimrcに記載 

" font
"set guifont=MigMix\ 1M\ Regular\ for\ Powerline:h18
set guifont=Migu\ 1M\ Regular\ for\ Powerline:h18

"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
set backspace=indent,eol,start "Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,] "行頭行末の左右移動で行をまたぐ
set scrolloff=8                "上下8行の視界を確保

"ファイル内の  が対応する空白の数
set tabstop=4
"縦幅
set lines=40
"横幅
set columns=120
"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END
"日本語入力をリセット
au BufNewFile,BufRead * set iminsert=0
"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=4 shiftwidth=4

syntax on
"カラースキーマを設定
colorscheme molokai
"set background=dark
"colorscheme solarized
let g:Powerline_colorscheme='skwp'
" NERDTRee
" 引数なしで実行したとき、NERDTreeを実行する
"let file_name = expand("%:p")
"if has('vim_starting') &&  file_name == ""
"    autocmd VimEnter * call ExecuteNERDTree()
"endif
 
" NERDTree on/off
nmap <silent> <C-e>      :NERDTreeToggle<CR>

" Unite outline
let g:unite_split_rule = 'botright'
nmap <silent> <F4> <ESC>:Unite -vertical -winwidth=40 outline<Return>

nnoremap <C-l> :BufExplorer<CR>

" QuickFixウィンドウでもプレビューや絞り込みを有効化
let QFixWin_EnableMode = 1

" Qfixhowm の設定


"QFixHowmキーマップ
let QFixHowm_Key = 'g'

"howm_dirはファイルを保存したいディレクトリを設定。
let howm_dir             = '/Users/yu-yamamoto/_share/Dropbox/work/memo'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'

let QFixHowm_DiaryFile = 'diary/%Y/%m/%Y-%m-%d-000000.howm'
let QFixHowm_PairLinkDir = 'pairlink'
let QFixHowm_PairLinkMode = 1


