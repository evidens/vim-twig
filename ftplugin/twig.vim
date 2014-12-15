" Vim filetype plugin
" Language: Twig
" Maintainer: F. Gabriel Gosselin <gabrielNOSPAM@evidens.ca>

if exists("b:did_ftplugin")
  finish
endif

setlocal comments=s:{#,ex:#}
setlocal formatoptions+=tcqln
" setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

if exists("b:did_ftplugin")
  let b:undo_ftplugin .= "|setl com< fo<"
else
  let b:undo_ftplugin = "setl com< fo<"
endif

" vim:set sw=2:
