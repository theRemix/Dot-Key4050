# set -g -x FZF_DEFAULT_COMMAND 'ag -g ""'
if not set -q __fish_path_set
  set -g __fish_path_set 1
  set -g PATH ~/.Key4050/bin $PATH
  set -g -x GOPATH ~/.gopath
end
