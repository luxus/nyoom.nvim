(import-macros {: use-package! : map!} :macros)

(use-package! :gbprod/yanky.nvim {:call-setup yanky})
(map! [n] "p" "<Plug>(YankyPutAfter)")
(map! [n] "P" "<Plug>(YankyPutBefore)")
(map! [n] "gp" "<Plug>(YankyGPutAfter)")
(map! [n] "gP" "<Plug>(YankyGPutBefore)")
(map! [n] "<c-n>" "<Plug>(YankyCycleForward)")
(map! [n] "<c-p>" "<Plug>(YankyCycleBackward)")

