## EMACS SHORTCUTS NOTES

### EMACS NOTES

| Description               | Shortcut                                       |
| ------------------------- | ---------------------------------------------- |
| **00. General**           |                                                |
| C-g                       | Quits whatever command you're trying to run    |
| C-v                       | Move forward one screenful                     |
| M-v                       | Move backware one screenful                    |
| C-l                       | Clear screen and redisplay all the text        |


| Description               | Shortcut                                       |
| ------------------------- | ---------------------------------------------- |
| **01. Buffers**           |                                                |
| C-x b                     | Create a buffer / Switch buffer                |
| C-x k                     | Kill a buffer                                  |
| 02. Files                 |                                                |
| C-x C-f                   | Open a file                                    |
| C-x C-s                   | Save a file                                    |

| Description                  | Shortcut                                       |
| -------------------------    | ---------------------------------------------- |
| **02. Packages**             |                                                |
| M-x package-list-packages    | Shows almost every package available           |
| M-x package-refresh-contents | Gets you the latest list of packages available |
| M-x package-install          | Install packages                               |

| Description               | Shortcut                                             |
| ------------------------- | ----------------------------------------------       |
| **03. Code Editing**      |                                                      |
| C-k                       | Kill-line, kills all the text from the letter onward |
| C-/                       | Undo                                                 |

| Description               | Shortcut                                               |
| ------------------------- | ----------------------------------------------         |
| **04. Movement**          |                                                        |
| C-a                       | Move to the beginning of the line                      |
| M-m                       | Move to first non-backward one character               |
| C-e                       | Move to the end of the line                            |
| C-f                       | Move forward one character                             |
| C-b                       | Move backward one character                            |
| M-f                       | Move forward one word                                  |
| M-b                       | Move backward one word                                 |
| C-s                       | Regex search for text in current buffer and move to it |
|                           | press again to move to the next match                  |
| C-r                       | Same as C-s but in reverse                             |
| M-<                       | Move to the beginning of the buffer                    |
| M->                       | Move to the end of the buffer                          |
| M-g g                     | Go to line                                             |
| M-,                       | Go to function definition                              |
| M-. RET                   | Go back from function definition                       |

| Description                    | Shortcut                                       |
| -------------------------      | ---------------------------------------------- |
| **05. Selection with Regions** |                                                |
| C-spc                          | Sets a mark for selection                      |
| M-x replace-string             | Allows you to replace a string                 |

| Description                       | Shortcut                                       |
| -------------------------         | ---------------------------------------------- |
| **06. Killing and the Kill Ring** |                                                |
| C-w                               | Kill region                                    |
| M-w                               | Copy region to kill ring                       |
| C-y                               | Yank                                           |
| M-y                               | Cycle through kill ring after yanking          |
| M-d                               | Kill word                                      |
| C-k                               | Kill line                                      |

| Description               | Shortcut                                                                  |
| ------------------------- | ----------------------------------------------                            |
| **07. Editing and Help**  |                                                                           |
| Tab                       | Ident Line                                                                |
| C-j                       | New line and indent, equivalent to enter followed by Tab                  |
| M-/                       | Hippie expand cycles through possible expansions of the text before point |
| C-h k key-binding         | Describe the function bound to the key binding                            |
| C-h f                     | describe function                                                         |

| Description                | Shortcut                                       |
| -------------------------  | ---------------------------------------------- |
| **08. Windows and Frames** |                                                |
| C-x o                      | Switch cursor to another windows               |
| C-x 1                      | Delete all other windows                       |
| C-x 2                      | Split frame above and below                    |
| C-x 3                      | Split frame side by side                       |
| C-x 0                      | Delete current windows                         |


| Description                         | Shortcut                                                                          |
| -------------------------           | ----------------------------------------------                                    |
| **09. Clojure Useful Key Bindings** |                                                                                   |
| M-x cider-jack-in                   | Starts the REPL                                                                   |
| C-c M-n M-n                         | Switch to namespace of current buffer                                             |
| C-x C-e                             | Evaluate expressiona immediately preceding point                                  |
| C-c C-k                             | Compile current buffer                                                            |
| C-c C-d C-d                         | Display documentation for symbol under point                                      |
| M-. and M-,                         | Navigate to source code for symbol under point and return to your original buffer |
| C-c C-d C-a                         | Apropros search; find arbitrary text across function names and documentation      |
| C-Up C-Down                         | Cycle through REPL history                                                        |
| C-Enter                             | Close parenthesis and evaluate                                                    |

| Description               | Shortcut                                                                |
| ------------------------- | ----------------------------------------------                          |
| **10. Navigation**        |                                                                         |
| M-x paredit-mode          | Toggle paredit mode                                                     |
| M-(                       | Surround expression after point in parenthesis                          |
| C-Right                   | Slurp; move closing parehntesis to the right to include next expression |
| C-Left                    | Barf; move closing parenthesis to the left to exclude last expression   |
| C-M-f, C-M-b              | Move to the opening/closing parenthesis                                 |
|                           |                                                                         |


| Description               | Shortcut                                       |
| ------------------------- | ---------------------------------------------- |
| **11. General**           |                                                |
| Rename a File             | M-x rename-file                                |
| Delete a File             | M-x delete-file                                |
| Find and Replace a String | M-x replace-string                             |
|                           |                                                |


How to comment a form?

C-M-SPC to select the form
M-; to comment it


How to use the self documenting features of Emacs?

01. C-h f and type the name of the function
02. C-h v and type the name of the variable
03. C-h m info on major and minor modes

Emacs has a huge ecosystem of external packages that we can install..
The default package manager for Emac is called "package".

Package can fetch packages from multiple sources.
Elpa (Emacs Lisp Package Archive) is the source that it uses by default.
Users usually add Mepla and Marmalade to their list of package sources.

M-x package-refresh-contents
M-x package-list-packages