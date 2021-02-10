" List of saved regular expressions for reuse.
" To use, simply Ctrl-R followed by an = followed by the name of the regex
" See https://stackoverflow.com/a/2201584/1810460

" Markdown
let markdownifyLinks = 's/<a href=[''"]\([^''"]*\)[''"]>\([^<]*\)<\/a>/[\2](\1)/gc'
let markdownifyStrong = 's/<\%(strong\|b\)>\([^<]*\)<\/\%(strong\|b\)>/**\1**/gc'
let markdownifyEmphasis = 's/<\%(em\|i\)>\([^<]*\)<\/\%(em\|i\)>/_\1_/gc'

" JavaScript
let jsRequireToImport = 's/^\(var\|const\) \(\w*\) = require(\(.*\));$/import \2 from \3;/c'
let jsImportToRequire = 's/^import \(\w*\) from \(.*\);$/const \1 = require(\2);/c'

" Ruby
let rubyWrapPuts = 's/puts \(.*\)/puts "\1: #{\1.inspect}"/c'
