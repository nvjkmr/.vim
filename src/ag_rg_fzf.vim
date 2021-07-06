"" Ag


if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


"" Rg and Fzf
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
nnoremap <C-p> :FZF<CR>
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
set rtp+=~/.apps/fzf/bin/fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'
  \ }
