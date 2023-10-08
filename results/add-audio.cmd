set src=result.mp4
set audio=audio.mp4
set result=hoang.audio.mp4

ffmpeg -i .\results\%src% -i .\results\%audio% -map 0:v -map 1:a -c:v copy -shortest .\results\%result%