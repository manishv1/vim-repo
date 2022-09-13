"  is used for comment
set ve+=onemore
set number
set noerrorbells
set title
set laststatus=2
set wildmenu
set ruler
" Setting Leader key
let mapleader=","
" To simulate window like copy paste:w
map <C-c> yy
map <C-p> P
map <leader>w yiw
"Copy-Paste to clip board
nnoremap Y "+yy
nnoremap C "+P
"Multiple buffer usage for copy
map <leader>a "ayy
map <leader>A "ap
map <leader>b "byy 
map <leader>B "bp
map <leader>c "cyy 
map <leader>C "cp
"First, map and noremap are similar in that that each create mappings for normal, visual, select and operator pending modes simultaneously."
"Overview of which map command works in which mode.  More details below.
"     COMMANDS                    MODES ~
":map   :noremap  :unmap     Normal, Visual, Select, Operator-pending
":nmap  :nnoremap :nunmap    Normal
":vmap  :vnoremap :vunmap    Visual and Select
":smap  :snoremap :sunmap    Select
":xmap  :xnoremap :xunmap    Visual
":omap  :onoremap :ounmap    Operator-pending
":map!  :noremap! :unmap!    Insert and Command-line
":imap  :inoremap :iunmap    Insert
":lmap  :lnoremap :lunmap    Insert, Command-line, Lang-Arg
":cmap  :cnoremap :cunmap    Command-line

"I will use the Emacs-Like (as same as in Linux Terminal) shortcut:
"Ctrl+a: Go to beginning of the line [Normal Mode && Insert Mode]
"Ctrl+e: Go to end of line [Normal Mode && Insert Mode]
"Alt+f: Backward a word [Insert Mode]
"Alt+b: Forward a word [Insert Mode]
"Alt+d: Delete a word (backward) [Insert Mode]
"vim has default shortcut key for Delete a word  [Insert Mode], that is Ctrl+w

map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A
inoremap <M-f> <ESC><Space>Wi
inoremap <M-b> <Esc>Bi
inoremap <M-d> <ESC>cW


"After visually selecting a block of lines (for example, by pressing V then moving the cursor down)
" press Alt-j to move the whole block down, or press Alt-k to move the block up.

"The command :m .+1 (which can be abbreviated to :m+) moves the current line to after line number .+1 (current line number + 1). That is, the current line is moved down one line.
"The command :m .-2 (which can be abbreviated to :m-2) moves the current line to after line number .-2 (current line number − 2). That is, the current line is moved up one line.
"After visually selecting some lines, entering :m '>+1 moves the selected lines to after line number '>+1 (one line after the last selected line; '> is a mark assigned by Vim to identify the selection end). That is, the block of selected lines is moved down one line.
"The == re-indents the line to suit its new position. For the visual-mode mappings, gv reselects the last visual block and = re-indents that block.

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp


