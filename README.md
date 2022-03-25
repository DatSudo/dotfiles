<div align="center">
	<h1 style="font-size: 100px;"><code>~/.*</code></h1>
	<p>My config files. Managed by <a href="https://www.gnu.org/software/stow/">GNU Stow</a>.</p>
</div>

___

## Table of Contents
- [Installation](#installation)
- [List of Softwares](#list-of-softwares)
- [Notes](#notes)
- [Screenshots](#screenshots)

___

### Installation

- Check first all the packages in [package lists](https://github.com/DatSudo/dotfiles/tree/main/.pkglist/) and install them. There are some packages that depend on your hardware (e.g. graphics/driver-related packages such as `intel-media-driver` etc.) and you might want to skip them.
- List of packages in `.pkglist`. Read more [here](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Listing_packages):
    - `aurpkg` - list of all AUR packages installed
    - `exppkg` - explicitly installed packages
    - `ntvpkg` - list of all native packages (installed from the sync databases)
    - `exp_ntvpkg` - explicitly installed native packages
- If you're not familiar with GNU stow, clone this repository and copy the config files.
- With GNU stow:
    - You might want to backup some files/directories in your `.config` file that you want to change and move them to other location before stowing so there won't be any conflict warnings.
    - You can stow them one-by-one with
    ```bash
    $ # Example: stowing nvim, vim config
    $ stow editor/
    ```
    - Or all of them
    ```bash
    $ stow */
    ```

___

### List of Softwares

| Type                      | Software/s, Packages                                                                                                                                 |
| ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| Media                     | `mpd`, `ncmpcpp`, `puddletag`, `sxiv`, `feh`, [`peek`](https://github.com/phw/peek), `flameshot`, `mpv`, `youtube-dl`|
| Browsing                  | `firefox`, `google-chrome`|
| Chat, video call          | [`ripcord`](https://wiki.archlinux.org/title/Ripcord), Discord, Zoom, Microsoft Teams, Thunderbird|
| Dev                       | `nvim`, `gvim`, `sublime-text`, [`code`](https://wiki.archlinux.org/title/Visual_Studio_Code)|
| Terminal, shell, CLI apps | `kitty`, `zsh`, `ranger`, `htop`, `gotop`, `neofetch`, `fzf`, `ripgrep`, `pass`, `cava`, `cfiles`, `newsboat` `greenclip`, `pipes.sh`, `bat-cat-git`|
| Utility                   | [Timeshift](https://github.com/teejee2008/timeshift)|
| For theming               | [`pywal`](https://github.com/dylanaraps/pywal), [`wpgtk`](https://github.com/deviantfero/wpgtk)|
| Others                    | `zathura`, [`foliate`](https://johnfactotum.github.io/foliate/), [Obsidian](https://obsidian.md/), Libreoffice|

...and more [here](https://github.com/DatSudo/dotfiles/tree/main/.pkglist/)

___

### Notes
- There are some root files that I edited:
    - `/etc/environment` - to relocate `pass` and `gpg` directory
    ```
    # /etc/environment

    PASSWORD_STORE_DIR="/home/your_username/.local/share/pass"
    GNUPGHOME="/home/your_username/.local/share/gnupg"
    ```
___

### Screenshots

<details>
    <summary><b>Desktop</b></summary>

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

<img src="https://github.com/DatSudo/dotfiles/blob/main/.images/editorfv_ss.png" alt="Editor, file viewers screenshots">

</details>

___

### TODO:

- [ ] More notes
- [ ] Screenshots
- [ ] License
