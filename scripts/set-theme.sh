#!/bin/bash

set -e

THEMES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )/../urxvt"

while getopts "s:l" opt; do
    case "$opt" in
        s)
            theme=$OPTARG
            
            xrdb -load "$THEMES/base.theme"
            xrdb -merge "$THEMES/$theme"
        ;;
        l)
            for theme in $(ls "$THEMES"); do
                [[ $theme == "base.theme" ]] || { echo $theme; }
            done
        ;;
        \?)
            echo "Usage: $0 [-l] [-s theme]"
    esac
done