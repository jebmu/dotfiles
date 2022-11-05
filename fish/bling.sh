Vrandom=$((RANDOM % 4))


case $Vrandom in

	0)
	./.config/fish/bunnyfetch
	;;


	1)
	fm6000 -dog -color "blue" --shell=fish -nd
	;;


	2)
	aura -n  'user shell' -c 'c4 c6'
	;;


	3)
	neofetch
	;;

esac
