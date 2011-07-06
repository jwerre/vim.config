call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" When vimrc is edited, reload it syntax on				"Enable sytaxing 
colorscheme wombat
filetype on              "enable file type detection
filetype plugin on		
if has("autocmd")
	filetype indent on
endif

set nocompatible		"No compatibility with Vi
set autowrite			"write old file out when switching between files
set history=700
let mapleader = "'" 	"Set alternate Map Leader
set timeoutlen=500		"timeout for Map Leader in milliseconds
set guifont:Monaco:h13	"Set font and size
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set showcmd				"Display last command in bottom right
set laststatus=2		"Always show the status line
set linespace=3			"Set line height
set showmatch           "show matching closing tag
set guioptions-=T		"remove tool bar
set ruler
set hlsearch            "highlight search
set incsearch           "find as you type search
"set ignorecase          "case insensitive search
set virtualedit=all
set number
set splitbelow			"split window below current window
set wrap				"wrap lines
set textwidth=79
set formatoptions=qrn1
set wildmenu			"turn on auto complete menu
set wildmode=list:longest,full
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "don't fold by default
set foldlevel=1         
set tabpagemax=15       "set the max amount of tabs
set whichwrap=h,l,~,[,] " have the h and l cursor keys wrap between lines (like </space><space> and <bkspc> do by default), and ~ covert case over line breaks; also have the cursor keys wrap in insert mode
set backspace=indent,eol,start " backspace over anything
set directory=~/.vim/tmp " directory to store temp swp files
set cursorline
set listchars=tab:>.,trail:.,extends:#,nbsp:. " highlight problematic whitespace
set wrap                "turn on text wrap
set linebreak           "break lines in between words not in middle  

"-----------------------
" NORMAL MODE MAPS
"-----------------------
" map space to :
nmap <space> :
" Delete all buffer
nmap <silent> ,da :exec "1," . bufnr('$') . "bd"<cr>
" Next Tab
nmap <C-right> :tabn<cr>
" Previous Tab
nmap <C-left> :tabp<cr>
"Previous Buffer
nmap <C-up> :bp<cr>
"Next Buffer
nmap <C-down> :bn<cr>
"Color Selector
nmap :Color :ColorSel<cr> 
" toggle invisibles
" nmap <leader>l :set list!<CR>
"end of line
nmap <leader>l $
"beginning of line
nmap <leader>h ^
" move line up
nmap <C-Up> ddkP
" move line down
nmap <C-Down> ddp
"hard wrap paragraphs of text (,q) 
" Visually select the text that was last edited/pasted
nmap gV `[v`]
nnoremap <leader>q gqip	
"toggle folds
nnoremap <leader>ft Vatzf
"break line control-j
nnoremap <NL> i<CR><ESC>
" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR> 
" Ctrl-j/k deletes blank line below/above, and Command-j/k inserts.
" nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><D-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><D-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

"-----------------------
" INSERT MODE MAPS
"-----------------------
"Map code completion to ,tab 
imap ,<tab> <C-x><C-o>
"Go to Normal mode by hitting jj
imap jj <esc> 

