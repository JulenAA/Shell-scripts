#!/bin/bash

case 1 in
	$(($1 <= -125000))*)
		periodo="Paleolítico inferior"
		;;
	$((-125000 < $1 && $1 <= -35000)))
		periodo="Paleolítico medio"
		;;
	$((-35000 < $1 &&  $1 <= -10000))*)
        	periodo="Paleolítico superior"
	        ;;
	$((-10000 < $1 &&  $1 <= -5500))*)
        	periodo="Mesolítico"
        	;;
	$((-5500 < $1 &&  $1 <= -4000))*)
        	periodo="Neolítico"
        	;;
	$((-4000 < $1 &&  $1 <= -3000))*)
        	periodo="Edad del Cobre"
        	;;
	$((-3000 < $1 &&  $1 <= -2000))*)
        	periodo="Edad del Bronce"
        	;;
	$((-2000 < $1 &&  $1 <= -1000))*)
        	periodo="Edad del Hierro"
        	;;
	*)
		periodo="Historia"
		;;
esac
echo "Te encuentras en el $periodo"
