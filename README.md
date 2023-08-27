# ctf-dir

Small bash helper scripts to better manage files for CTF challenges

### Features
* Move all files from the last `n` minutes to a directory per challenge
* FZF for choosing an existing challenge
* Auto unzip/untar archives

### Installation
* Make sure you have `fzf` installed
* Run `./install.sh`, this will copy the nessecary scripts to `.local/bin`

### Usage
`ctf [challengename]` switch to a challenge directory

`ctfmv [challengename]` move the recent files into a challenge directory
