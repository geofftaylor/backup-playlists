use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

on pathExists(pathName)
	(* Check if pathName is an existing file or folder.
		First, try to get a reference pathName by using alias. If it succeeds, return true.
		If it fails, try to get a reference to pathName as a POSIX path. If it succeeds, return true.
		Else return false.
	*)
	try
		pathName as alias
		return true
	on error
		try
			POSIX file pathName as alias
			return true
		on error
			return false
		end try
	end try
end pathExists

set alertResult to display alert ¬
	"Back up Music playlists now?" message "Quitting in 10 seconds..." buttons {"Yes", "No"} ¬
	default button "Yes" giving up after 10

set runBackup to button returned of alertResult
set gaveUp to gave up of alertResult

if runBackup = "No" or gaveUp then
	error number -128
end if

set backupFormat to "XML" -- The format of the backup file. This can be changed to any format listed in the Music app's "Save" window, e.g., "M3U".
set backupFolder to "Playlist Backup" -- The name of the folder that will contain the backups, grouped in subfolders by date.
set baseFolder to POSIX path of (path to documents folder) & backupFolder -- backupFolder is a subfolder of ~/Documents.
set baseFolderPath to POSIX file baseFolder -- Get baseFolder's POSIX path so that we can concatenate it with the current date.
set currentDate to do shell script "date +'%Y%m%d'" -- Get the current date in YYYYMMDD format.
set saveFolder to POSIX path of baseFolderPath & "/" & currentDate -- The path to today's folder
set baseFolderExists to pathExists(baseFolderPath) -- Check if baseFolder exists.
set saveFolderExists to pathExists(saveFolder) -- Check if saveFolder exists.

set the clipboard to saveFolder -- Put saveFolder's path on the clipboard so we can use it later.

tell application "Finder"
	if baseFolderExists then
		-- If baseFolder exists, check if saveFolder exists. If not, create saveFolder.
		if saveFolderExists is false then set newSaveFolder to make new folder at baseFolderPath with properties {name:currentDate}
	else
		-- Else create baseFolder and saveFolder
		set newBaseFolder to make new folder at (path to documents folder) with properties {name:backupFolder}
		set newSaveFolder to make new folder at baseFolderPath with properties {name:currentDate}
	end if
end tell

tell application "Music"
	activate
	set userPlaylists to (name of every user playlist whose name does not start with "Purchased" and smart is false) -- Get all user playlists except "Purchased on iPhone," etc. and smart playlists.
end tell

(* The Music app's AppleScipt interface doesn't offer a way to export playlists, so we have to script the UI using System Events.
    This block iterates over the playlists in the Music app. When it finds a playlist with a name that matches userPlaylists,
    it selects the playlist, clicks File > Library > Export Playlist, and saves the playlist in saveFolder.
   This uses the default file name, which is <playlist name>.<backupFormat>.
*)
tell application "System Events"
	tell its process "Music"
		tell its window "Music"
			tell its splitter group 1
				tell its outline 1
					repeat with thisRow in (every row)
						tell thisRow
							tell its UI element 1
								repeat with staticText in (every static text)
									if userPlaylists contains (name of staticText) then
										set selectedRow to select thisRow
										tell application "System Events"
											tell its process "Music"
												set focused of window "Music" to true
												delay 2
												click menu item "Export Playlist…" of menu "Library" of menu item "Library" of menu "File" of menu bar 1
												delay 2
												tell its window "Save"
													keystroke "G" using {command down, shift down} -- Shift-Cmd-G to change directories using the "Go to Folder" dialog.
													delay 2
													keystroke (the clipboard) -- Paste saveFolder's location into the "Go to Folder" dialog.
													delay 2
													keystroke return
													delay 2
													tell its pop up button 2
														click -- Click the "Format" popup menu.
														delay 2
														click menu item backupFormat of menu 1 -- Select the format specified by backupFormat.
													end tell
													delay 2
													click button "Save"
													delay 1
												end tell
											end tell
										end tell
									end if
								end repeat
							end tell
						end tell
					end repeat
				end tell
			end tell
		end tell
	end tell
end tell

tell application "Music"
	quit
end tell