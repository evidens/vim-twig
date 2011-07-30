" Vim syntax file
" Language:	Twig HTML template
" Maintainer: Gabriel Gosselin <gabrielNOSPAM@evidens.ca>
" Maintainer:	Armin Ronacher <armin.ronacher@active-4.com>
" Last Change:	2011 July 29

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'html'
endif

if version < 600
  so <sfile>:p:h/twig.vim
  so <sfile>:p:h/html.vim
else
  runtime! syntax/twig.vim
  runtime! syntax/html.vim
  unlet b:current_syntax
endif

let b:current_syntax = "htmljinja"
