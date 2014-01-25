printf "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">
<plist version=\"1.0\">
<dict>
    <key>Label</key>
    <string>net.torchz.hotdog</string>
    <key>ThrottleInterval</key>
    <integer>1</integer>
    <key>WorkingDirectory</key>
    <string>" > hotdog.plist
pwd | tr -d '\n' >> hotdog.plist
printf "</string>
    <key>ProgramArguments</key>
      <array>
      <!--<string>/Users/twer/hotdog/hotdog.sh</string>-->
        <string>./hotdog.sh</string>
      </array>
    <key>StartInterval</key>
    <integer>10</integer>
</dict>
</plist>
" >> hotdog.plist
chmod +x hotdog.plist
launchctl load ./hotdog.plist
