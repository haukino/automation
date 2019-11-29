/* 
	This code is provided to you, free of charge, by reddit user u/haukino 
	It's based on the suggestions by u/SevenMonkeyFury - Thanks for that!
	
	See discussion here: https://www.reddit.com/r/OneNote/comments/e3148m/invisible_equations_in_dark_mode_on2016/
	Feel free to adapt it to your needs and share if you have any improvements
	
	It tackles the problem with math equations in onenote 2016 not being visible in dark mode
	It simply changes the pages background to a light colour and enters equation mode so you
	can type away once you pressed the hotkey.
*/


#NoEnv
SendMode Input 


^!+:: ; [ctrl] + [alt] + [+] (Control Alt Plus)

if WinActive("ahk_exe ONENOTE.EXE") ; Checks if OneNote is active
	Send,  {alt down}wb{alt up} {alt down}{+}{alt up} ;Sends keys to switch background and then sends  [alt]+[+] to go into equation mode


;note that this goes backwards as well, so once you finisched with your equation press the hotkey again and it will exit the equation mode and return the backround to dark