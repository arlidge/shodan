#!/bin/bash

while true; do
    clear
    echo -e "\033[31m"
    figlet -w 200 -f poison "Shodan"
    echo -e "\033[0m"
    echo -e "\033[32mA tool to utilize nmap\033[0m"

    echo ""
    echo -e "\033[33mChoose an option:\033[0m"
    echo -e "\033[34m1.\033[0m Shodan Host Info"
    echo -e "\033[34m2.\033[0m Shodan Query"
    echo -e "\033[34m3.\033[0m Shodan queries from txt file"
    echo -e "\033[34m4.\033[0m Shodan search domain"
    echo -e "\033[34m5.\033[0m Shodan Scan IP Block"
    echo -e "\033[34m6.\033[0m Shodan Live Radar"
    echo -e "\033[34m7.\033[0m Exit"

    read -p "Enter your choice: " choice
    echo ""

    case $choice in
        1)
            read -p "Enter IP address to scan: " ip_address
            shodan host $ip_address
            echo ""
            read -n 1 -s -r -p "Press any key to go back to main menu..."
            ;;
        2)

            echo -e "\033[32mShodan Query\033[0m"
            ./shodan_query.sh
            echo ""
            read -n 1 -s -r -p "Press any key to go back to main menu..."
            ;;
        3)
            read -p "Loading Queries from txt file "
            echo ""
            ./shodan_query.sh queries.txt
            echo ""
            read -n 1 -s -r -p "Press any key to go back to main menu..."
            ;;
        4)
            read -p "Enter Domain " domain_
            shodan domain  $domain_
            echo ""
            read -n 1 -s -r -p "Press any key to go back to main menu..."
            ;;
        5)
            read -p "Enter IP address to scan " ip_address
            shodan scan $ip_address
            echo""
            read -n 1 -s -r -p "Press any key to go back to main menu..."
            ;;
        6)  read -p "Radar Activated "
            shodan radar
            echo""
            read -n 1 -s -r -p "Press any key to go back to main menu..."
            ;;

        7)  echo -e "\033[32mExiting...Goodbye\033[0m"
            exit 0
            ;;
        *)
            echo -e "\033[31mInvalid option, please try again.\033[0m"
            read -n 1 -s -r -p "Press any key to go back to main menu..."
            ;;
    esac
done
