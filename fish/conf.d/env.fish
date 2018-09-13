# set -g -x FZF_DEFAULT_COMMAND 'ag -g ""'
if not set -q __fish_path_set
  set -g __fish_path_set 1
  set -U fish_user_paths ~/.local/bin ~/.fzf/bin ~/.Key4050/bin ~/.asdf/shims

  set -g -x EDITOR /usr/bin/vim
  set -g -x GIT_EDITOR $EDITOR
  set -g -x GOPATH ~/.gopath
end
