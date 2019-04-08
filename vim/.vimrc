" вирівнювання коду табами
set cindent
set cinoptions=(0,u0,U0
set noet sts=0 sw=4 ts=4

" показ розташування курсора зліва внизу
set ruler

" увімкнення синтаксу
syntax on

" підсвічення пробілів по обидві сторони і перед закінченням рядку
match Error /  \+\| \n\|\t\n/

" автоматичні дужки і їхнє вирівнювання (прибрати коментарі для використання)
" ino ” “”<left>
" ino ' ‘’<left>
" ino ( ()<left>
" ino [ []<left>
" ino { {}<left>

" бекап в окремий каталог в ~/.vim
set backup
silent !mkdir -p ~/.vim/backups
set backupdir=~/.vim/backup

" функція хедеру
function! PutHeader()
	let file_name = expand('%:t')
	let date_create = system('date +"%Y/%m/%d %H:%M:%S" | tr -d ''\n''')
	let g:header = exists('g:header') ? 0 : 1

	if g:header
		call append(0, "/* ************************************************************************** */")
		call append(1, "/*                                                                            */")
		call append(2, "/*                                                        :::      ::::::::   */")
		call append(3, printf("/*   %-51s:+:      :+:    :+:   */", file_name))
		call append(4, "/*                                                    +:+ +:+         +:+     */")
		call append(5, printf("/*   By: %-1s <%s@student.unit.ua>            +#+  +:+       +#+        */", $USER, $USER))
		call append(6, "/*                                                +#+#+#+#+#+   +#+           */")
		call append(7, printf("/*   Created: %s by %-18s#+#    #+#             */", date_create, $USER))
		call append(8, printf("/*   Updated: %s by %-17s###   ########.fr       */", date_create, $USER))
		call append(9, "/*                                                                            */")
		call append(10, "/* ************************************************************************** */")
		call append(11, "")
	endif
endfunction

:map <silent> <C-c><C-h> :call PutHeader()<CR>

" === BONUS PART ===

" повернення курсору на місці де він був при виході
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" підсвічення межі в 80 символів
set colorcolumn=81

" нумерація рядків
set nu

" плаґін для вирівнювання і дужок (прибрати коментарі для використання)
source ~/auto-pairs.vim
