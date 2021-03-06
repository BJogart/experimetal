#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#where to save
save_file = 'D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/melody_5.wav'

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'

#generate some sound to record
in_thread(name: :one) do
  10.times do # Here I found out that I can put it to 10 times because the recording stops at 15 anyway
    play 55
    sleep 1
    play 60
    sleep 1
    play 66
    sleep 1
    play 70
    sleep 1
    play 60
    sleep 1
  end
end

in_thread(name: :two) do
  10.times do
    sample :drum_snare_soft
    sleep 1
    sample :drum_snare_soft, rate: -1
    sleep 1
  end
end

#thread for saving
in_thread(name: :save) do
  #stop recording
  sleep 15 # The maximum total duration
  osc_send 'localhost',51235, '/stop-recording','myGUID'
  sleep 0.5
  #change the path in the next command to suit your system and usernames
  osc_send 'localhost',51235, '/save-recording','myGUID', save_file
end

