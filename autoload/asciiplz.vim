" Replace all instances of utf problem characters with their ascii
" equivalents.
function! asciiplz#ReplaceUTF() abort
  let l:patterns = {}
  " “”
  let l:patterns['\%xe2\%x80\%x93'] = '-'
  let l:patterns['\%xe2\%x80\%x94'] = '-'
  let l:patterns['\%xe2\%x80\%x95'] = '-'
  let l:patterns['\%xe2\%x80\%x97'] = '_'
  let l:patterns['\%xe2\%x80\%x98'] = "'"
  let l:patterns['\%xe2\%x80\%x99'] = "'"
  let l:patterns['\%xe2\%x80\%x9a'] = ','
  let l:patterns['\%xe2\%x80\%x9b'] = "'"
  let l:patterns['\%xe2\%x80\%x9c'] = '"'
  let l:patterns['\%xe2\%x80\%x9d'] = '"'
  let l:patterns['\%xe2\%x80\%x9e'] = '"'
  let l:patterns['\%xe2\%x80\%x9f'] = '"'
  let l:patterns['\%xe2\%x80\%xa6'] = '...'
  let l:patterns['\%xe2\%x80\%xb2'] = "'"
  let l:patterns['\%xe2\%x80\%xb3'] = '"'
  " for each 'key' pattern, replace all instances with the 'value' value.
  for [l:key, l:value] in items(l:patterns)
    exec ':keepmarks %s/'. l:key .'/'. l:value .'/ge'
  endfor
endfunction
