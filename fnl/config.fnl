(require-macros :macros)
(local {: autoload} (require :core.lib.autoload))
(local {: after : setup} (autoload :core.lib.setup))
;; You can use the `colorscheme` macro to load a custom theme, or load it manually
;; via require. This is the default:

(set! background :dark)
(colorscheme carbon)

;; The set! macro sets vim.opt options. By default it sets the option to true 
;; Appending `no` in front sets it to false. This determines the style of line 
;; numbers in effect. If set to nonumber, line numbers are disabled. For 
;; relative line numbers, set 'relativenumber`

(set! guifont MonoLisa\ Nerd\ Font:h15)

(set! relativenumber)
(set! guicursor
      "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175")
;; The let option sets global, or `vim.g` options. 
;; Heres an example with localleader, setting it to <space>m

(let! maplocalleader " m")

;; map! is used for mappings
;; Heres an example, preseing esc should also remove search highlights

(map! [n] :<esc> :<esc><cmd>noh<cr>)
(map! [n] :<leader>pv vim.cmd.Ex)
(map! [v] :J ":m '>+1<cr>gv=gv")
(map! [v] :K ":m '<-2<CR>gv=gv")
(map! [n] :J "mzJ`z")
(map! [n] :<C-d> :<C-d>zz)
(map! [n] :<C-u> :<C-u>zz)
(map! [n] :n :nzzzv)
(map! [n] :N :Nzzzv)
;; sometimes you want to modify a plugin thats loaded from within a module. For 
;; this you can use the `after` function

(after :neorg
       {:load {:core.norg.dirman {:config {:workspaces {:main "~/neorg"}}}}})
