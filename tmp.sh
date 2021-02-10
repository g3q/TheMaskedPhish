###Created by loctang###
###I am not held accountable for your actions, this is made for penetration testers###

#Checking URL for HTTP or HTTPS
url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m You MUST use the full URL, this means with the https:// etc..\e[0m"
            exit 1
        fi
    fi
}

#Information on software & Main Cod
echo -e "\n\e[1;31;42m ︵‿‿୨The Masked Phish୧‿︵‿ \e[0m"
echo -e "\n\e[1;31;42m ┌────────────────────────────┐ \e[0m"
echo -e "\e[1;31;42m   │This tool was created for   │ \e[0m"
echo -e "\e[1;31;42m   │masking urls with ANY other │  \e[0m"
echo -e "\e[1;31;42m   │domain name, 15v is NOT     │ \e[0m"
echo -e "\e[1;31;42m   │held responsible for misuse │ \e[0m"
echo -e "\e[1;31;42m   └────────────────────────────┘ \e[0m \n"
echo -e "\e[40;38;5;82m Please Visit My Instagram \e[30;48;5;82m https://instagram.com/loctang \e[0m"
echo -e "\e[30;48;5;82m    Created by \e[40;38;5;82m 15v \e[0m \n\n"
echo -e "\e[1;31;42m Locking phish URL \e[0m \n"
echo -n "Enter the full phishing URL (ex. https://url.com): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m Setting the mask \e[0m"
echo 'Enter the domain you wish to mask the phish URL with, ex. https://fbi.gov ) :'
echo -en "\e[32m--->\e[0m "
read mask
url_checker $mask
echo -e '\nEnter extention words on the masked URL, it will look like this when you are done; https://domain.com-word-word-word '
echo -e "\e[31mYou CAN'T use spaces between words, you can use almost any other symbol \e[0m"
echo -en "\e[32m--->\e[0m "
read words
echo -e "\nCreating masked URL\n"
final=$mask-$words@$shorter
echo -e "Here is the Masked URL, send this to your target:\e[32m ${final} \e[0m\n"
