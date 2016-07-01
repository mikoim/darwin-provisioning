#!/bin/sh

palette="palette.png"

filters="fps=15,crop=938:602:20:20,setpts=0.5*PTS,scale=640:-1:flags=lanczos"

ffmpeg -v warning -i $1 -vf "$filters,palettegen" -y $palette
ffmpeg -v warning -i $1 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y $2
