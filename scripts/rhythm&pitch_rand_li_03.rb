#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm&pitxh'
type = 'rand'
personID = 'li'
version = '03'

#where to save
#save_file = "D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/#{Time.now.strftime("%H-%F")}-melody#{version}ju.wav"
save_file = "C:/Users/lizzy/Documents/Master AI Intelligent Technology/S2/MTM/Scripts/#{feature}_#{type}_#{personID}_#{version}.wav"

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'
interval = 1
use_bpm 120
#generate some sound to record


in_thread(name: :two) do #random part
  20.times do
    sleep interval
    sample :drum_bass_hard
    sleep ([0.2,0.4,0.6,0.8,1].choose)*3
    sample :drum_heavy_kick
    sleep ([0.2,0.4,0.6,0.8,1].choose)*2
    sample :drum_heavy_kick
    sleep [0.2,0.4,0.6,0.8,1].choose
    sample :drum_bass_hard
    sleep ([0.2,0.4,0.6,0.8,1].choose)*3
    sample :drum_heavy_kick
    sleep ([0.2,0.4,0.6,0.8,1].choose)*2
    sample :drum_heavy_kick
    sleep [0.2,0.4,0.6,0.8,1].choose
    
  end
end

in_thread(name: :three) do #random part
  20.times do
    
    play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    play choose([48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]), cutoff: rrand(60, 120)
    sleep [0.2,0.4,0.6,0.8,1].choose
    
    
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

