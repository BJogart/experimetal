#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#where to save
save_file = 'D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/melody_6.wav'

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'

interval = 0.5

#generate some sound to record
in_thread(name: :one) do
  10.times do
    play 55
    sleep interval
    play 60
    sleep interval
    play 66
    sleep interval
    play 70
    sleep interval
    play 60
    sleep interval
  end
end

in_thread(name: :two) do
  10.times do
    play 66
    play 70
    sleep interval
    play 60
    play 72
    sleep interval
    play 60
    sleep interval
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

