#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm&pitch'
type = 'even'
personID = 'li'
version = '10'

#where to save
#save_file = "D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/#{Time.now.strftime("%H-%F")}-melody#{version}ju.wav"
save_file = "C:/Users/lizzy/Documents/Master AI Intelligent Technology/S2/MTM/Scripts/#{feature}_#{type}_#{personID}_#{version}.wav"

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'
interval = 1
use_bpm 120
#generate some sound to record
in_thread(name: :one) do #even part
  20.times do
    sample :drum_tom_hi_hard
    sleep interval
    sample :drum_tom_hi_hard
    sleep interval/2
    sample :drum_tom_mid_soft
    sleep interval/2
    sample :drum_tom_mid_soft
    sleep interval
    sample :drum_tom_hi_hard
    sleep interval
    sample :drum_tom_hi_hard
    sleep interval/2
    sample :drum_tom_mid_soft
    sleep interval/2
    sample :drum_tom_mid_soft
    sleep interval
    
    
    
  end
end


in_thread(name: :three) do
  20.times do
    play 70
    sleep 1.5
    play 70
    sleep 1.5
    play 70
    sleep 1.5
    play 70
    sleep 1.5
    play 66
    sleep 1.25
    play 66
    sleep 1.25
    play 66
    sleep 1.25
    play 66
    sleep 1.25
    play 62
    sleep 1
    play 62
    sleep 1
    play 62
    sleep 1
    play 62
    sleep 1
    
  end
end

#thread for saving
in_thread(name: :save) do
  #stop recording
  sleep 28 # The maximum total duration
  osc_send 'localhost',51235, '/stop-recording','myGUID'
  sleep 0.5
  #change the path in the next command to suit your system and usernames
  osc_send 'localhost',51235, '/save-recording','myGUID', save_file
end

# Welcome to Sonic Pi

