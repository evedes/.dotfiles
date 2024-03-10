#!/bin/bash
xfreerdp -grab-keyboard /v:192.168.2.205 /u:eduardo.vedes@gmail.com /p:${ELEVEN} /cert:ignore /size:100% /d: /dynamic-resolution /gfx-h264:avc444 +gfx-progressive &
disown
