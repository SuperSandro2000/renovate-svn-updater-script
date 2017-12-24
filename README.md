# Renovate SVN Updater Script
A batch script for windows to automaticaly initialize all Renovate [SVN Repos](http://www.renovate-ice.com/), sync them and pack the zip ready for flash. Requires [TortureSVN](https://tortoisesvn.net/downloads.html) installed.

## Setup
1. Install [TortureSVN](https://tortoisesvn.net/downloads.html)
2. Clone this repo into a new folder.
3. Run setup-svn.bat and follow the on screen instructions. All selected repos will be automaticaly downloaded and sorted in their own folder.

## Update Repos and zip the files
Run update-rom.bat to update all downloaded repos and pack them into flash-ready zip files.

### Note
Old zips are not automaticaly deleted! You need to do this on your own.
You can re-run the setup-svn.bat to add more roms. It does not matter if you reselect already downloaded ROM's or not.
If you want to delete a ROM just delete the folder for the ROM.

## Contained Software
[Z-zip](http://www.7-zip.org/) licensed under GNU LGPL license
