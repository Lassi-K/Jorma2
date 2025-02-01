#!/bin/bash

echo "Jorma on vankilassa, koska hän virtsasi maakaivon kannelle humalassa"
echo "Auta oikeusmurhan uhrina toimivaa Jormaa pakenemaan vankilasta"
echo "Voit ohjata Jormaa komennoilla, kuten <katso ympärillesi> <ota esine> <käytä esinettä> <mene> jne."
echo "Olet Jorma"

paikka=selli
ikkunalla=False
ovella=False

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

		echo "Avaimet otettu"

		echo -n ">> "
		read input	
	

	else
		echo "Ma ei ummarrrra"
		echo -n ">> "
		read input
	fi
done

