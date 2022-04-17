#!/bin/bash

sudo apt-get install figlet

banner(){
    figlet M4r0s1 - Tool
}

function main(){
    
    banner
    sleep 0.2

    echo -e "${blue}"
    echo -e "1 -> Instalar dependencuas necesarias"
    sleep 0.2
    
    echo
    echo -e "2 --> Instalar i3 y configurar"
    sleep 0.2
    
    echo
    echo -e "3 --> Desinstalar i3"
    sleep 0.2
    
    echo
    echo -e "4 --> Poner i3 de fábrica"
    sleep 0.2

    echo
    echo -e "5 -> Salir."
    sleep 0.2

    echo
    read -p "-> " opcion
    echo -e "${end}"

    if [ "$opcion" == "1" ]; then
	dependeces
	fi

    if [ "$opcion" == "2" ]; then
	i3
	fi

    if [ "$opcion" == "3" ]; then
	deli3
	fi

    if [ "$opcion" == "4" ]; then
	fabric
	fi

}

i3(){
    sudo apt update
    
    sudo apt upgrade


	sudo apt-get install figlet
	
	figlet Se esta instalando i3
	
	sudo apt-get install i3
	
	sudo apt-get install polybar
	
	figlet Se esta configurando
	
	git clone https://github.com/M4r0s1/I3.git
	
	cd I3
	
	mkdir $HOME/.i3
	
	mkdir $HOME/.i3/rofithemes
	
	mkdir $HOME/.i3/wallpapers
	
	figlet Se estan pasando archivos
	
	mv 01.png $HOME/.i3/wallpapers
	
	mv arthur.rasi $HOME/.i3/rofithemes

}

dependeces(){
    figlet Instalando dependencias

    sudo apt update 

    sudo apt upgrade

    sudo apt-get install i3

    sudo apt-get install curl

    sudo apt-get install jq

    sudo apt-get install polybar
}

deli3(){
    sudo apt-get --purge remove polybar

    sudo apt-get remove --auto-remove i3-wm
}

fabric(){
    sudo apt-get remove --auto-remove i3-wm

    rm -r ~/.i3

    sudo apt install i3
}

config(){
    cd $HOME

    cd ~/.i3
}

if [ "$(id -u)" == "0" ]; then
	
    echo -e "\n${red}[!] Hay que ser root para ejecutar la herramienta${end}"
	echo
	exit 1
else
	main
fi
