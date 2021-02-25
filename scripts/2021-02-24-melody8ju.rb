#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#where to save
save_file = 'D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/melody_8.wav'

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'

interval = 0.25

#generate some sound to record
in_thread(name: :one) do
  20.times do
    play 50
    sleep interval
    play 50
    sleep interval
    play 60
    sleep interval
    play 65
    sleep interval
    play 70
    sleep interval
    play 65
    sleep interval
    play 60
    sleep interval
    play 60
    sleep interval
    play 61
    sleep interval
    play 62
    sleep interval
    play 65
    sleep interval
  end
end

in_thread(name: :two) do
  20.times do
    play 45
    sleep interval * 2
    play 50
    sleep interval * 2
    play 55
    sleep interval * 2
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

