" @Author:      Tom Link (micathom AT gmail com?subject=[vim])
" @Website:     http://www.vim.org/account/profile.php?user_id=4037
" @GIT:         http://github.com/tomtom/
" @License:     GPL (see http://www.gnu.org/licenses/gpl.txt)
" @Created:     2012-08-28.
" @Last Change: 2012-08-30.
" @Revision:    18
" GetLatestVimScripts: 0 0 :AutoInstall: tinykeymap.vim

if &cp || exists("loaded_tinykeymap")
    finish
endif
let loaded_tinykeymap = 1

let s:save_cpo = &cpo
set cpo&vim


if !exists('g:tinykeymaps_default')
    " A list tinykeymaps that should be loaded on startup.
    " The list may also include |wildcards|. A value of "*" make 
    " tinykeymap load all available tinykeymaps.
    " See also |tinykeymap#Load()|.
    let g:tinykeymaps_default = ["*"]   "{{{2
endif

augroup TinyKeyMap
    autocmd!
    if !empty(g:tinykeymaps_default)
        if has('vim_starting')
            autocmd VimEnter * call tinykeymap#Load(g:tinykeymaps_default)
        else
            call tinykeymap#Load(g:tinykeymaps_default)
        endif
    endif
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo