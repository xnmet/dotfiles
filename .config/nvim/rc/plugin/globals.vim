"
" autopairs
"
let g:AutoPairsMultilineClose = 0
let g:AutoPairsShortcutToggle = ''

"
" windowswap
"
let g:windowswap_map_keys = 0

"
" smoothie
"
let g:smoothie_no_default_mappings = 1

"
" wordmotion
"
let g:wordmotion_nomap = 1
" let g:wordmotion_spaces = ['\w\@<=-\w\@=', '\.', '_']

"
" easymotion
"
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_space_jump_first = 1

"
" startify
"
let g:startify_session_persistence = 1
let g:startify_session_dir = '~/.config/nvim/.session'
let g:startify_list_order  = ['bookmarks', 'sessions']

let g:startify_ascii = [
  \ "  ",
  \ "                      ",
  \ "       _________      ",
  \ "      /_|_____|_\\    ",
  \ "      '. \\   / .'    ",
  \ "        '.\\ /.'      ",
  \ "          '.'         ",
  \ "  ",
\ ]

let g:startify_custom_header = g:startify_ascii
