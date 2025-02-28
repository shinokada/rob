<p align="center">
<img width="600" src="https://raw.githubusercontent.com/shinokada/tera/main/images/tera-3.png" />
<br />
<a href="https://tera.codewithshin.com/">https://tera.codewithshin.com/</a>
</p>

<p align="center">
  To Keep It Going, Please Show Your Love. ❤️<a href='https://ko-fi.com/Z8Z2CHALG' target='_blank'>
</p>
<p align="center">
<img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi3.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>
</p>

<h1 align="center">Terminal Radio (TERA)</h1>

## Overview

[Article](https://levelup.gitconnected.com/discover-rejuvenate-your-music-library-with-command-line-f3268db67bba)

Are you tired of being stuck in a musical rut with the same old songs being recommended to you on Amazon Prime Music or YouTube? Are you sick of the advertisements that come with streaming services like Spotify? If you’re looking for a new and exciting way to discover new music while you work, Tera (TErminal RAdio) is for you!

Tera is an interactive music radio player. Play your favorite radio station, CRUD your favorite lists, and explore new radio stations from your terminal. 
Tera stores favorite list in the `~/.config/tera/favorite` directory and uses `~/.cache/tera` directory to keep search related results.

## Requirement

Unix-like environment.

- [mpv](https://mpv.io/) is a free, open source, and cross-platform media player.
- [jq](https://stedolan.github.io/jq/) is a lightweight and flexible command-line JSON processor.
- [fzf](https://github.com/junegunn/fzf) is a general-purpose command-line fuzzy finder.
- [gh](https://cli.github.com/) is the GitHub CLI.
- wget: Most UNIX-like OS should have it. macOS can install with `brew install wget`.

## Features

- 35000+ radio stations powered by [Radio Browser API](https://de1.api.radio-browser.info/).
- [MPV, a free, open source, and cross-platform media player](https://mpv.io/).
- CRUD favorite lists.
- Play from a list
- Search radio station by tag, name, language, country code, state.
- Save a station to a list after playing.
- Delete a radio station from a list.
- I feel lucky menu.
- Gist upload.

## Installation

### Using [Awesome package manager](https://github.com/shinokada/awesome):

```sh
awesome install shinokada/tera
```

### HomeBrew/LinuxBrew

```sh
brew tap shinokada/tera
brew install tera
```

### Debian/Ubuntu

Download a Debian package from the [releases page](https://github.com/shinokada/tera/releases).

```sh
sudo apt install ./tera_0.4.1_all.deb
rm -rf ./tera_0.4.1_all.deb
```

After installation please run the following to check `mpv` is installed correctly.

```sh
mpv https://live.musopen.org:8085/streamvbr0
```

If it plays music you're ready to go.

### ArchLinux

Please see [aur.archlinux.org](https://aur.archlinux.org/packages/tera)

## Uninstallation

You can uninstall by using the  uninstallation script or manually.

### Uninstallation script

```sh
curl -s https://raw.githubusercontent.com/shinokada/tera/main/uninstall.sh > tmp1 && bash tmp1 && rm tmp1
```

### Manual

Remove following directories.

- tera directory.
- `~/.config/tera/` directory
- `~/.cache/tera` directory

## Usage

### Commands

#### Main Menu

```sh
tera
```

![start](https://raw.githubusercontent.com/shinokada/tera/main/images/radio1.png)

#### Player control

| Keyboard    | Description                          |
| ----------- | ------------------------------------ |
| p and SPACE | Toggle pause/unpause.                |
| [ and ]     | Descrease/increase speed by 10%.     |
| { and }     | Halve/double current playback speed. |
| q           | Stop playing and quit.               |
| / and *     | Descrease/increase volume.           |
| 9 and 0     | Descrease/increase volume.           |
| m           | Mute sound.                          |

#### Search Menu

By selecting 2) Search radio stations, you can search by tag, name, language, country code, state, and advanced(todo).

![start](https://raw.githubusercontent.com/shinokada/tera/main/images/searchmenu.png)

#### Music player

- Pause: `q` or `space`.
- Forward: Right arrow.
- Backward: Left arrow.
- [More MPV control](https://mpv.io/manual/master/)

### Options

```sh
-h | --help
--version
```

## Reference

- [Bash menu](https://devdojo.com/bobbyiliev/how-to-create-an-interactive-menu-in-bash)

## Author

@shinokada

## License

Please see LICENSE.
