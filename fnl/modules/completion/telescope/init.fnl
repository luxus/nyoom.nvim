(import-macros {: use-package! : pack} :macros)

; fuzzy finder
(use-package! :nvim-lua/telescope.nvim
              {:nyoom-module completion.telescope
               :require :Telescope
               :requires [(pack :nvim-telescope/telescope-project.nvim {:opt true})
                          (pack :cljoly/telescope-repo.nvim {:opt true})
                          (pack :jvgrootveld/telescope-zoxide {:opt true})
                          (pack :nvim-telescope/telescope-ui-select.nvim {:opt true})
                          (pack :nvim-telescope/telescope-file-browser.nvim {:opt true})
                          (pack :nvim-telescope/telescope-packer.nvim {:opt true})
                          (pack :nvim-telescope/telescope-media-files.nvim {:opt true})]})
