" Setting
syntax on
set nu
set statusline=%.20F\ %y
set statusline+=%m
set statusline+=%r
set statusline+=%=
set statusline+=%4l/%-4L
set tabstop=4
set shiftround
set shiftwidth=4

" Map
let mapleader = ","
nnoremap <leader>rc :vsplit $MYVIMRC<cr>
nnoremap <leader>sc :source $MYVIMRC<cr>
nnoremap <leader>a <c-w>h
nnoremap <leader>d <c-w>l
nnoremap <leader>w <c-w>k
nnoremap <leader>s <c-w>j
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap H ^
nnoremap L g_
nnoremap dl ddO
inoremap jk <esc>
onoremap p i(

" Abbrevation 
iabbrev @@ 17801205676@163.com

" Autocommand
autocmd BufWritePre,BufRead *.html :normal gg=G
autocmd BufNewFile,BufRead *.html setlocal nowrap

" Python   /*{{{*/
augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <c-c> I#<esc>
    autocmd FileType python :iabbrev <buffer> iff if:<left>
augroup END
" /*}}}*/

" Javascript   /*{{{*/
augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <c-c> I//<esc>
    autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END
" /*}}}*/

" Vim   /*{{{*/
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END   	
" /*}}}*/
