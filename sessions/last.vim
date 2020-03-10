let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/dev/ionic-aws/src/app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +75 ~/dev/ionic-aws/src/global.scss
badd +1 app.component.html
badd +1 app-routing.module.ts
badd +1 tabs/tabs.page.html
badd +1 ~/dev/ionic-aws/src/index.html
badd +1 ~/.vim/coc-settings.json
badd +1 ~/.vimrc
badd +1 \[Plugins]
badd +1 tab1/tab1.page.html
badd +34 tab1/tab1.page.scss
badd +6 ~/dev/ionic-aws/src/assets/Lessons.ts
badd +6 tab3/tab3.page.html
badd +22 tab2/tab2.page.html
badd +22 tab2/tab2content/tab2content.component.html
badd +3 tab1/tab1.page.ts
badd +1 tab1/.tab1.page.html.swp
badd +1 tab2/tab2.page.scss
badd +12 tab2/tab2.page.ts
badd +10 tab1/tab1.new.scss
badd +1 TabManager
badd +1 tab1/styles/_default-colors.scss
badd +0 tab1/_default-colors.scss
argglobal
silent! argdel *
edit tab1/tab1.page.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 14 + 16) / 33)
exe '2resize ' . ((&lines * 14 + 16) / 33)
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
let s:l = 8 - ((7 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 033|
lcd ~/dev/ionic-aws/src/app
wincmd w
argglobal
if bufexists('~/dev/ionic-aws/src/app/tab1/tab1.new.scss') | buffer ~/dev/ionic-aws/src/app/tab1/tab1.new.scss | else | edit ~/dev/ionic-aws/src/app/tab1/tab1.new.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 016|
lcd ~/dev/ionic-aws/src/app
wincmd w
exe '1resize ' . ((&lines * 14 + 16) / 33)
exe '2resize ' . ((&lines * 14 + 16) / 33)
tabedit ~/dev/ionic-aws/src/global.scss
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
let s:l = 45 - ((26 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 03|
lcd ~/dev/ionic-aws/src/app
tabedit ~/dev/ionic-aws/src/app/tab1/_default-colors.scss
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
let s:l = 9 - ((8 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 023|
lcd ~/dev/ionic-aws/src/app
tabedit ~/dev/ionic-aws/src/app/tab1/tab1.page.scss
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
let s:l = 1 - ((0 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/dev/ionic-aws/src/app
tabedit ~/dev/ionic-aws/src/app/tab1/tab1.page.ts
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
normal! 016|
lcd ~/dev/ionic-aws/src/app
tabnext 3
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
