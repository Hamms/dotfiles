# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# after every command:
#   append to the global history (so our commands get communicated to others)
#   clear the local history (so we don't load history twice)
#   reload from the global history (so others' commands get communicated to us)
# so coexisting terminals can share history
export PROMPT_COMMAND='history -a; history -c; history -r'
