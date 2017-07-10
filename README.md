# Ninja download chrome extension download url redirector
Simple bash script to capture and redirect download url sent from ninja download chrome extension to your own favorite downloader

Ninja Downloader is an amazing downloader but unfortunately it does not support linux at the time of this was written.

One cool features I liked about ND was that you could right click in chrome and click "download with ninja downloader", with the help a small chrome extension ND provided. I was able to look at the source code of the chrome extension. I relized that it was just sending the download url over xml header (xhr) and ND listened for this and poof magic!

## Dependencies 
jq - json parser
sed - text manipulator
netcat - network utilty
notify-send - desktop notifcations
bash
echo
your favorite command line downloader

## Credits
I wrote the code my self but I reused some bits and peices from other projects.

bash http server: https://github.com/benrady/shinatra
