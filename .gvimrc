"フォント設定

"set guifont=Migu\ 1M\ Regular:h18

"set guifontwide=Mig\ 1M:h16
"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/
" ウィンドウ拡大
"defaults write org.vim.MacVim MMZoomBoth -boolean YES
"常にタブを表示
"set showtabline=2
"透明度を変更
set transparency=4
"map  gw :macaction selectNextWindow:
"map  gW :macaction selectPreviousWindow:
