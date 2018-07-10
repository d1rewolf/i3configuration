*Important*: this expects to be be checked out in ~/.config/i3. You may need to adjust i3 settings to make it use this config.

*Also important*: before running, you need to create a local configuration file and link to it with ~/.config/i3/local_config. Then run ~/.config/i3/utils/generate_config.sh

My primary customizations:

$mod+d opens rofi in both launch and window switch modes
$mod+Shift+d opens rofi in a way which allows you to move the current window to a named workspace. It will automatically select a number for you.
$mod+Shift+Ctrl+d opens rofi to show all current key bindings
$mod+Shift+i will generate a new config from the various config pieces

I use a series of files in other to keep a fairly common set of customizations 
across machines. I NEVER edit ~/.config/i3/config by hand. Rather, I create a sym_link
called local_config to a config file. Pressing the key sequence $mod+Shift+i will
combine this file with the ~/.config/i3/global_config to create one single config file.

Note, if you don't have the config file already created, you can manually run
~/.config/i3/utils/generate_config.sh to first create it. 

Also note, after $mod+Shift+i to regerate the config, you need to restart i3
with $mod+Shift+r

Things which need to be installed from repos:
rofi eog scrot pulseaudio-utils fonts-font-awesome xbacklight i3blocks gnome-settings-daemon nm-applet blueman-applet pasystray gnome-sound-applet gnome-screensaver gnome-keyring-daemon keynav mogrify i3lock

You may need to install others based on contents of scripts in ~/.config/i3/utils directory

You'll need to tweak various machine-specific things, like what you want to show up in status bar (~/.config/i3/i3blocks/i3blocks.conf). I'm working on making this function similarly to the main i3 config generation, but it's not there yet.


