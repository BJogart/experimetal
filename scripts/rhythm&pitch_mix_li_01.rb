#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm&pitch'
type = 'mix'
personID = 'li'
version = '01'

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
    sample :drum_heavy_kick
    sleep interval
    sample :drum_heavy_kick
    sleep interval
    sample :drum_heavy_kick
    sleep interval
    sample :drum_heavy_kick
    sleep interval
    
  end
end

in_thread(name: :two) do
  20.times do
    sleep interval
    sample [:drum_tom_lo_soft,:drum_bass_hard].choose
    sleep [0.5,1,1.5].choose
    sleep interval
    sample [:drum_tom_lo_soft,:drum_bass_hard].choose
    sleep [0.5,1,1.5].choose
    sleep interval
    sample [:drum_tom_lo_soft,:drum_bass_hard].choose
    sleep [0.5,1,1.5].choose
    sleep interval
    sample [:drum_tom_lo_soft,:drum_bass_hard].choose
    sleep [0.5,1,1.5].choose
  end
end

in_thread(name: :three) do
  #random sequence of tones in the c-toonladder without beginning with a c end ending with a c, representing
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
  sleep interval
  
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

