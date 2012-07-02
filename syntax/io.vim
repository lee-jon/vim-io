" Vim syntax file
" Language:      Io
" Maintainer:    Lee-Jon Ball <leejonball@gmail.com>
" URL:           https://github.com/lee-jon/vimio

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
end

syntax case match

" Operators and Assignment
syn match ioOperator "?\|@\|@@\|**\|[%*/+-]\|<<\|>>\|<\|<=\|>\|>=\|!=\|==\|[&^|]\|&&\|||\|..\|%=\|&=\|*=\|+=\|-=\|/=\|<<=\|>>=\|^=\||="
syn match ioAssignment "::=\|:=\|="

" Comments
syn region ioComment start='#' end='$' keepend
syn region ioComment start=/\/\*/ end=/\*\//
syn region ioComment start=/\/\// end=/$/ keepend

" Numbers
syn match   ioHexNumber "\<0[xX]\x\+[lL]\=\>" display
syn match   ioHexNumber "\<0[xX]\>" display
syn match   ioNumber    "\<\d\+[lLjJ]\=\>" display
syn match   ioFloat     "\.\d\+\([eE][+-]\=\d\+\)\=[jJ]\=\>" display
syn match   ioFloat     "\<\d\+[eE][+-]\=\d\+[jJ]\=\>" display
syn match   ioFloat     "\<\d\+\.\d*\([eE][+-]\=\d\+\)\=[jJ]\=" display



hi def link ioOperator       Operator
hi def link ioAssignment     ioOperator
hi def link ioComment        Comment
hi def link ioNumber         Number
hi def link ioHexNumber      ioNumber
hi def link ioFloat          Float

let b:current_syntax = "io"
