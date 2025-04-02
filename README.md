# Steam REcordings FFMPEG Script (SREFS)
📁 This is a bash script that batch converts MP4 videos to `libx264rgb` codec, with organized output and progress tracking.

![Bash](https://img.shields.io/badge/Shell-Bash-%234EAA25?logo=gnu-bash) 
![FFmpeg](https://img.shields.io/badge/Codec-FFmpeg-%230077CC?logo=ffmpeg)

---

## ✨ Features
- **Batch Processing**: Convert all `.mp4` files in a directory
- **Smart Organization**: Outputs saved to `/FF_output/` with `FF_` prefix
- **Time Tracking**: Reports total execution time
- **Error Handling**: Skips existing files and cleans failed conversions

```bash
✓ Already exists: FF_output/FF_video1.mp4
✅ Success: FF_output/FF_video2.mp4
