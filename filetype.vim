if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au BufRead,BufNewFile *.twig call s:Setf(expand('<amatch>'))
augroup END

function! s:Setf(filename)
  " Check verbose as in autoload/gzip.vim .
  let prefix = (&verbose < 8) ? 'silent!' : ''

  " Use the base filename to set the filetype, but save autocommands for
  " later, so that we do not execute them twice.
  let ei_save = &eventignore
  set eventignore=FileType
  let basefile = fnamemodify(a:filename, ':r')
  execute prefix 'doau BufRead' basefile
  let &eventignore = ei_save

  if !strlen(&ft)
    " Default to HTML twig template.
    let b:main_syntax = 'html'
    execute prefix 'setf html.twig'
  else
    let b:main_syntax = &syntax
    if &ft !~ '\<twig\>'
      let &ft .= '.twig'
    endif
  endif
endfun
