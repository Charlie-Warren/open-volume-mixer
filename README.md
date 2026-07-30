# open-volume-mixer
When I run an application in full screen mode on Windows, the volume mixer in the system tray often becomes hidden. This makes it awkward to change the volume without tabbing out of whatever you are doing.

Windows Volume Mixer opens by default on your primary monitor, so this application opens it and places it at a position of your choosing, on a monitor of your choosing.


## Usage

- Download `open-volume-mixer.zip` from the [Releases](https://github.com/Charlie-Warren/open-volume-mixer/releases) section of this repository.
- Unzip it
- Run `Open Volume Mixer.exe`

## Configuration

The first time you run `Open Volume Mixer`, it will create a file called `Open Volume Mixer.ini` if it doesn't already exist. This contains the monitor and position that Volume Mixer will be moved to.

For example, this would place Windows Volume Mixer on the second monitor, 100 pixels from the left edge of the screen, and 50 pixels from the top edge of the screen.
```
[Position]
Monitor=2
X=100
Y=50
```
You can edit thie values of X, Y, and Monitor to customize where Volume Mixer gets positioned.

## Compiling the EXE yourself
- Download AutoHotkey from https://www.autohotkey.com/
- Download [Open Volume Mixer.ahk](Open%20Volume%20Mixer.ahk) from this repository.
- Download [volume mixer icon.ico](volume%20mixer%20icon.ico) from this repository.
- Open AutoHotkey
- Click "Compile"

![Compile](images/compile.png)

- For "Source" select your `Open Volume Mixer.ahk` file.
- For custom icon select your `volume mixer icon.ico` file.
- Press "Convert"
