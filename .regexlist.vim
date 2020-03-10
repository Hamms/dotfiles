" Markdown
let markdownifyLinks = 's/<a href=[''"]\([^''"]*\)[''"]>\([^<]*\)<\/a>/[\2](\1)/gc'
let markdownifyStrong = 's/<\%(strong\|b\)>\([^<]*\)<\/\%(strong\|b\)>/**\1**/gc'
let markdownifyEmphasis = 's/<\%(em\|i\)>\([^<]*\)<\/\%(em\|i\)>/_\1_/gc'

" JavaScript
" TODO: require <-> import
