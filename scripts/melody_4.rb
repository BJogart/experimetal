#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#where to save
save_file = 'D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/melody_4.wav'

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'

#generate some sound to record
in_thread(name: :one) do
  3.times do
    play 40, amp: 4
    sleep 1
    play 45, amp: 4
    sleep 1
    play 46, amp: 4
    sleep 1
    play 42, amp: 4
    sleep 1
    play 43, amp: 4
    sleep 1
  end
end

in_thread(name: :two) do
  4.times do
    sample :drum_bass_soft, amp: 4
    sleep 2
    sample :drum_bass_hard, amp: 4
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

