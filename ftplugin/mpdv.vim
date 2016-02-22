function! GetMPCStatusline()
    let cmd = "mpc status"
    let result = split(system(cmd), '\n')

    " Consider using a regex here to find the correct status string instead.
    " For example, this stored the wrong status string when the output was 4
    let status = len(result) == 3 ? result[2] : result[0]

    let [s:count, s:settings] =
                \ [len(split(system('mpc playlist'), '\n')),
                \ split(status, '   ')]

    let s:statusline = " "
                \ . s:settings[1] . " --- "
                \ . s:settings[2] . " ---%="
                \ . s:count . " songs "

    return s:statusline
endfunction

set buftype=nofile
setlocal statusline=%!GetMPCStatusline()
