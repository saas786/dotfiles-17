#
# Git autocompletion for custom scripts
#

_git_delete_branch () { __gitcomp_nl "$(__git_refs)" }
