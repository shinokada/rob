#!/usr/bin/env bash

GIST_URL_FILE="$SCRIPT_DOT_DIR/gisturl"

create_gist() {
    #
    FAV=$(_list_intro)
    # echo "${FAV_ARR[@]}"
    ARR=()
    # add fav list to ARR array
    for file in $FAV; do
        ARR+=("${FAVORITE_PATH}/${file}.json")
    done
    # echo "${ARR[@]}"
    # check GIST_URL exists and has a length greater than zero., if so ask to update else create a Gist
    # if [[ ! -s $GIST_URL_FILE ]]; then
    #     # without mapfile
    #     arr=()
    #     IFS=$'\n' read -ra arr -d '' <"$dotties_file"
    gh gist create -d "Terminal radio favorite lists." "${ARR[@]}" >"$GIST_URL_FILE"
    echo "Created a secret Gist"
    read -r gist_url <"$GIST_URL_FILE"
    python -m webbrowser "$gist_url"

    # fi
    gist_menu
}

download_gist() {
    echo download a gist
}

gist_menu() {
    echo -ne "
$APP_NAME LIST MENU:
$(greenprint '1)') Create a gist
$(greenprint '2)') Go back to the main menu
$(greenprint '0)') Exit
$(blueprint 'Choose an option:') "
    read -r ans
    case $ans in
    1)
        create_gist
        gist_menu
        ;;
    2)
        menu
        ;;
    0)
        yellowprint "Bye-bye."
        exit 0
        ;;
    *)
        redprint "Wrong option."
        gist_menu
        ;;
    esac
}
