# SkillShare Video Downloader (supplementary)

This repository contains the script for downloading SkillShare Videos. This is not a stand-alone script; it only supplements the SkillShare Free Downloader Extension in Google Chrome by downloading .m3u8 files that can be converted to .mp4 format using VLC Player. 

# Why is this supplementary script necessary?

SkillShare Free Downloader Extension is a free and powerful tool for downloading videos from SkillShare. However, the videos that are downloaded are in .m3u8 format. 

The .m3u8 file format is intended for multimedia playlists. The file is only a few kilobytes big and only contains the links to the video (not the video itself). The file contains multiple links which I believe corresponds to different resolutions of the video. When a .m3u8 file is played, it will start out blurry but will automatically shift to a higher resolution depending on speed of internet connection. 

The .m3u8 is a special file format which can only be played by a few video players such as VLC Media Player. For it to be played in other media players or devices, the file must first be converted to .mp4 or other more relevant formats. 

The problem is this: .m3u8 is difficult to convert to other file formats. On top of this, the downloaded file is only available for a couple of hours as the embeded link within the file will no longer be accessible. The file cannot be converted straight to .mp4 as the video loses its sound component when the video automatically shifts to a higher resolution. 

What this supplementary code do is that it goes through the embeded links within the video, select the highest one, and then downloads it. The downloaded file is still in .m3u8 format but will not shift in quality mid-way, as compared to the initial .m3u8 file. As a result, the video can be converted to .mp4 format without losing its sound. 


# How to use
1. Install SkillShare Free Downloader in Google Chrome
2. Create a new directory where you will put folders containing the videos.
3. Download the videos and organize them in folders inside the directory. 
4. Set the created directory as the working directory.
5. Run the script.

