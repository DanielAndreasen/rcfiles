" Comment using <C-a>
" Uncomment using <C-b>
" map <C-a> :call Comment()<CR>
" map <C-b> :call Uncomment()<CR>

" function! Comment()
" 	let ft = &filetype
" 	if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl'
" 		silent s/^/\#/
" 	elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go'
" 		silent s:^:\/\/:g
" 	elseif ft == 'tex'
" 		silent s:^:%:g
" 	elseif ft == 'vim'
" 		silent s:^:\":g
" 	endif
" endfunction

" function! Uncomment()
" 	let ft = &filetype
" 	if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl'
" 		silent s/^\#//
" 	elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go'
" 		silent s:^\/\/::g
" 	elseif ft == 'tex'
" 		silent s:^%::g
" 	elseif ft == 'vim'
" 		silent s:^\"::g
" 	endif
" endfunction
