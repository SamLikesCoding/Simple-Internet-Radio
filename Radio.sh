#!/bin/bash

cd /home/sam/Desktop/InternetRadio

echo "============================================================="
echo "|  Internet Radio - Using mplayer                           |"
echo "|  Created by : Sarath Peter                                |"
echo "============================================================="
echo
echo "Available Stations :"
echo " Ch.no   Channel"
echo "------------------------------------------------------------"
cat URL_List | grep BBC
echo
echo
echo " Select Station : " 
read station
case $station in
    "1a") mplayer $(cat URL_List | grep radio1_mf_p)
    ;;
    "1b") mplayer $(cat URL_List | grep radio1xtra_mf_p)
    ;;
    "2") mplayer $(cat URL_List | grep radio2_mf_p)
    ;;
    "3") mplayer $(cat URL_List | grep radio3_mf_p)
    ;;
    "4a") mplayer $(cat URL_List | grep radio4fm_mf_p)
    ;;
    "4b") mplayer $(cat URL_List | grep radio4lw_mf_p)
    ;;
    "4c") mplayer $(cat URL_List | grep radio4extra_mf_p)
    ;;
    "5a") mplayer $(cat URL_List | grep radio5live_mf_p)
    ;;
    "5b") mplayer $(cat URL_List | grep radio5extra_mf_p)
    ;;
    "6") mplayer $(cat URL_List | grep radio6music_mf_p)
    ;;
    "7") mplayer $(cat URL_List | grep asianet_mf_p)
    ;;
    "8") mplayer $(cat URL_List | grep ws_eieuk)
    ;;
    "9") mplayer $(cat URL_List | grep einws)
    ;;
esac
echo "Streaming $radio "