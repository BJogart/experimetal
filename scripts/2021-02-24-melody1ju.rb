#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#where to save
save_file = 'D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/melody_1.wav'

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'

#generate some sound to record
in_thread(name: :one) do
  5.times do
    play 50, release: 2
    sleep 1
    play 50
    sleep 1
    play 55, release: 2
    sleep 1
  end
end

in_thread(name: :two) do
  5.times do
    play_chord chord(:E3, :m7)
    sleep 1
    play_chord chord(:F3, :m7)
    sleep 1
    play_chord chord(:G3, :m7)
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