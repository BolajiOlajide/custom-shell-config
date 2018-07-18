function start_server1() {
    osascript &>/dev/null <<EOF
    tell application "iTerm2"
      tell current session of current window
        select
        write text "cd ~/path/to/app"
        write text "app_start_command"
      end tell
    end tell
EOF
}

function start_server2() {
    osascript &>/dev/null <<EOF
    tell application "iTerm2"
      activate
      tell current window to create tab with default profile
      tell current session of current window
        select
        write text "cd ~/path/to/app"
        write text "app_start_command"
      end tell
    end tell
EOF
}

function start_all_apps() {
  start_server1
  start_server2
}
