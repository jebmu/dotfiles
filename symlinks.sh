#!/bin/bash


read -p "This script will only work if you cloned the dotfiles repo to your home directory and it will delete your current configuration files, do you still wish to proceed? y/n:" yn
echo
    case $yn in
        [Yy]* ) rm -rf /home/"$USER"/.config/fish;
        		ln -s /home/"$USER"/dotfiles/fish /home/"$USER"/.config/;
        		rm -rf /home/"$USER"/.config/kitty;
        		ln -s /home/"$USER"/dotfiles/kitty /home/"$USER"/.config/;
        		rm -rf /home/"$USER"/.config/micro;
        		ln -s /home/"$USER"/dotfiles/micro /home/"$USER"/.config/;
        		rm -rf /home/"$USER"/.config/mpv;
        		ln -s /home/"$USER"/dotfiles/mpv /home/"$USER"/.config/;
        		rm -rf /home/"$USER"/.config/nimdow;
        		ln -s /home/"$USER"/dotfiles/nimdow /home/"$USER"/.config/;
        		rm -rf /home/"$USER"/.config/rofi;
        		ln -s /home/"$USER"/dotfiles/rofi /home/"$USER"/.config/;
        		rm -rf /home/"$USER"/.config/sxhkd;
        		ln -s /home/"$USER"/dotfiles/sxhkd /home/"$USER"/.config/;
        		rm -rf /home/"$USER"/.config/starship.toml;
        		ln -s /home/"$USER"/dotfiles/starship.toml /home/"$USER"/.config/;
        		chmod +x /home/"$USER"/dotfiles/scripts/terminal-bling;
        		chmod +x /home/"$USER"/dotfiles/scripts/bunnyfetch;
			chmod +x /home/"$USER"/dotfiles/scripts/statusbar;
			rm -rf /home/"$USER"/scripts/;
			ln -s /home/"$USER"/dotfiles/scripts /home/"$USER"/;
			rm -rf /home/"$USER"/.config/hypr;
			ln -s /home/"$USER"/dotfiles/hypr /home/"$USER"/.config/;
			rm -rf /home/"$USER"/.config/dunst;
			ln -s /home/"$USER"/dotfiles/dunst /home/"$USER"/.config/;;
        	
     	[Nn]* ) exit;;
        * ) echo "Please answer with y or n."; exit;;
    esac
