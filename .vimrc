" Tab width and Shift Tab Width Configuration
" Configure the number of spaces to use for each TAB in the editor.
" 'tabstop' set the display width of TAB characters.
" 'expandtab' makes VIM insert spaces instead of a TAB character.
" 'shiftwidth' sets the number of spaces used for identation.
set tabstop=2
set expandtab
set shiftwidth=2

" Enable line numbers
set number

" Vim-Plug setup
call plug#begin('~/.vim/plugged')

" ALE (Asynchronous Lint Engine) for linting
Plug 'dense-analysis/ale'

" YourCompleteMe for autocompletion
Plug 'ycm-core/YouCompleteMe', {'do': './install.py --clangd-completer'}

call plug#end()

" Syntastic configuration for ESLint
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \}
" Enable YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1

" Remap Control + S to save the current file
nnoremap <C-s> :w<CR>

" Remap Control + q to close the current file
nnoremap <C-q> :q<CR>

" Remap spacebar in normal mode to open the file explorer
nnoremap <Space> :Explore<CR>

