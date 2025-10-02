#!/bin/bash

bar=(
  position=top  
  height=40
  blur_radius=0
  color="$TRANSPARENT"
  padding_left=5
  padding_right=5
)
sketchybar --bar "${bar[@]}"

default=(
  padding_left=4
  padding_right=4
  background.color="$ITEM_BG_COLOR"
  background.corner_radius=5
  background.height=25
  icon.color=$WHITE
  icon.y_offset=1
  label.color=$WHITE
  label.y_offset=1
  icon.padding_left=10
  icon.padding_right=4
  label.padding_left=4
  label.padding_right=10
)
sketchybar --default "${default[@]}"
