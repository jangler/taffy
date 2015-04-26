Taffy
=====
Taffy is a command-line tool for reading and writing audio (and video)
metadata, as supported by [TagLib](http://taglib.github.io/). That means
it can edit tags for MP3, Ogg Vorbis, FLAC, WAV, and MP4 files, along
with a few other file formats I've never used.

Installation
------------
	gem install taffy

Usage
-----
	Usage: taffy [options] file ...

	Tag options:
		-l, --album=ALBUM                Set album tag
		-r, --artist=ARTIST              Set artist tag
		-c, --comment=COMMENT            Set comment tag
		-g, --genre=GENRE                Set genre tag
		-t, --title=TITLE                Set title tag
		-n, --track=TRACK                Set track tag
		-y, --year=YEAR                  Set year tag
			--no-album                   Clear album tag
			--no-artist                  Clear artist tag
			--no-comment                 Clear comment tag
			--no-genre                   Clear genre tag
			--no-title                   Clear title tag
			--no-track                   Clear track tag
			--no-year                    Clear year tag
			--clear                      Clear all tags

	If no tag options are given, file tags are printed instead.

	Other options:
		-h, --help                       Show this message
			--version                    Show version

Examples
--------
Print tags from an audio file:
	
	taffy song.mp3

Tag an audio file with a title:

	taffy -t "Queen of the Mole People" song.mp3

Tag a series of files with an artist, album, and year:

	taffy -r Deerhoof -l "The Man, The King, The Girl" -y 1997 *.mp3

Etymology
---------
Taffy tags audio files for you.
