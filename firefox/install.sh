#!/usr/bin/env bash

SYMLINK=

while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
    -h | --help)
        echo "Usage: $0 [--symlink]"
        exit
    ;;
    -s | --symlink | --link ) SYMLINK=1 ;;
esac; shift; done

for fn in "$HOME"/.mozilla/firefox/*.default ; do
    # shellcheck disable=SC2076
    # shellcheck disable=SC2049
    if [[ "$fn" =~ "*" ]]; then continue; fi

    destDir="$fn/chrome"
    mkdir -p "$destDir"

    echo ""
    echo "$destDir:"

    # Add -f/--force to delete it before writing
    if [[ -n "$FORCE" ]]; then
        rm -f "$destDir/*"
    fi

    fullpathUserChromeCss="$destDir/userChrome.css"
    if [[ -e "$fullpathUserChromeCss" ]] || [[ -h "$fullpathUserChromeCss" ]]; then
        echo -ne " ! This file exists. Replace it? [Yn] "
        read -r choice
        if [[ "$choice" != "n" ]]; then
            rm -f "$fullpathUserChromeCss"
        else
            exit 1
        fi
    fi

    fullpathUserContentCss="$destDir/userContent.css"
    if [[ -e "$fullpathUserContentCss" ]] || [[ -h "$fullpathUserContentCss" ]]; then
        echo -ne " ! This file exists. Replace it? [Yn] "
        read -r choice
        if [[ "$choice" != "n" ]]; then
            rm -f "$fullpathUserContentCss"
        else
            exit 1
        fi
    fi

    if [[ -n "$SYMLINK" ]]; then
        ln -nfs "$(pwd -LP)/userChrome.css" "$fullpathUserChromeCss"
        echo "userChrome.css --> linked..."
    else
        cp userChrome.css "$fullpathUserChromeCss"
        echo "userChrome.css --> copied..."
    fi

    if [[ -n "$SYMLINK" ]]; then
        ln -nfs "$(pwd -LP)/userContent.css" "$fullpathUserContentCss"
        echo "userContent.css --> linked..."
    else
        cp userContent.css "$fullpathUserContentCss"
        echo "userContent.css --> copied..."
    fi

    echo "Restart Firefox to apply!"
done
