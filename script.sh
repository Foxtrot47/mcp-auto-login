while true
do
    user="$( tr -dc A-Za-z0-9 </dev/urandom | head -c 5 )"
    mono MinecraftClient.exe $user "-" HyperOt.aternos.me --Main.autorespawn=true &
    sleep $( shuf -i 120-600 -n 1 )s
    sudo pkill -f MinecraftClient.exe
    sleep $( shuf -i 1-120 -n 1 )s
done