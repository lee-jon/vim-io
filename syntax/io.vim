" Vim Syntax File
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

" Strings
syntax region xString start=/"/ skip=/\\./ end=/"/
syntax region xString start=/"""/ skip=/\\./ end=/"""/

" Types
syntax keyword ioType Array AudioDevice AudioMixer Block Box Buffer CFunction
syntax keyword ioType CGI Color Curses DBM DNSResolver DOConnection DOProxy
syntax keyword ioType DOServer Date Directory Duration DynLib Error Exception
syntax keyword ioType FFT File Fnmatch Font Future GL GLE GLScissor GLU
syntax keyword ioType GLUCylinder GLUQuadric GLUSphere GLUT Host Image Importer
syntax keyword ioType LinkList List Lobby Locals MD5 MP3Decoder MP3Encoder Map
syntax keyword ioType Message Movie Notification Number Object
syntax keyword ioType OpenGL Point Protos Regex SGML SGMLElement SGMLParser SQLite Server Sequence
syntax keyword ioType ShowMessage SleepyCat SleepyCatCursor Socket
syntax keyword ioType SocketManager Sound Soup Store String Tree UDPSender
syntax keyword ioType UPDReceiver URL User Warning WeakLink
syntax keyword ioType true false nil Random BigNum Sequence

" Functions
syntax keyword ioFunction activate activeCoroCount and asString block break
syntax keyword ioFunction catch clone collectGarbage compileString continue
syntax keyword ioFunction do doFile doMessage doString else elseif exit for
syntax keyword ioFunction foreach forward getSlot getenv hasSlot if ifFalse
syntax keyword ioFunction ifNil ifNilEval ifTrue isActive isNil isResumable list message
syntax keyword ioFunction method or parent pass pause perform
syntax keyword ioFunction performWithArgList print println proto raise raiseResumable
syntax keyword ioFunction removeSlot resend resume return
syntax keyword ioFunction schedulerSleepSeconds self sender
syntax keyword ioFunction setSchedulerSleepSeconds setSlot shallowCopy
syntax keyword ioFunction slotNames super system then thisBlock thisContext
syntax keyword ioFunction call try type uniqueId updateSlot wait while
syntax keyword ioFunction write yield


hi def link ioOperator       Operator
hi def link ioAssignment     ioOperator
hi def link ioComment        Comment
hi def link ioNumber         Number
hi def link ioHexNumber      ioNumber
hi def link ioFloat          Float
hi def link ioType           Type
hi def link ioFunction       Function
hi def link ioString         String

let b:current_syntax = "io"
