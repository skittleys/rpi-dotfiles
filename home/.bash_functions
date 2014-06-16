# mkdir and cd into it
function mkdcd {
        [[ -n $1 ]] && mkdir -p "$1" && builtin cd "$1"
}

# quick description of 1 package
# apt-cache search can also provide 1-line descriptions, but does so for every package containing that word in the description or name
# apt-cache show and apt-cache package show info only for that package, but there's TONS of info
function desc {
        if [[ -n $1 ]]; then
                for i in $@
                do 
                        res=$(apt-cache show $i | grep -m 1 "Description\(-en\)\?:" | sed "s/Description\(-en\)\?: //")
                        echo -e "\e[33m$i\e[0m: $res"
                done
        fi
}
