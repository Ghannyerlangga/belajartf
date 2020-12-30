#!/bin/bash
declare -a service=(nginx-ingress podinfo redis wordpress)
success=()

function nginx-ingress(){
    cd ${orig_cwd}/nginx-ingress-controller
    terraform-run
}

function podinfo(){
    cd ${orig_cwd}/podinfo
    terraform-run
}

function redis(){
    cd ${orig_cwd}/redis
    terraform-run
}

function wordpress(){
    cd ${orig_cwd}/wordpress
    terraform-run
}

function terraform-run(){
    terraform init
    terraform plan
    terraform apply -auto-approve
}

function main(){
    readonly orig_cwd="$PWD"
    for i in "${service[@]}"
    do
        read -p "Do you wish to install $i program? " yn
        case $yn in
            [Yy]* ) echo "Install $i"; success+=($i); $i;;
            [Nn]* ) echo "Skip Installing $i";;
            * ) echo "Please answer yes or no.";;
        esac
    done
    echo "Program Installed :"
    for value in "${success[@]}"
    do
        echo "- $value"
    done
}

main