"-----------------------
" VISUAL MODE MAPS
"-----------------------
" yank a line and go to end of yank
vmap y y`]
" move multiple line up
vmap <C-Up> xkP`[V`]
" move multiple line down
vmap <C-Down> xp`[V`]
"-----------------------
" COMMAND-LINE MAPS
"-----------------------
abbrev ff :! open -a firefox.app %:p<cr>
abbrev cdlp cd /Work/001_LAUNCHPAD/admin
abbrev ftplaunch Nread ftp://launch@www.asklaunch.com/public_html
abbrev ftpclients Nread ftp://launch@www.asklaunch.com/public_html/clients

"-----------------------
" COMMANDS
"-----------------------

"-----------------------
" AUTO COMMANDS
"-----------------------
"autocmd bufwritepost .vimrc source $MYVIMRC     "automatically source .vimrc when saved
autocmd BufEnter * cd %:p:h                     "automatically change current directory to that of the file in buffer
autocmd Bufread,BufNewFile *.as set filetype=actionscript
autocmd BufRead *.php set ft=php.html
autocmd BufNewFile *.php set ft=php.html
autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"-----------------------
" ABBREVIATIONS
"-----------------------
ia lorem1 Nulla facilisi. Pellentesque quis eros non ipsum sodales sagittis id vel urna. Nullam vulputate scelerisque tincidunt. Proin sagittis fringilla erat, vitae ultricies ipsum feugiat sit amet. In hac habitasse platea dictumst. In a nisi nulla. Fusce et sem mauris. Nam quis porta risus. Donec ultricies condimentum erat a congue. Praesent euismod tristique lacinia. Sed ut risus enim. Suspendisse ligula magna, tempor eu lacinia ac, adipiscing a ligula.<cr>

ia lorem2 Orbi posuere lorem sit amet dui euismod eu fermentum tellus tincidunt. Proin consequat tellus et odio tincidunt hendrerit. Donec tellus nibh, lobortis id eleifend eu, hendrerit quis augue. Cras sodales scelerisque purus, congue auctor turpis scelerisque vitae. Ut arcu lectus, vestibulum nec rhoncus sed, sodales eu tortor. Nunc id mauris enim, blandit tincidunt lorem. Vivamus porttitor neque a sapien facilisis varius. Integer at venenatis dolor.<cr>Nam sapien lectus, venenatis ac iaculis semper, pellentesque ut turpis. Vivamus ipsum lacus, rhoncus et tempor sed, blandit sed erat. Nam in dolor ac lacus convallis consequat eget eget sem. Sed convallis arcu placerat risus feugiat malesuada. Pellentesque in purus sem, et mollis ligula. Praesent aliquet, ligula sit amet convallis condimentum, quam mi rhoncus nisl, sit amet cursus tellus nunc eu lorem. Donec dapibus lacinia massa in ultrices. Mauris augue orci, pellentesque vel auctor eu, pharetra nec magna. Vestibulum imperdiet eros lectus, at lacinia leo. Fusce sed leo nibh, ut ultricies quam.

ia lorem3 Vestibulum et quam neque, sit amet dapibus mi. Nam vehicula nunc at dolor dapibus ac ornare nibh posuere. Cras tincidunt sodales laoreet. Morbi non massa turpis, eu molestie dui. Vivamus ut dapibus lectus. Pellentesque fermentum, nisi sed volutpat lobortis, arcu ligula porttitor sem, sit amet placerat mauris felis non magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin fermentum purus id mi blandit tempus. In quam justo, vehicula dapibus ornare id, mattis vel purus. Praesent at sem quis mauris mollis venenatis. Quisque rhoncus condimentum augue ac gravida. Mauris velit ipsum, hendrerit eu tincidunt id, congue nec metus.<cr>Mauris sit amet risus turpis. Etiam sagittis vehicula lacus, et varius felis dapibus id. Nulla dictum arcu nec turpis mollis posuere. Sed vehicula consequat quam eu pulvinar. Nullam non mauris id leo malesuada faucibus eu in massa. Nullam a orci ipsum. Proin condimentum sem id felis commodo nec scelerisque orci fringilla. Cras dui turpis, accumsan quis rhoncus vel, posuere sollicitudin diam. In libero diam, sollicitudin at elementum sit amet, ornare sagittis diam. Quisque suscipit nisi et purus lacinia vel elementum dui porttitor. Aenean non metus in eros porta fringilla a sed augue. Etiam tristique rhoncus semper. Integer non leo leo.<cr>Aliquam rutrum felis quis magna dictum vestibulum. Praesent volutpat ante vel velit convallis fringilla. Suspendisse eu sem id metus cursus convallis eu eget quam. Cras consequat placerat velit, sit amet lacinia nibh faucibus vitae. Proin aliquam nulla accumsan leo consequat et tincidunt felis tincidunt. Pellentesque adipiscing, ipsum at accumsan gravida, augue tellus posuere velit, ac molestie eros enim ac orci. Nullam nulla urna, ullamcorper ut feugiat in, accumsan ut erat. Suspendisse id facilisis enim. Cras eleifend, tortor ut consectetur euismod, leo neque facilisis felis, auctor vulputate dolor ligula sit amet ipsum. Quisque convallis, ipsum pharetra faucibus malesuada, leo nibh eleifend justo, at ullamcorper nisi felis at tellus. Nullam interdum viverra mi dignissim tincidunt. Aenean bibendum congue ipsum, id lobortis risus gravida ac.

"-----------------------
" SPELLING
"-----------------------
setlocal spell spelllang=en_us
set spell               "turn on spell checking
"   Correct some spelling mistakes    "
ia teh      the
ia htis     this
ia tihs     this
ia funciton function
ia fucntion function
ia funtion  function
ia retunr   return
ia reutrn   return
ia sefl     self
ia eslf     self
ia widht	width
ia heigth   height
"-----------------------
" BUNDLE SETUP
"-----------------------

" SnipMate  
let g:snips_author = 'Jonah Werre <jonahwerre@gmail.com>' "setting the author var
" Shortcut for reloading snippets, useful when developing
nnoremap <leader>smr <esc>:exec ReloadAllSnippets()<cr>

"NerdTree
"Shortcut for NERDTreeToggle
nnoremap <leader>nt :NERDTreeToggle<cr>
nmap ,nt :NERDTreeToggle

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

