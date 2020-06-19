" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
        " autocmd TextYankPost * call system('echo'.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end
