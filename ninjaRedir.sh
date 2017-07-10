#!/bin/bash
while true; 
do
url=$(echo -en "HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\n${2:-"OK"}\r\n" | nc -l localhost 35648 | sed -n '$p'| jq -r .links | sed -n '1d; $d; p' | jq -r .url)

#place your command line downloader here, this is an example with axel cli downloader
axel -a $url && notify-send "Download finished!\
$url" &
done
