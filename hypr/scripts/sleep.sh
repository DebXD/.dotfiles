swayidle -w timeout 300 'swaylock' \
            timeout 600 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            timeout 1200 'loginctl suspend' \
            before-sleep 'swaylock' &
