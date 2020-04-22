; Plugin: "Encouragement Words"
; Author: Ceyhun Veysel
; Description: This is a plugin to give you encouraging words every minute.
; Has: Configuration

#SingleInstance, Force
#Persistent
#CommentFlag //

// Configuration
encouragementWords := ["You can do this!", "Good!", "Continue!", "Awesome!", "Don't be so lazy, use your creativity!", "Go for it!", "You can do this!"]
// encouragementWords := [ "encouragement1" , "2" , "3" ]

#CommentFlag ;


SetTimer, showEnc, 60000




showEnc:
Random, Sel, 1, % encouragementWords.Length()
Tooltip, % encouragementWords[Sel]
sleep 1000
Tooltip
return