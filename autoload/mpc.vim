function! mpc#DisplayPlaylist()
    let cmd = "mpc --format '%position% %artist% / %album% / %title%' playlist"
    let playlist = split(system(cmd), '\n')

    new

    for track in playlist
        if(playlist[0] == track)
            execute "normal! 1GdGI" . track
        else
            call append(line("$"), track)
        endif
    endfor
endfunction
