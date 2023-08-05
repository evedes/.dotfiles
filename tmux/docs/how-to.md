# TMUX

Create a session

`tmux new -s Session`

To detach from the session

`tmux detach`

To list all the sessions created:

`tmux ls`

Attach to an existing session

`tmux -t SessionName`

List all sessions (inside tmux):

`C-a s`

Reload tmux config:

`C-a r`

Create an horizontal division:

`C-a |`

Create a vertical division:

`C-a -`

Cycle through panes

`C-a h j k l`

Create a new window

`C-a c `

Rename a window

`C-a ,`

Cycle through windows:

`C-a 0` window number

`C-a n` next window

`C-a p` previous window

Windows list:

`C-a w`

Entering copy mode:

`C-a [`

You can use k and j to go up/down

`S-k` `S-j`

`C-u` `C-d`

`C-b` `C-f`

To copy something type `v` to enter visual mode

Exit copy mode

`C-c`

Install plugins:

`C-a S-i`

