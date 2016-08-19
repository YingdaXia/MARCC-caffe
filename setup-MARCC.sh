# Install linux brew

# User specific aliases and functions
module load slurm 
module load git
module load ruby
module load cuda
module load leveldb/gcc
module load opencv/gcc
module load gcc # this is newer than default

export EDITOR=vim

export PATH="$HOME/.linuxbrew/sbin":"$HOME/.linuxbrew/bin":$PATH
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export CAFFE_ROOT=$HOME/bin/caffe
export LD_LIBRARY_PATH=$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH


alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -iv'

alias getgpu='interact -n 2 -p gpu -g 1'
# export CPATH=$INCLUDE:$CPATH
export HOMEBREW_BUILD_FROM_SOURCE=1
