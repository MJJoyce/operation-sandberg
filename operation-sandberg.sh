#!/usr/bin/env bash

function terminator {
    cat terminator.txt
}

function progress {
    printf "#                                                                            1%%\r"
    sleep 1
    printf "#####                                                                        6%%\r"
    sleep 1
    printf "##################                                                          24%%\r"
    sleep 2
    printf "########################################                                    53%%\r"
    sleep 1
    printf "#######################################################                     74%%\r"
    sleep 1
    printf "#####################################################################       93%%\r"
    sleep 1
    printf "#########################################################################   99%%\r"
    sleep 1
}

terminator
echo "Initiating Operation Sandberg ..."
progress

echo
printf 'Confirm that Operation Sandberg is a go [y/N] : '
read -r opt

if [ "$opt" != "y" ]; then
    opt="n"
fi

if [ "$opt" == "y" ]; then
    echo "You're now going Full Sandberg ..."
else
    echo "Standing down ..."
fi
