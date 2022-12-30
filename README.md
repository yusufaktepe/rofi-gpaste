# rofi-gpaste

Rofi frontend for [GPaste](https://github.com/Keruspe/GPaste) clipboard manager.

> Main window
> ![gpaste](https://user-images.githubusercontent.com/32964025/206889800-07ca3ea9-46bf-4dee-aa03-a29a20b7c04a.png)
> History selection
> ![gpaste_selec-history](https://user-images.githubusercontent.com/32964025/206890041-5a5cf8d8-ac5d-48ba-93fe-466343b8fadd.png)

### Features

- Manage multiple clipboard histories.
- Edit, delete, paste, archive... clipboard items with keybindings.
- Display and save images from clipboard history. *(if `images-support` is enabled)*

### Dependencies

- [`rofi`](https://github.com/davatorium/rofi)
- [`gpaste`](https://github.com/Keruspe/GPaste)
- `bash`, `coreutils`
- `sed`
- `xclip`
- `xdotool` *(for paste function)*
- `qrencode` *(for QR code generation)*
- `zenity` *(for save dialog)*

### Configuration

You can override default options by copying [`config.example`](config.example) file to `~/.config/rofi-gpaste.conf`.

### Usage

Key binding                                      | Action
------------------------------------------------ | ------
<kbd>Alt</kbd> + <kbd>c</kbd>                    | Clear history
<kbd>Alt</kbd> + <kbd>p</kbd>                    | Toggle tracking changes
<kbd>Alt</kbd> + <kbd>d</kbd>                    | Delete selected item
<kbd>Alt</kbd> + <kbd>e</kbd>                    | Edit selected item[^1] / Display image
<kbd>Alt</kbd> + <kbd>s</kbd>                    | Archive selected text item
<kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>b</kbd> | Backup current history
<kbd>Alt</kbd> + <kbd>h</kbd>                    | List and switch histories
<kbd>Alt</kbd> + <kbd>Return</kbd>               | Paste selected item
<kbd>Alt</kbd> + <kbd>q</kbd>                    | Display QR code[^1]
<kbd>Alt</kbd> + <kbd>o</kbd>                    | Save selected item to a file
<kbd>Alt</kbd> + <kbd>1</kbd>                    | Switch to main clipboard
<kbd>Alt</kbd> + <kbd>2</kbd>                    | Switch to clipboard archive
<kbd>F1</kbd>                                    | Launch GPaste GUI
<kbd>Return</kbd>                                | Activate selected item OR add user input to clipboard
*🡾 Histories menu*                               |
<kbd>Alt</kbd> + <kbd>d</kbd>                    | Delete selected history
<kbd>Alt</kbd> + <kbd>e</kbd>                    | Rename selected history
<kbd>Alt</kbd> + <kbd>h</kbd>                    | Return to active history
<kbd>Return</kbd>                                | Switch to history OR create new one with input

[^1]: These shortcuts will use `xdg-open` by default.

---

Run `rofi-gpaste -h` to see all options and rofi keybindings.

```text
Usage: rofi-gpaste [OPT]

  -c, --clear        - Clear history
  -H, --histories    - Histories menu
  -i, --input        - Read stdin into clipboard
  -p, --paste [1-9]  - Paste clipboard item by index
  -s, --selpaste     - Paste selection
  -S, --seltoclip    - Move selection to clipboard
  -t, --toggle       - Toggle tracking clipboard changes
  -d, --debug [OPT]  - Run script in debug mode
  -h, --help         - Displays this help information
  *                  - Pass option(s) to `gpaste-client`

 If no option is given, rofi menu is displayed.
```
