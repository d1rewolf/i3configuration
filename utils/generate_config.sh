#!/bin/bash
date >> $HOME/.config/i3/genlog
cat $HOME/.config/i3/global_config $HOME/.config/i3/local_config > $HOME/.config/i3/config
