#!/bin/bash

echo "Jorma on vankilassa, koska hän virtsasi maakaivon kannelle humalassa"
echo "Auta oikeusmurhan uhriksi joutunutta Jormaa pakenemaan vankilasta"
echo "Voit ohjata Jormaa komennoilla, kuten <katso ympärillesi> <ota esine> <käytä esinettä> <mene> jne."
echo "Olet Jorma"

paikka=selli
ikkunalla=False
ovella=False
avain=False

echo -n ">> "
read input

while [[ $paikka == "selli" ]];
do
	if [[ $input == "katso ympärillesi" ]]; then
		unset input

		echo "Olet sellissä, jonka toisessa seinässä  on ikkuna ja toisessa ovi."
		echo "Istut kapealla sängyllä, jota vastapäätä on WC pönttö"

		echo -n ">> "
		read input

	
	elif [[ $input == "mene paskalle" ]]; then
		unset input
		paskottu=True
		echo "Paskalla"
		sleep 3m

		echo "Nytt on suali tyhjä"

		echo -n ">> "
		read input
	
	
	elif [[ $input == "mene ovelle" ]]; then
		unset input
		ovella=True
		ikkunalla=False

		echo "Kävellään..."
		sleep 0.3
		echo "Ovella"

		echo -n ">> "
		read input
	
	
	elif [[ $input == "katso ovea" && $ovella == "True" && $ikkunalla == "False" ]]; then
		unset input

		echo "Ovi on rautaa ja siinä on pieni ikkuna jossa on kalterit"
		echo "Ovessa on suuri lukko ja se on lukittu"

		echo -n ">> "
		read input

	
	elif [[ $input == "käytä avainta oveen" && $ovella == "True" && $ikkunalla == "False" && $avain == "True" ]]; then
		unset input
		auki=True

		echo "Ovi aukesi"
		echo "Sulje ovi nopeasti, ennen kuin vartija huomaa!"

		echo -n ">> "
		read input


	elif [[ $input == "sulje ovi" && $auki == "True" ]]; then
		unset input
		auki=False

		echo "Ovi on nyt kiinni"
	
		echo -n ">> "
		read input

	elif [[ $input == "mene ovesta" && $auki == "True" ]]; then
		unset input
		paikka=käytävä

		echo "Olet nyt käytävässä"

		echo -n ">> "
		read input
	
	
	elif [[ $input == "katso ikkunasta" && $ovella == "True" && $ikkunalla == "False" ]]; then
		unset input

		echo "Näet käytävän jota kiertää aseistettu vartija"
		echo "Hän ohittaa sellin oven 2 minuutin välein"
		
		echo -n ">> "
		read input
	

	elif [[ $input == "mene ikkunalle" ]]; then
		unset input
		ikkunalla=True
		ovella=False

		echo "Kävellään..."
		sleep 0.3
		echo "Ikkunalla"

		echo -n ">> "
		read input
	
	
	elif [[ $input == "katso ikkunasta" && $ikkunalla == "True" || $input == "katso ikkunasta ulos" && $ikkunalla == "True" || $input == "katso ulos" && $ikkunalla == "True" ]]; then
		unset input

		echo "Ikkunan kaltereiden välistä näkyy vankilan muuri"

		echo -n ">> "
		read input
	
	
	elif [[ $input == "katso ikkunasta vasemmalle" && $ikkunalla == "True" && $ovella == "False" ]]; then
		unset input

		echo "Ikkunan ulkopuolella seinässä vasemmalla on naula, josta roikkuu avain!"

		echo -n ">> "
		read input

	
	elif [[ $input == "ota avain" && $ikkunalla == "True" && $ovella == "False" ]]; then
		unset input
		avain=True

		echo "Avain otettu"

		echo -n ">> "
		read input	
	

	else
		echo "Ma ei ummarrrra"
		echo -n ">> "
		read input
	fi
done


while [[ $paikka == "käytävä" ]];
do
	if [[ $input == "katso ympärillesi" ]]; then
		unset input

		echo "Olet käytävässä. Käytävä jatkuu oikealle, vasemmalle, ja eteenpäin."
		echo "Voit valita, mihin suuntaan menet"

		echo -n ">> "
		read input

	
	elif [[ $input == "mene oikealle" ]]; then
		unset input

		echo "Törmäät vartijaan, ja hän ampuu sinua mahaan."
		sleep 0.7
		echo "Kuolet."
		sleep 1
		echo "Aloita peli alusta jatkaaksesi"
		break

	else
		unset input
		echo "Ma ei ummarrrra"
		echo -n ">> "
		read input
	fi
done
