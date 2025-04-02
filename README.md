# Steam REcordings FFMPEG Script (SREFS)
📁 This is a script made for **Archlinux** to correct over saturation and dark colors on Steam Recordings and clips **on Steam Deck and SteamOS**. It is a bash script that batch converts MP4 videos to `libx264rgb` codec, with organized output and progress tracking.

![Bash](https://img.shields.io/badge/Shell-Bash-%234EAA25?logo=gnu-bash) 
![FFmpeg](https://img.shields.io/badge/Codec-FFmpeg-%230077CC?logo=ffmpeg)

---

## 🛠 Installation
### Install **ffmpeg** if you don't have it:
1. Open Konsole
2. type ```sudo pacman -S ffmpeg```
3. Type "Y" if needed every time is asked

### Download and install script
1. On [Releases](https://github.com/forestcolat/SREFS/releases/tag/Release), download the script.
2. Put the script file in your video's location
5. Right click on the script > Properties > Permissions
6. Owner: can read & Write
7. Check "Is executable"

### If you have problems with ffmpeg, try FFmpegBin:
1. Go to [FFmpegbin official Github](https://github.com/Tyrrrz/FFmpegBin)
2. Go to "Releases"
3. On releases, select "ffmpeg-linux-x64.zip"
4. Put that .zip in ```/home/deck/```
5. Right click > extract here
6. Delete .zip file

---

## 🚀 Usage
Just right click the script and select "execute on konsole". You can also open Konsole and just Drag & Drop the script on the konsole window.

If anything goes right, it should output something like this:

```text
=== Conversion Summary ===
• Successfully converted: 3 file(s)
• Skipped (already exists): 2 file(s)
• Time elapsed: 00:05:23
• Output location: /path/to/FF_output
```

---

# ⬇︎ Download

[Direct download](https://github.com/forestcolat/SREFS/releases/download/Release/SREFS_FFMPEG.sh)


---

# Disclaimer

Al most none of this work is mine. The original idea comes from [Tyrrrz's comment on Reddit post about the Steam Deck issue](https://www.reddit.com/r/Steam/comments/1g32h3g/steam_game_recording_exporting_videos_that_are/). As for me, while I did created a basic and arcaic script, I refined it through the use of A.I. (DeepSeek in this case). Please do not ask me for support, as I have almost no understanding of the code. 
