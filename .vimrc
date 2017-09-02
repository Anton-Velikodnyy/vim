"Vim Plug prerequisites
call plug#begin('~/.vim/bundle')
Plug 'tomasr/molokai'
Plug 'jiangmiao/auto-pairs'
call plug#end()
"""""Quality of Life inprovement
"""visuals
set t_Co=256
colorscheme molokai
set mouse=a
"sets new window on the right
set splitright
"sets up line numbers
set ruler
set number
set numberwidth=5
""tabs equal 2
set tabstop=2
set softtabstop=2 "how long silent tab
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
"colors lines with too many characters
set tw=80
set colorcolumn=+1
highlight ColorColumn ctermbg=darkgray
"scrolloff
":syntime on
"when nearing end of terminal
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
"yank to clipboard
set clipboard=unnamed
"""Window Manipulation
"Split Movement
no <M-h> <C-w>h
no <M-j> <C-w>j
no <M-k> <C-w>k
no <M-l> <C-w>l
ino <M-h> <ESC><c-w>h
ino <M-j> <ESC><C-w>j
ino <M-k> <ESC><C-w>k
ino <M-l> <ESC><C-w>l
vno <M-h> <ESC><C-w>h
vno <M-j> <ESC><C-w>j
vno <M-k> <ESC><C-w>k
vno <M-l> <ESC><C-w>l
"Change Windows Position
no <M-H> <C-w>H
no <M-J> <C-w>J
no <M-K> <C-w>K
no <M-L> <C-w>L
ino <M-H> <ESC><c-w>H
ino <M-J> <ESC><C-w>J
ino <M-K> <ESC><C-w>K
ino <M-L> <ESC><C-w>L
vno <M-H> <ESC><C-w>H
vno <M-J> <ESC><C-w>J
vno <M-K> <ESC><C-w>K
vno <M-L> <ESC><C-w>L

"control left, right moves tabs
no <M-Left> :tabprevious<CR>
no <M-Right> :tabnext<CR>

"""Behind-the-Scenes
"imroved search
set incsearch
set ignorecase
"allow O,o to make new line without insert mode
nmap o o<ESC>
nmap O O<ESC>
"tab autocompletes
ino <TAB> <C-n>
"leader,leader resets vimrc in file
no <leader><leader> :so ~/.vimrc<CR>
no <leader><leader><leader> :vsplit ~/.vimrc<CR>
ino <C-\> <C-o>\
"""Plugin managing
""Nerd Tree
map<C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize = 24
"""IDE functionality
"Java Completion
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"C++ Completion
let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif 
"build&&run current file
map <C-SPACE> :make %:r<CR>
set noswapfile
set nobackup
set nowritebackup
"writes, then executes current file
nmap <leader><SPACE> :w<CR>:make %:r && ./%:r<CR>

"scroll wheel slowdown
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>


"speed up attempts
"tried disabling molokai colorscheme
"tried disabling column coloring
let loaded_matchparen = 1
:set ttyfast
 


