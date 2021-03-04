#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm&pitch'
type = 'even'
personID = 'li'
version = '03'

#where to save
#save_file = "D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/#{Time.now.strftime("%H-%F")}-melody#{version}ju.wav"
save_file = "C:/Users/lizzy/Documents/Master AI Intelligent Technology/S2/MTM/Scripts/#{feature}_#{type}_#{personID}_#{version}.wav"

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'
interval = 1.5
use_bpm 120
#generate some sound to record
in_thread(name: :one) do #even part
  20.times do
    sample :drum_roll
    sleep interval
    sample :drum_tom_mid_soft
    sleep interval
    sample :drum_tom_mid_soft
    sleep interval
    sample :drum_tom_mid_soft
    sleep interval
    sample :drum_heavy_kick
    sleep interval
    sample :drum_tom_mid_soft
    sleep interval
    sample :drum_tom_mid_soft
    sleep interval
    sample :drum_tom_mid_soft
    sleep interval
    
  end
end


in_thread(name: :three) do
  20.times do
    sleep interval
    play 44
    sleep interval/2
    play 42
    sleep interval/2
    play 40
    sleep interval/2
    play 44
    sleep interval/2
    play 46
    sleep interval/2
    play 48
    sleep interval/2
    play 44
    sleep interval/2
    play 42
    sleep interval/2
    play 40
    sleep interval/2
    play 38
    sleep interval/2
    play 36
    sleep interval/2
    play 34
    sleep interval/2
    
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

