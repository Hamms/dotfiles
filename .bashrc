# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# All configurations are organized into .bashrc files in the .bashrc.d
# directory
for file in $HOME/.bashrc.d/*.bashrc; do
  source $file
done
