function! EchoQuote(quote, ...)
    let year = a:1
    let author = a:000[1]
    echo 'In ' . year . ', ' . author . ' said: "' . a:quote . '"'
endfunction
