# Laravel5 basic command completion
_laravel5_get_command_list () {
	mamphp artisan --no-ansi | sed "1,/Available commands/d" | awk '/^ +[a-z]+/ { print $1 }'
}

_laravel5 () {
  if [ -f artisan ]; then
    compadd `_laravel5_get_command_list`
  fi
}

compdef _laravel5 artisan
compdef _laravel5 la5

#Alias
alias la5='mamphp artisan'

alias la5cache='mamphp artisan cache:clear'
alias la5routes='mamphp artisan route:list'
alias la5vendor='mamphp artisan vendor:publish'
