<div align="center">
	<h1><code>~/.*</code></h1>
	<p>My config files. Managed by <a href="https://www.gnu.org/software/stow/">GNU Stow</a>.</p>
    <p>Layout/theme inspired by <a href="https://github.com/alfunx/.dotfiles">alfunx's dotfiles</a>.</p>
</div>

___

## Table of Contents
- [List of Softwares](#list-of-softwares)
- [Installation](#installation)
    - [Other Configurations](#other-configurations)
    - [Scripts](#scripts)
- [Screenshots](#screenshots)
- [License](#license)

___

### List of Softwares

| Type                      | Software/s, Packages                                                                                                                                 |
| ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| Window Manager            | `i3-gaps`|
| Bar                       | `polybar`|
| Media                     | `mpd`, `ncmpcpp`, `puddletag`, `sxiv`, `feh`, [`peek`](https://github.com/phw/peek), `flameshot`, `mpv`, `youtube-dl`|
| Browsing                  | `firefox`, `google-chrome`|
| Chat, video call          | [`ripcord`](https://wiki.archlinux.org/title/Ripcord), Discord, Zoom, Microsoft Teams, Thunderbird|
| Dev                       | `nvim`, `gvim`, `sublime-text`, [`code`](https://wiki.archlinux.org/title/Visual_Studio_Code)|
| Terminal, shell, CLI apps | `kitty`, `zsh`, `ranger`, `htop`, `gotop`, `neofetch`, `fzf`, `ripgrep`, `pass`, `cava`, `cfiles`, `newsboat` `greenclip`, `pipes.sh`, `bat-cat-git`|
| Utility                   | [Timeshift](https://github.com/teejee2008/timeshift) (snapshot tool), `lightdm` (login screen/greeter), [`plymouth`](https://wiki.archlinux.org/title/plymouth) (graphical boot animation)|
| For theming               | [`pywal`](https://github.com/dylanaraps/pywal), [`wpgtk`](https://github.com/deviantfero/wpgtk)|
| Others                    | `zathura`, [`foliate`](https://johnfactotum.github.io/foliate/), [Obsidian](https://obsidian.md/), Libreoffice|

...and more [here](https://github.com/DatSudo/dotfiles/tree/main/.pkglist/)

___

### Installation

- Check first all the packages in [package lists](https://github.com/DatSudo/dotfiles/tree/main/.pkglist/) and install them. There are some packages that depend on your hardware (e.g. graphics/driver-related packages such as `intel-media-driver` etc.) and you might want to skip them.
- List of packages in `.pkglist`. Read more [here](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Listing_packages):
    - `aurpkg` - list of all AUR packages installed
    - `exppkg` - explicitly installed packages
    - `ntvpkg` - list of all native packages (installed from the sync databases)
    - `exp_ntvpkg` - explicitly installed native packages
- If you're not familiar with GNU stow, clone this repository and just cherry-pick config files.
- With GNU stow:
    - Stow lets you symlink files to an arbitrary folder
    - You might want to backup some files/directories in your `.config` file that you want to change and move them to other location before stowing so there won't be any conflict warnings.
    - Clone this repository in `$HOME/dotfiles` for simpler setup
    - You can stow them one-by-one with
    ```bash
    $ # Example: stowing nvim, vim config (if cloned in $HOME/dotfiles)
    $ stow editor/
    $ # If another location
    $ stow -t ~ editor/
    ```
    - Or all of them
    ```bash
    $ # if cloned in $HOME/dotfiles
    $ stow .
    $ # Other location
    $ stow -t ~ .
    ```

#### Other configurations
- For firefox custom css, you need to copy and paste the [`chrome`](https://github.com/DatSudo/dotfiles/tree/main/firefox/.mozilla/firefox/any.default-release/chrome) folder manually in your `$HOME/.mozilla/firefox/random-chars.default-release` as I added `.mozilla/` in [`.stow-local-ignore`](https://github.com/DatSudo/dotfiles/blob/main/firefox/.stow-local-ignore); I think the `random-chars.default-release` folder name is not the same for everyone.
- For installing `plymouth`, check [this](https://gist.github.com/DatSudo/7bc759aeebc381afe1ed7e314c9041b4) guide.

#### Scripts
- My scripts stored in `my_scripts` directory. There are some that I used for accessing some of my documents and has keybinding in i3 config file, so don't stow them and review each.
- There are some that can be used in other devices like:
    - `power_opt` - binded to my power button; a dmenu prompt that asks to Reboot/Shutdown
- There are some that are being used by other programs:
    - `alias_cheatsheet/termcolor.py` - for zsh plugin `Alias Cheatsheet` that lists my aliases by group
    - `curr_date` - for `calendar` module in polybar

___

### Credits

- Layout/theme inspired by [alfunx's](https://github.com/alfunx/.dotfiles) dotfiles

### Screenshots

<details>
    <summary><b>No apps opened</b></summary>

<img src="https://github.com/DatSudo/dotfiles/blob/main/.images/clean_ss.png" alt="Clean screenshot">

</details>

<details>
    <summary><b>With some CLI apps opened</b></summary>

<img src="https://github.com/DatSudo/dotfiles/blob/main/.images/cli_ss.png" alt="With some CLI apps screenshot">

</details>

<details>
    <summary><b>Firefox, thunar</b></summary>

<img src="https://github.com/DatSudo/dotfiles/blob/main/.images/ffthunar_ss.png" alt="Firefox, thunar screenshot">

</details>

<details>
    <summary><b>Editor, file viewers</b></summary>

<img src="https://github.com/DatSudo/dotfiles/blob/main/.images/editorfv_ss1.png" alt="Editor, file viewers screenshot 1">
<img src="https://github.com/DatSudo/dotfiles/blob/main/.images/editorfv_ss2.png" alt="Editor, file viewers screenshot 2">

</details>

___

### License

[GNU General Public License v3.0](https://github.com/DatSudo/dotfiles/blob/main/LICENSE)
