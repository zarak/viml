function! OpenMPC()
    if(bufexists('mpc.mpdv'))
        let mpcwin = bufwinnr('mpc.mpdv')
        if(mpcwin == -1)
            execute "sbuffer " . bufnr('mpc.mpdv')
        else
            execute mpcwin . 'wincmd q'
            return
        endif
    else
        execute "new mpc.mpdv"
    endif
    call mpc#DisplayPlaylist()
endfunction
