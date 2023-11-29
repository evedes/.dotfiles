# TMUX NOTES

#### Create a Session

`tmux new -s <session name>`

#### Rename a Session

`Prefix + $` and then enter session name

#### Exit a Session

`tmux detach`

#### List of Sessions Created

`tmux ls`

#### Get Into a Specific Session

`tmux attach -t <session name>`

#### See Created Sessions Inside Tmux

`Prefix + s`

#### See Created Windows Inside a Session

`Prefix + w`

#### Splitting

`Prefix+%` Split Horizontally
`Prefix+"` Split Vertically

#### After rebinding

`Prefix + -`Split Horizontally
`Prefix + |`Split Vertically

#### Create a Window

`Prefix + c`

#### Rename a Window

`Prefix + ,`

#### Switch between windows

`Prefix + 1` go to window 1
`Prefix + n` go to next window
`Prefix + p` go to previous window
NOTE: windows are shown in the bottom status line

#### Use Copy Mode Inside Tmux

`Prefix + [` to activate it

Use visual mode by clicking SPACE.
Navigate in the terminal with:

j down
k up

Shift+j down with cursor in the same place
Shift+k up with cursor in the same place

Ctrl+b page up
Ctrl+f page down

#### Install Plugins

`Prefix Shift+A`

#### Reload TMUX

`Prefix + r`
