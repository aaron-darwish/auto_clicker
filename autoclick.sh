# To find a specific location, use: "xdotool getmouselocation"

let stop=0
while [ $stop -eq 0 ]; do
#    xdotool mousemove 1857 492 click 1 &
#    sleep 1
#    xdotool mousemove 1703 249 click 1 &
#    sleep 1 
#    xdotool mousemove 1820 335 click 1 &
#    sleep 1
#    xdotool mousemove 2028 282 click 1 &
#    sleep 3 
    xdotool mousemove 875 959 click 1 &
    
    sleep 0.1
    testIt=$(xset q | rg 'Caps' | sed -n 's/.*\(Caps Lock:   on\).*/\1/p')

    if [ "$testIt" = "" ]; then
        stop=1 && echo "Stop now!"
    fi

done

echo $stop

