# Back up your Music playlists on macOS Catalina

Since there's no way to automatically back up individual Music playlists on macOS Catalina, this script uses UI scripting to automate the exporting of playlists as XML files. Note that your Mac must be awake and the Music app must have focus the entire time that the script is running. To prevent the script from running while you're doing other things, the first thing it does is ask if you want to run the backup. Click "Yes" to run the backup. Click "No," and the script will quit. (If you don't do anything for 10 seconds, the script will quit.)

The script saves the XML files in a subdirectory of your `Documents` folder called `Playlist Backup`. If the `Playlist Backup` directory doesn't exist, the script will create it. If you want to change the subdirectory, find this line

`set backupFolder to "Playlist Backup"`

and replace "Playlist Backup" with another name. The name must be enclosed in quotes.

The script will create a subdirectory for each day that it runs. That directory is named with the current year, month and day in the format `YYYYMMDD`. For example, if you run the script on July 2, 2020, the XML files will be stored in `~/Documents/Playlist Backup/20200702`.

The code is released into the public domain. (See the [UNLICENSE](UNLICENSE) file.)