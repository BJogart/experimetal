#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm'
type = 'mix'
personID = 'ju'
version = '10'

#where to save
#save_file = "D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/#{Time.now.strftime("%H-%F")}-melody#{version}ju.wav"
save_file = "D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/#{feature}_#{type}_#{personID}_#{version}.wav"

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'

interval = choose([0.9, rrand(0.2, 1.5)])

#generate some sound to record
in_thread(name: :one) do
  20.times do
    play 69
    sleep interval
    play 67
    sleep interval
    play 68
    sleep interval
    play 65
    sleep interval
    play 63
    sleep interval
    play 59
    sleep interval
    play 58
    sleep interval
    play 59
    sleep interval
    play 54
    sleep interval
    play 51
    sleep interval
  end
end

#thread for saving
in_thread(name: :save) do
  #stop recording
  sleep 14 # The maximum total duration
  osc_send 'localhost',51235, '/stop-recording','myGUID'
  sleep 0.5
  #change the path in the next command to suit your system and usernames
  osc_send 'localhost',51235, '/save-recording','myGUID', save_file
end

