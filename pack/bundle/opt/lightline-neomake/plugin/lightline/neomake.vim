if exists('g:lightline#neomake#enabled')
	finish
endif
let g:lightline#neomake#enabled = 1

augroup lightline#neomake
	autocmd!
	autocmd User NeomakeFinished call lightline#update()
augroup END
