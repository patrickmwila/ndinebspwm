# ndinebspwm
Custom setup of bspwm. Bspwm is a tiling window manager that represents windows as the leaves of a full binary tree.

<hr />
<img src="./ndinebspwm.png" alt="ndinebspwm-img">

## Installation
The installation instructions below assume you are using a Debian-based system. This setup starts from a minimal Debian installation.

### Core Components
Install the core components needed for the `bspwm` setup:
```sh
sudo apt install xorg bspwm sxhkd kitty rofi polybar compton feh i3lock
```

### General Utilities
Install general utilities for enhanced functionality:
```sh
sudo apt install lxpolkit flameshot viewnior obs-studio evince lxappearance pavucontrol ffmpeg mpv
```

### Web Browsers
Install web browsers for internet access:

```sh
sudo apt install firefox-esr
```

### File Managers
Install both GUI and terminal file managers:

```sh
sudo apt install pcmanfm ranger
```

### Terminal Applications
Install terminal-based applications as needed:
```sh
sudo apt install htop cmatrix neofetch
```

### Development Tools
Install essential development tools:

```sh
sudo apt install git curl wget python3 build-essential

# nodejs setup
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts

## verify setup
node --version
```

### Additional Applications
Install additional useful applications:

```sh
sudo apt install gparted
```

## Usage
### Directory Structure
Copy configuration files to appropriate directories and make changes as needed.

1. **.config**: 
   - **Location**: `~/.config/`
   - **Description**: Contains configuration files for various applications and utilities. Contents of this folder should be copied to your home directory as `~/.config/` to ensure the applications (e.g., `bspwm`, `polybar`, `rofi`, `kitty`, `sxhkd`, and `compton`) can find their respective configurations.

2. **starship.toml**: 
   - **Location**: `~/.config/starship.toml`
   - **Description**: Place this file directly in `~/.config/` to configure your prompt appearance, if you are also using starship prompt and want my style.

3. **.fonts**: 
   - **Location**: `~/.fonts/`
   - **Description**: Place the `.fonts` folder here to install and use custom fonts (important for polybar to work correctly).

4. **.local**: 
    - **Location**: `~/.local/`
    - **Description**: Place contents of `.local` folder here for any additional configurations, mine contains a script `lockscreen` working with `sxhkd` and spawns the i3lock by pressing `alt+l`.

5. **00-keyboard.conf**: 
    - **Location**: `/etc/X11/xorg.conf.d/00-keyboard.conf`
    - **Description**: Place this file in `/etc/X11/xorg.conf.d/` to set up keyboard preferences.

6. **20-intel.conf**: 
    - **Location**: `/etc/X11/xorg.conf.d/20-intel.conf`
    - **Description**: Place this file in `/etc/X11/xorg.conf.d/` to configure Intel graphics (prevents screen tearing).

7. **30-touchpad.conf**: 
    - **Location**: `/etc/X11/xorg.conf.d/30-touchpad.conf`
    - **Description**: Place this file in `/etc/X11/xorg.conf.d/` to configure touchpad preferences.

8. **.bashrc**: 
    - **Location**: `~/.bashrc`
    - **Description**: Shell script that runs whenever a new terminal session is started. Place this file directly in your home directory to configure your shell environment.

9. **.vimrc**: 
    - **Location**: `~/.vimrc`
    - **Description**: Place this file directly in your home directory to customize Vim with my default settings.

### Start BSPWM
To start your bspwm session, ensure your .xinitrc file is properly configured. Here is an example configuration:

```sh
# Start sxhkd (Simple X HotKey Daemon)
sxhkd &

# Start compton (composite manager)
compton &

# Set the wallpaper using feh
feh --bg-scale ~/ndinebspwm/wallpaper &

# Start bspwm
exec bspwm
Save the file and start your X session:
```
Run ```startx``` from the TTY session after login to start your bspwm session😎

***Note: If You'er using a Display Manager, You can Select BSPWM from login screen!***

## Review of Installed Applications

### Core Components
- **xorg**: The X Window System, which provides the graphical environment.
- **bspwm**: A tiling window manager that represents windows as the leaves of a full binary tree.
- **sxhkd**: Simple X HotKey Daemon for binding hotkeys to commands.
- **kitty**: A fast, feature-rich, and cross-platform terminal emulator.
- **rofi**: A window switcher, application launcher, and dmenu replacement.
- **polybar**: A fast and easy-to-configure tool for creating status bars.
- **compton**: A compositor for X that provides effects like transparency and shadows.
- **feh**: An image viewer that can be used to set wallpapers.
- **i3lock**: A simple X display locker.

### General Utilities
- **lxpolkit**: Polkit authentication agent for LXDE.
- **flameshot**: A powerful screenshot tool with various editing features.
- **viewnior**: A simple and fast image viewer.
- **obs-studio**: Open Broadcaster Software for video recording and live streaming.
- **evince**: A document viewer that supports PDF and other formats.
- **lxappearance**: A GTK+ theme and icon chooser.
- **pavucontrol**: A volume control tool for PulseAudio.
- **ffmpeg**: A comprehensive multimedia framework for handling audio, video, and other multimedia files.
- **mpv**: A versatile media player.

### Web Browsers
- **firefox-esr**: Extended Support Release version of the Firefox web browser, providing long-term support and stability.

### File Managers
- **pcmanfm**: A lightweight and fast file manager.
- **ranger**: A terminal-based file manager with vi-like keybindings.

### Terminal Applications
- **htop**: An interactive process viewer for Unix systems.
- **cmatrix**: A terminal utility that displays a matrix-like effect.
- **neofetch**: A script that shows system information in the terminal.

### Development Tools
- **git**: A distributed version control system for tracking changes in source code.
- **curl**: A command-line tool for transferring data with URLs.
- **wget**: A utility for downloading files from the web.
- **python3**: The Python programming language, version 3.
- **build-essential**: A package that includes the basic tools for building and compiling software.

### Additional Applications
- **gparted**: A partition editor for managing disk partitions.

### Node.js Setup
- **nvm (Node Version Manager)**: A tool for managing multiple versions of Node.js.

## License
This project is licensed under the MIT License. See the LICENSE file for details.🤝
