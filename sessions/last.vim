let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/dev/ionic-aws/src/app/tab2/tab2content
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +25 tab2content.component.html
badd +1 tab2content.component.ts
badd +53 ~/.vimrc
badd +1 ~/dev/ionic-aws/src/app/tab2/tab2.module.ts
badd +1 ~/dev/ionic-aws/src/app/tab3/tab3.page.html
badd +9 ~/dev/ionic-aws/src/app/tab3/tab3.page.ts
badd +0 ~/dev/ionic-aws/src/app/tab3/tab3.page.scss
argglobal
silent! argdel *
$argadd tab2content.component.html
edit ~/dev/ionic-aws/src/app/tab3/tab3.page.html
set splitbelow splitright
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 36 - ((16 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 05|
lcd ~/dev/ionic-aws/src/app/tab2/tab2content
tabedit ~/dev/ionic-aws/src/app/tab3/tab3.page.ts
set splitbelow splitright
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 08|
lcd ~/dev/ionic-aws/src/app/tab2/tab2content
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
