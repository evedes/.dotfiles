#!/bin/bash
xfreerdp -grab-keyboard /v:192.168.2.206 /u:eduardo.vedes@gmail.com /p:${ELEVEN} /size:100% /d: /dynamic-resolution /gfx-h264:avc444 +gfx-progressive &
disown
