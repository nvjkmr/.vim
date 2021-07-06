"" JSON


" format
if !exists(":FormatJSON")
    command FormatJSON execute '%!jq .'
endif

" syntax highlight
autocmd FileType json syntax match Comment +\/\/.\+$+


