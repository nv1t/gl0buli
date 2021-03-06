#!/bin/bash
#===================================================================================
#
# FILE: gl0buli.sh
#
# USAGE: gl0buli.sh language
#
# DESCRIPTION:  Generate some gl0buli! Hide this gl0buli in your code to solve
#		unsolvable or strange errors. Thanks to the gl0buli someone
#		will someday solve YOUR problem! You have to believe!	
#
# AUTHOR: Florian "Cheatha" Köhler, github.com@cheatha.de
#===================================================================================

input=$*

showHelp() {
	echo "USAGE:"
	echo -e "\tgl0buli.sh language\n"
	echo "Available languages:"
	echo -e "\tphp applescript bash c c++ ruby java javascript perl batch"
}


selectLanguage() {
	case $1 in
		php|c|c++|javascript|java)
			tag="doubleslash"
		;;
		applescript)
			tag="doubleminus"
		;;
		bash|ruby|perl)
		tag="hash"
		;;
        batch)
        tag="rem"
        ;;
		-h|*)
		showHelp
		;;
	esac
}

selectTag() {
	case $1 in
                doubleslash)
                        comment="//"
                ;;
                doubleminus)
                        comment="--"
                ;;
                rem)
                    comment="REM"
                ;;
                hash)
                	comment="#"
                ;;
        esac	
}

getRandomness() {
	# we expect bs and count as $1 and $2
	# although we are talking about homeopathy
	# "bs" doesn't mean bullshit here
        random="$(dd if=/dev/urandom bs=$1 count=$2)"
}

rot13() {
	echo $1 | tr A-Za-z N-ZA-Mn-za-m
}


if [ -z $1 ]; then
	showHelp
	exit
fi


selectLanguage $input
selectTag $tag

echo "Gettting our ingredients…"
echo ""
gl0buli="$(getRandomness 32 10)"
echo ""
echo "Done."

echo "This gl0buli has a strong binding to time and space!"
read -p "Where are you now? " LOCATION

time=`date +"%Y-%m-%d %H:%M:%S"`
echo "Your time is now: $time"

echo "Now we merge gl0buli with time and space"
gl0buli="$gl0buli $LOCATION $time"

echo "Insert some special ingredients"
gl0buli="$gl0buli BUY MORE gl0buli!"

echo "We don't want to be too specific about our gl0buli"
gl0buli="$(echo $gl0buli|shasum)"

echo "Get the 'most important parts*' out of our gl0buli."
echo "*(Ancient knowledge from a tibetan monk)"
gl0buli=`echo $gl0buli | cut -c1-10`

echo "Now rotate gl0buli clockwise"
gl0buli="$(rot13 $gl0buli)"

echo "Add some fate. This fate was once a diceroll."
echo "Your fate was selected by a fair diceroll!"
diceroll="5"
echo "Your fate: $diceroll"
gl0buli="$gl0buli$diceroll"

echo "Potentisation of $gl0buli"
echo "This one is suuuuper important!"
for magic in {1..5}
do
	gl0buli+="$gl0buli$magic"
done

echo "Oooops, our gl0buli is too large. Let's the most important…"
echo "Yeah, this ancient monk stuff"
gl0buli=`echo $gl0buli | cut -c1-10`


echo "CONGRATULATION! Now you have your own gl0buli!"
echo ""
echo "$comment"
echo "$comment This is a \$gl0buli. It will help to solve your coding errors!"
echo "$comment Copy this to your code and someday someone will somewhere solve your errors."
echo "$comment Just believe in it!"
echo "$comment $gl0buli"
echo "$comment"
echo ""

echo "Send gl0buli.sh within 24 hours to 12 friends or something really bad will happen!"
echo "Really."

# Destroy all evidence of our holistic variable $gl0buli
unset gl0buli
unset random
unset tag
unset comment


