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
		paskannettu=True
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

	
	elif [[ $input == "mene vasemmalle" ]]; then
		unset input
		echo "Törmäät vartijaan, ja hän ampuu sinua mahaan."
		sleep 0.7
		echo "Kuolet."
		sleep 1
		echo "Aloita peli alusta jatkaaksesi"
		break

	
	elif [[ $input == "mene oikealle" ]]; then
		unset input
		paikka=oikea
		echo "Tapaat toisen sellistään karanneen vangin, ja päätätte paeta yhdessä"
		echo -n ">> "
		read input
	
	
	elif [[ $input == "mene oikealle" && $paskannettu == "True" ]]; then
		unset input
		paikka=oikea
		echo "Tapaat toisen sellistään karanneen vangin, joka kysyy:"
		sleep 0.5
		echo "-Miksi sinulla ei ole housuja jalassa?"
		sleep 0.5
		echo "-Hups, unohdin nostaa ne käytyäni paskalla"
		echo "Päätätte paeta yhdessä"
		echo -n ">> "
		read input
	
	
	elif [[ $input == "mene eteenpäin" ]]; then
		unset input
		umpikuja=True
		echo "Umpikuja"
		echo -n ">> "
		read input
	
	
	elif [[ $input == "mene takaisin" && $umpikuja == "True" ]]; then
		unset input
		echo "Takaisin ovella"
		echo -n ">> "
		read input


	else
		unset input
		echo "Ma ei ummarrrra"
		echo -n ">> "
		read input
	fi
done


while [[ $paikka == "oikea" ]];
do	

	if [[ $input == "katso ympärillesi" ]]; then
		unset input
		echo "Olet toisen vangin kanssa käytävässä, joka jatkuu eteenpäin."
		echo "Aiotte paeta yhdessä"
		echo -n ">> "
		read input
	
	
	elif [[ $input == "mene eteenpäin" ]]; then
		unset input
		vartija=tulossa
		echo "Tulette käytävän päähän, jossa on ovi, ja ovessa kaltereilla varustettu ikkuna."
		sleep 1
		echo "Käytävästä kuuluu ääniä"
		sleep 1
		echo "Sieltä tulee vartija, mutta hänellä ei ole asetta"
		echo -n ">> "
		read input
		

	elif [[ $input == "lyö vartijaa" && $vartija == "tulossa" ]]; then
		unset input
		vartija=kaatui
		echo "Lyönti osuu vartijaa päähän, ja häneltä lähtee taju"
		echo -n ">> "
		read input
		
		
	elif [[ $input == "tutki vartijan taskut" && $vartija == "kaatui" ]]; then
		unset input
		echo "Vartijan taskusta löytyi avain!"
		echo -n ">> "
		read input
	

	elif [[ $input == "käytä avainta oveen" ]]; then
		unset input
		auki=True
		echo "Ovi aukesi"
		echo -n ">> "
		read input

	
	elif [[ $input == "mene ovesta" && $auki == "True" ]]; then
		unset input
		paikka=varasto
		echo "Tulette pimeään varastoon"
		echo -n ">> "
		read input

		
	else
		unset input
		echo "Ma ei ummarrrra"
		echo -n ">> "
		read input
	fi
done


while [[ $paikka == "varasto" ]];
do
	if [[ $input == "katso ympärillesi" ]]; then
		unset input
		echo "Olette pimeässä varastossa, jossa on pahvilaatikoita ja ikkuna ja katossa on ilmastointiräppänä"
		echo -n ">> "
		read input
	

	elif [[ $input == "mene ikkunalle" ]]; then
		unset input
		ikkunalla=True
		echo "Kävellään..."
		sleep 1
		echo "Ikkunalla"
		echo -n ">> "
		read input

	
	elif [[ $input == "katso ikkunasta" && $ikkunalla == "True" ]]; then
		unset input
		echo "Ikkunasta näkyy vankilan muuri"
		echo -n ">> "
		read input
	

	elif [[ $input == "katso räppänää" || $input == "katso ilmastointiräppänää" ]]; then
		unset input
		echo "Siinä on ritilä, joka on kiinni neljällä ruuvilla"
		echo -n ">> "
		read input
	

	elif [[ $input == "avaa räppänä" || $input == "avaa ilmastointiräppänä" ]]; then
		unset input
		echo "Se on kiinni neljällä ruuvilla"
		echo -n ">> "
		read input

		
	elif [[ $input == "katso pahvilaatikoita" ]]; then
		unset input
		echo "Laatikoita on monta"
		echo -n ">> "
		read input


	elif [[ $input == "avaa pahvilaatikko" || $input == "avaa laatikko" ]]; then
		unset input
		laatikko=auki
		echo "Avataan..."
		sleep 1
		echo "Siellä on työkaluja mm. saha, vasara, ja ruuvimeisseli"
		echo -n ">> "
		read input


	elif [[ $input == "ota ruuvimeisseli" && $laatikko=auki || $input == "ota meisseli" && $laatikko == "auki" ]]; then
		unset input
		echo "Meisseli otettu"
		echo -n ">> "
		read input
	
	else
		echo "Ma ei ummarrrra"
		echo -n ">> "
		read input
	fi
done
