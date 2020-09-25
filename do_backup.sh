#/bin/bash

usage() {
    if [ $# -lt 1 ]; then
        echo "usage: $0 arg"
        return 1    # Fehler
    fi

    return 0        # ok
}


backup_dir1() {
    akt_data=$(date +%F_%H-%M)
    cd ~/my
    zip -r my_dir_${akt_data}.zip my_dir > /dev/null
}

backup_dir2() {
    akt_data=$(date +%F_%H-%M)
    cd ~/my
    zip -r my_dir2_${akt_data}.zip my_dir2> /dev/null
}

backup_dir3() {
    akt_data=$(date +%F_%H-%M)
    cd ~/my
    zip -r my_dir3_${akt_data}.zip my_dir3 > /dev/null
}

### Hauptprogramm

usage()

case "$1" in
    "my_dir")
        echo "do $1.zip" 
        backup_dir1
        ;;
    "my_dir2")
        echo "do $1.zip" 
        backup_dir2
        ;;
    "my_dir3")
        echo "do $1.zip" 
        backup_dir3
        ;;
    "all")
        echo "do my_dir.zip"
        backup_dir1
        echo "do my_dir2.zip"
        backup_dir2
        echo "do my_dir3.zip"
        backup_dir3
        ;;
    *)
        echo "Ende"
        ;;
esac


