let g:lightline = {}
let g:lightline.colorscheme = 'onedark'
let g:lightline.subseparator = { 'left': '', 'right': '' }

let g:lightline.active = {
	\ 'left': [ [ 'mode', 'paste' ],
	\           [ 'readonly' ],
	\           [ 'modified' ],
	\           [ 'filename' ] ],
	\ 'right': [ [ 'whitespace' ],
	\            [ 'percent_and_lineinfo' ],
	\            [ 'file_encoding_and_format' ],
	\            [ 'filetype' ] ] }
let g:lightline.inactive = {
	\ 'left': [ [ 'filename' ] ],
	\ 'right': [ [ 'lineinfo' ],
	\            [ 'percent' ] ] }
let g:lightline.tabline = {
	\ 'left': [ [ 'tabs' ] ],
	\ 'right': [] }

let g:lightline.tab = {
	\ 'active': [ 'filename' ],
	\ 'inactive': [ 'filename' ] }

let g:lightline.component = {
	\ 'filename': '%F',
	\ 'file_encoding_and_format': '%{&fenc!=#""?&fenc:&enc}[%{&ff}]',
	\ 'percent_and_lineinfo': '%p%% %l/%L %-2v',
	\ 'modified': '%{&modified?"+":""}',
	\ 'readonly': '%{&readonly?"⊝":""}' }

let g:lightline.component_expand = {
	\ 'whitespace': 'whitespace#check' }
