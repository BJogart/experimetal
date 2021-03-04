#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm'
type = 'mix'
personID = 'li'
version = '02'

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
    sample :drum_bass_soft
    sleep interval
    sample :drum_bass_soft
    sleep interval
    sample :drum_bass_soft
    sleep interval
    sample :drum_bass_soft
    sleep interval
    
  end
end

in_thread(name: :two) do
  20.times do
    sleep interval
    sample :drum_bass_soft
    sleep [0.2,0.4,0.6,0.8,1].choose
    sample :drum_bass_soft
    sleep [0.2,0.4,0.6,0.8,1].choose
    sample :drum_bass_soft
    sleep [0.2,0.4,0.6,0.8,1].choose
    sample :drum_bass_soft
    sleep [0.2,0.4,0.6,0.8,1].choose
    sample :drum_bass_soft
    sleep [0.2,0.4,0.6,0.8,1].choose
    sample :drum_bass_soft
    sleep [0.2,0.4,0.6,0.8,1].choose
    
  end
end

in_thread(name: :three) do
  use_synth :kalimba
  play 60
  sleep 0.8
  play 63
  sleep 0.8
  play 55
  sleep 0.8
  play 58
  sleep 0.8
  sleep 2.8
  play 58
  sleep 0.4
  play 60
  sleep 0.4
  play 60
  sleep 0.4
  play 63
  sleep 0.4
  play 63
  sleep 0.4
  play 55
  sleep 0.4
  play 55
  sleep 0.4
  play 58
  sleep 0.4
  play 58
  sleep 0.4
  sleep 1.6
  play 72
  sleep 0.4
  play 75
  sleep 0.4
  play 77
  sleep 0.4
  play 75
  sleep 0.4
  play 79
  play 60
  sleep 0.8
  play 63
  sleep 0.8
  play 55
  sleep 0.8
  play 58
  play 77
  sleep 0.4
  play 75
  sleep 0.4
  play 72
  play 60
  sleep 0.4
  play 60
  sleep 0.4
  play 63
  sleep 0.4
  play 63
  sleep 0.4
  play 55
  sleep 0.4
  play 55
  sleep 0.4
  play 58
  play 77
  sleep 0.4
  play 58
  play 75
  sleep 0.4
  play 60
  play 72
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

