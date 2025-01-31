#!/bin/bash

echo "Jorma on vankilassa, koska hän virtsasi maakaivon kannelle humalassa"
echo "Auta oikeusmurhan uhrina toimivaa Jormaa pakenemaan vankilasta"
echo "Voit ohjata Jormaa komennoilla, kuten <katso ympärillesi> <ota esine> <käytä esinettä> <mene> jne."
echo "Olet Jorma"

paikka=selli

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
		echo "Paskalla"
		sleep 3m

		echo "Nytton suali tyhjä"

		echo -n ">> "
		read input
	
	
	elif [[ $input == "mene ovelle" ]]: then
		unset input
		ovella=True

		echo "Kävellään..."
		sleep 0.3
		echo "Ovella"

		echo -n ">> "
		read input

	
	elif [[ $input == "mene ikkunalle" ]]; then
		unset input
		
		echo "Kävellään..."
		sleep 0.3
		echo "Ikkunalla"

		echo -n ">> "
		read input
	fi
done
