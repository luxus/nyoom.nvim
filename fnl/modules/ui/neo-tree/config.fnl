
(local {: autoload} (require :core.lib.autoload))
(local {: setup} (require :core.lib.setup))

(setup :neo-tree
        {:default_component_configs
            {:icon
                {:FolderClosed ""
                 :FolderEmpty ""
                 :FolderOpen ""}}
            :git_status {:symbols
                            {:added ""
                                :modified ""
                                :deleted "✖"
                                :renamed ""
                                :untracked ""
                                :ignored "◌"
                                :unstaged "✗"
                                :staged "✓"
                                :conflict ""}}})
