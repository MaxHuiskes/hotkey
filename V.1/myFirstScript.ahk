#Persistent  ; Keep the script running until the user exits it.
Menu, WinHotKey, Add, Win+N=StartsFirefox, MenuHandler
Menu, MyMenu, Add, WinHotKey, :WinHotKey
Menu, WinHotKey, Add, Win+N=StartsFirefox, firefox
Menu, WinHotKey, Add, Win+C=OpensAnime/MangaSites, anime
Menu, WinHotKey, Add, Win+G=StartsHappySound, happy
Menu, MyMenu, Add 
Menu, CtrlAltHotKey, Add, Ctrl+Alt+Q=Taskbartool, MenuHandler
Menu, MyMenu, Add, CtrlAltHotKey, :CtrlAltHotKey
Menu, CtrlAltHotKey, Add, Ctrl+Alt+Q=Taskbartool, taskbar
Menu, CtrlAltHotKey, Add, Ctrl+Alt+W=MiniPlaces, nimi
Menu, CtrlAltHotKey, Add, Ctrl+Alt+E=Eclipse, eclipse
Menu, CtrlAltHotKey, Add, Ctrl+Alt+R=OBSStudio, obs
Menu, CtrlAltHotKey, Add, Ctrl+Alt+T=Teams, teams
Menu, CtrlAltHotKey, Add, Ctrl+Alt+Y=Menu, menu
Menu, CtrlAltHotKey, Add, Ctrl+Alt+P=PlexServer, plex
Menu, CtrlAltHotKey, Add, Ctrl+Alt+A=\\acer, acer
Menu, CtrlAltHotKey, Add, Ctrl+Alt+S=\\hpkoen, hp
Menu, CtrlAltHotKey, Add, Ctrl+Alt+D=Word, word
Menu, CtrlAltHotKey, Add, Ctrl+Alt+Z=Outlook, outlook
Menu, CtrlAltHotKey, Add, Ctrl+Alt+C=Teamviewer, team
Menu, CtrlAltHotKey, Add, Ctrl+Alt+V=schoolsites.bat, school
Menu, CtrlAltHotKey, Add, Ctrl+Alt+M=Mangadex, manga
return

MenuHandler:
MsgBox You selected %A_ThisMenuItem% from menu %A_ThisMenu%.
return

;*********************************
;**Start windows-toets(#) letter**
;*********************************

#n::							; start firefox
firefox:
Run, firefox.exe
return

#c:: 							; start anime/manga sites in firefox
anime:
run, https://mangadex.org/
run, https://www.kiss-anime.ws/
run, https://4anime.to/
run, https://mangakakalot.com/
return

#g:: 							; start happy sound 
happy:
MsgBox, 4, Are you sad?, Happy sound?,
IfMsgBox, No
    Return  ; User pressed the "No" button.
IfMsgBox, Yes
    SoundPlay, C:\Users\Maxhu\Documents\bureaublad\Overig\Windows\rawrOpStartWindows.wav
    return
return

;*******************************
;**Start ctrl(^) alt(!) letter**
;*******************************

^!m::							; start mangadex in firefox 
manga:
Run https://mangadex.org/
return

^!p::							; start plex server in firefox 
plex:
run, http://127.0.0.1:32400/web/index.html
return

^!e::							; start eclipse
eclipse:
run, C:\Users\Maxhu\eclipse\cpp-2020-12\eclipse\eclipse.exe
return

^!a::							; open server map acer
acer:
run, \\acer
return

^!s::							; open server map hpkoen 
hp:
run, \\hpkoen
return

^!d::							; start word 
word:
run, C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE
return

^!t::							; start teams 
teams:
run, C:\Users\Maxhu\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
return

^!q::							; start taskbartool 
taskbar:
run, C:\Users\Maxhu\Desktop\TaskbarTool v1.0.8\taskbartool.exe
return

^!y::
menu:
Menu, MyMenu, Show 
return

^!r::							; start obs studio 
obs:
run, C:\Users\Maxhu\Documents\bureaublad\scho\OBS Studio.lnk
return

^!w::							; start nimi places 
nimi:
run, D:\Nimi Places.exe
return

^!v::							; start school site.bat 
school:
run, C:\Users\Maxhu\Desktop\TaskbarTool v1.0.8\school site.bat
return

^!z::							; start outlook 
outlook:
run, C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE
return

^!c::							; start teamviewer 
team:
run,D:\teamviewer\TeamViewer.exe
return

;MsgBox , Does nothing. Future HotKey.