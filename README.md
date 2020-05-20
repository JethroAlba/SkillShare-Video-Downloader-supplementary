# SkillShare Video Downloader (supplementary)

This repository contains the script for downloading SkillShare Videos. This is not a stand-alone script; it only supplements the SkillShare Free Downloader Extension in Google Chrome by downloading files that can be converted to .mp4 format using VLC Player. 

# Why is this supplementary script necessary?

SkillShare Free Downloader Extension is a free and powerful tool for downloading videos from SkillShare. However, the videos that are downloaded are in .m3u8 format. 

The .m3u8 file format is intended for multimedia playlists. The file is only a few kilobytes big and only contains the links to the video (and not the video itself). The file contains multiple links which I believe corresponds to different resolutions of the video. When a .m3u8 file is played, it will start out blurry but will automatically shift to a higher resolution depending on speed of internet connection. 

The .m3u8 is a special file format which can only be played by a few video players such as VLC Media Player. For it to be played in other media players or devices, the file must first be converted to .mp4 or other more relevant formats. 

The problem is this: .m3u8 is difficult to convert to other file formats. On top of this, the downloaded file is only available for a couple of hours as the embeded link within the file will no longer be accessible. The file cannot be converted straight to .mp4 as the video loses its sound component when the video automatically shifts to a higher resolution. 

What this supplementary code do is that it goes through the embeded links within the video, select the highest one, and then downloads it. The downloaded file is still in .m3u8 format but will not shift in quality mid-play, as compared to the initial .m3u8 file. As a result, the video can be converted to .mp4 format without losing its sound. 


# About the script

The script contains a function called `SS.downloader` which goes through each folder in the directory containing .m3u8 files downloaded via the SkillShare Free Downloader Extension. It then extracts a link within each file, downloads it, and stores the downloaded files in a new folder named **downloads**.

Within the function `SS.downloader` is a formal called `delete`, which takes in a "yes" or "no" argument. If `delete` is set to **"yes"**, the `SS.downloader` function will delete old .m3u8 files and replace them with new downloaded ones. The opposite is true if `delete` is set to **"no"**. 


# How to use
1. Install SkillShare Free Downloader in Google Chrome.
2. Create a new directory where you will put folders containing the videos.
3. Download the videos and organize them in folders inside the directory. 
4. Set the created directory as the working directory.
5. Load the script.
6. Run the `SS.downloader` function. (set `delete` according to preference). 
7. Convert downloaded files using VLC Media Player 

# Converting downloaded files to .mp4 format using VLC
1. Open VLC Media Player
2. Go to Media > Convert/Save then select the files you want to convert then click Convert/Save
3. Beside Profile, click the wrench icon (Edit Selected Profile) and set the following:
* Encapsulation: MP4/MOV
* Video Codec: Keep original video track
* Audio Codec: Keep original audio track
4. Set destination file where converted files will be stored
* If converting files from multiple folders, converted files will automatically be stored in the same folder where the original files are located.



# Notes

1. Make sure to working directory has folders containing the initial .m3u8 files. 

- Example: Current directory -> Created directory -> Folder -> .m3u8
- Set "Created directory" as your working directory, not "Folder". 

2. Downloaded .m3u8 files are only accessible for limited time period. Make sure to convert immediately to another file format. 

