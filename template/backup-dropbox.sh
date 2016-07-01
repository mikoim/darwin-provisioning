#!/bin/bash

7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -xr@~/Dropbox/Default/template/exclude/7z-dropbox.lst Dropbox.7z ~/Dropbox
