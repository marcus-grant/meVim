#!/bin/bash
################################################################################
# Install.sh
# by Marcus Grant
# 2017 - 09 - 20
# marcus.grant@patternbuffer.io
# patternbuffer.io
# 
# A script that uses git & bash to clone all the appropriate repos & sets
# soft links to the correct places for the system to redirect to these dotfiles
################################################################################

# main execution block
function main() {
	# paths
	dots_path=$(config-path)
	link_path=$HOME/.config/vimfiles #TODO: Change to XDG_BASE_CONFIG
}

function config-path() {
	# foolproof way to figure out where this script is placed
	source="${BASH_SOURCE[0]}"
	while [ -h "$source" ]; do # resolve $source til file is no longer link
	  dir="$( cd -P "$( dirname "$source" )" && pwd )"
	  source="$(readlink "$source")"
	  # if $source was a relative symlink, we need to resolve it relative
	  # to the path where the symlink file was located
	  [[ $source != /* ]] && source="$dir/$source"
	done
	echo "$( cd -P "$( dirname "$source" )" && pwd )" #dir has script loc'n
}


# main execution after reading in all functions - for forward declaration
