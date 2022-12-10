## rofi-gpaste

Rofi frontend for [GPaste](https://github.com/Keruspe/GPaste) clipboard manager.

> Main window
> ![gpaste](https://user-images.githubusercontent.com/32964025/109804092-ebba5b80-7c32-11eb-8617-894c9a39b1d0.png)
> History selection
> ![gpaste_selec-history](https://user-images.githubusercontent.com/32964025/109813460-6f2d7a00-7c3e-11eb-971a-1ed6950d2d01.png)

### Features
- Manage multiple clipboard histories.
- Edit, delete, paste, archive... clipboard items with keybindings.

### Dependencies
- [rofi](https://github.com/davatorium/rofi)
- [gpaste](https://github.com/Keruspe/GPaste)
- bash
- xclip
- sed
- coreutils
- xdotool *
- xprop *
- qrencode (for QR code generation)
- zenity (for save dialog)

\* Only required for automatically typing/pasting.

### Usage

<table>
<tbody>
<tr><th colspan="2"><strong> Shortcuts </strong></th></tr>
<tr><td> <code>Alt+c</code>       </td> <td> Clear history                                         </td></tr>
<tr><td> <code>Alt+p</code>       </td> <td> Toggle tracking changes                               </td></tr>
<tr><td> <code>Alt+d</code>       </td> <td> Delete selected item                                  </td></tr>
<tr><td> <code>Alt+e</code>       </td> <td> Edit selected item **                                 </td></tr>
<tr><td> <code>Alt+s</code>       </td> <td> Archive selected item                                 </td></tr>
<tr><td> <code>Alt+B</code>       </td> <td> Backup current history                                </td></tr>
<tr><td> <code>Alt+h</code>       </td> <td> List and switch histories                             </td></tr>
<tr><td> <code>Alt+Return</code>  </td> <td> Paste selected item                                   </td></tr>
<tr><td> <code>Alt+q</code>       </td> <td> Display QR code                                       </td></tr>
<tr><td> <code>Alt+o</code>       </td> <td> Save selected item to a file                          </td></tr>
<tr><td> <code>Alt+1</code>       </td> <td> Switch to main clipboard                              </td></tr>
<tr><td> <code>Alt+2</code>       </td> <td> Switch to clipboard archive                           </td></tr>
<tr><td> <code>F1</code>          </td> <td> Launch GPaste GUI                                     </td></tr>
<tr><td> <code> Return</code>     </td> <td> Activate selected item OR add user input to clipboard </td></tr>
<tr></tr>
<tr><th colspan="2"> Histories menu </th></tr>
<tr><td> <code>Alt+d</code>       </td> <td> Delete selected history                               </td></tr>
<tr><td> <code>Alt+h</code>       </td> <td> Return to active history                              </td></tr>
<tr><td> <code>Return</code>      </td> <td> Switch to history OR create new one with input        </td></tr>
</tbody>
</table>

\** This shortcut assumes that you have set the `TERMINAL` and `EDITOR` environment variables.

---

Run `gpaste -h` to see all options and rofi keybindings.
```
Usage: gpaste [OPT]

  -c, --clear        - Clear history
  -H, --histories    - Histories menu
  -i, --input        - Read stdin into clipboard
  -p, --paste [1-9]  - Paste clipboard item by index
  -s, --selpaste     - Paste selection
  -S, --seltoclip    - Move selection to clipboard
  -t, --toggle       - Toggle tracking clipboard changes
  -h, --help         - Displays this help information
  *                  - Pass option(s) to `gpaste-client`

 If no option is given, rofi menu is displayed.
```

