Taffy
=====
Taffy is a command-line tool for reading and writing audio metadata, as
supported by [TagLib](http://taglib.github.io/). That means it can edit
tags for MP3, Ogg Vorbis, FLAC, WAV, and MP4 files, along with a few
other file formats I've never used.

Installation
------------
If installing via `gem`, you must have already installed your
distribution's TagLib package, usually called `taglib`, `taglib-devel`,
or `libtag1-dev`. Then run:

	gem install taffy

If you use Arch Linux or a derivative, you may also install via the [AUR
package](https://aur.archlinux.org/packages/taffy/).

Usage
-----
	Usage: taffy [options] file ...
	
	Tag options:
	    -l, --album ALBUM                Set album tag
	    -r, --artist ARTIST              Set artist tag
	    -c, --comment COMMENT            Set comment tag
	    -g, --genre GENRE                Set genre tag
	    -t, --title TITLE                Set title tag
	    -n, --track TRACK                Set track tag
	    -y, --year YEAR                  Set year tag
	        --no-album                   Clear album tag
	        --no-artist                  Clear artist tag
	        --no-comment                 Clear comment tag
	        --no-genre                   Clear genre tag
	        --no-title                   Clear title tag
	        --no-track                   Clear track tag
	        --no-year                    Clear year tag
	        --clear                      Clear all tags
	
	Filename options:
	        --extract SPEC               Extract tags from filename
	        --rename SPEC                Rename file based on tags
	
	If no options are given, file tags are printed instead.
	
	In a filename spec, a sequence such as %R or %r stands for
	the corresponding tag, in this case the artist name. In a
	filename, %R leaves letter case intact, while %r downcases
	the tag. A sequence such as %_t maps special characters in
	the tag to the given substitute, in this case an underscore.
	
	Other options:
	    -h, --help                       Show this message and exit
	        --version                    Show version and exit

Examples
--------
Print tags from an audio file:
	
	taffy song.mp3

Tag a series of files with an artist, album, and year:

	taffy -r Deerhoof -l "The Man, The King, The Girl" -y 1997 *.mp3

Tag an audio file, then rename it to "14 - Queen of the Mole People.mp3":

	taffy -n 14 -t "Queen of the Mole People" --rename "%n - %T" song.mp3

Etymology
---------
Taffy tags audio files for you.
