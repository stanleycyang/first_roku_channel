#Roku setup

##Requirements

- Your text editor (Sublime, Atom, Vim, etc.)
- A zip alias setup
- Telnet 
- Chrome / Mozilla browser

##Development Environment

- Roku channels are created in BrightScript
- Developer side-loads channel onto Roku box
- Roku box signs app for submission as a public / private channel

##Enable Dev Mode on Roku

With the remote, press: Home 3x, Up 2x, Right, Left, Right, Left, Right 

*You connect to your Roku via the IP address.*

##Our Roku setup

**IP address:** 192.168.1.151
**User name:** rokudev
**Password:** foobar

In your browser, go to 192.168.1.151 (Our IP address) and enter our credentials

##Testing channel on the Roku gotchas

- You MUST zip files before submitting them. 
- Only one developer channel is installed at a time. Your new one replaces the old one
- Script is compiled at upload time, runs immediately
- App stays on `My Channels` screen, and can be relaunched with the remote

Set up this alias in your .bashrc:

```bash
function zr {
	zip -9 -r ../$1.zip
}
```

##File structure

`Example:`

```
├── Makefile
├── README.txt
├── images
│   ├── Home_Overhang_BackgroundSlice_HD.png
│   ├── Home_Overhang_BackgroundSlice_SD43.png
│   ├── Logo_Overhang_Flickr_HD.png
│   ├── Logo_Overhang_Flickr_SD.png
│   ├── mm_icon_focus_hd.png
│   ├── mm_icon_focus_sd.png
│   ├── mm_icon_side_hd.png
│   └── mm_icon_side_sd.png
├── manifest
└── source
    ├── accountlink.brs
    ├── flickrtoolkit.brs
    ├── main.brs
    ├── uitoolkit.brs
    └── utils.brs
```

- "source folder" with Brightscript code
- manifest file 
- Additional image folder

Also, a typical Roku channel is under 500 KB. Max size is 2MB.

```
title=Flickr
subtitle=photo viewer
mm_icon_focus_hd=pkg:/images/mm_icon_focus_hd.png
mm_icon_side_hd=pkg:/images/mm_icon_side_hd.png
mm_icon_focus_sd=pkg:/images/mm_icon_focus_sd.png
mm_icon_side_sd=pkg:/images/mm_icon_side_sd.png
major_version=1
minor_version=0
build_version=00005
```