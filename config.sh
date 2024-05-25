#!/bin/bash
#This script assumes you are using a Debian Linux based OS
#needs to be executed as root

#help flag
while [ -n "$1" ];do
    case "$1" in
        -h) echo "no flags" ;;
    esac
    shift
done

echo "Restructuring Home Directory"
cd ~
mkdir VPN
mkdir uf
mkdir Githubs
mkdir hosting
mkdir temp

cd uf 
mkdir shells
mkdir wordlists
mkdir privesc
mkdir configs

echo "Removing undesired directories"
cd ~
rm -r "Music"
rm -r "Pictures"



echo "changing system variables"
home_path=$(pwd)
export PATH="$PATH:$home_path/Githubs"



echo "Ensuring all desired modules are downloaded"
apt update && apt upgrade
packages=(
    "tldr" #info modules
    "nmap" "whatweb" "dirb" "cewl" "gobuster" "ffuf" #enumeration modules
    "sqlmap" #owasp top 10 tools
    "wpscan" "hydra" #automatic web testing
    "john" "hashcat" #password cracking
    "aircrack-ng" #other
    )
for package in "${packages[@]}"; do
    apt install -y "$package"
done

#! maybe make a script that lets you execute nonbinaries with just the name by mapping it to needed software
echo "Downloading modules from Github"
cd ~/Githubs/
github_packages=(
    #owasp top 10
    "https://github.com/enjoiz/XXEinjector.git"

)
for package in "${github_packages[@]}"; do
    git clone "$package"
done

echo "Making all gits into scripts"
#write a function
#! maybe make a script that lets you execute nonbinaries with just the name by mapping it to needed software

echo "Download Wordlists"
if [[ $(find / -type d -iname 'seclists' | wc -l) -gt 0 ]]; then
    echo "Directory 'seclists' exists."
else
    echo "Directory 'seclists' does not exist."
fi

echo "Download privesc"
#wget
echo "Download payloads"