" vspilt files to the right window
let g:netrw_altv = 1

" files and directories to hide
let g:netrw_list_hide='^\.git/$'

" Default to tree listing
let g:netrw_liststyle = 3

" define shortcut to return to netrw window
let g:netrw_retmap = 1
nmap <unique> <silent> <leader>d <Plug>NetrwReturn

" vpslit when previewing files
let g:netrw_preview = 1

" 30% of window for netrw, 70% for file
let g:netrw_winsize = 30

" don't write error msgs to separate window
let g:netrw_use_errorwindow = 0
