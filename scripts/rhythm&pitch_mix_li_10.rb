#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm&pitch'
type = 'mix'
personID = 'li'
version = '10'

#where to save
#save_file = "D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/#{Time.now.strftime("%H-%F")}-melody#{version}ju.wav"
save_file = "C:/Users/lizzy/Documents/Master AI Intelligent Technology/S2/MTM/Scripts/#{feature}_#{type}_#{personID}_#{version}.wav"

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'
interval = 1.25
use_bpm 80
#generate some sound to record


in_thread(name: :two) do #random part
  20.times do
    sample [:drum_cowbell,:drum_tom_hi_hard,:drum_snare_soft,:drum_tom_mid_soft,:drum_tom_hi_hard].choose
    sleep [0.25,0.75,5].choose
    sample [:drum_cowbell,:drum_tom_hi_hard,:drum_snare_soft,:drum_tom_mid_soft,:drum_tom_hi_hard].choose
    sleep [0.5,0.75,1].choose
    sample [:drum_cowbell,:drum_tom_hi_hard,:drum_snare_soft,:drum_tom_mid_soft,:drum_tom_hi_hard].choose
    sleep [0.25,0.75,5].choose
    sample [:drum_cowbell,:drum_tom_hi_hard,:drum_snare_soft,:drum_tom_mid_soft,:drum_tom_hi_hard].choose
    sleep [0.5,0.75,1].choose
    sample :drum_snare_soft
    sleep [0.5,0.75,1].choose
    sample [:drum_cowbell,:drum_heavy_kick].choose
    sleep [0.25,0.75,5].choose
    sample [:drum_cowbell,:drum_tom_hi_hard,:drum_snare_soft,:drum_tom_mid_soft,:drum_tom_hi_hard].choose
    sleep [0.5,0.75,1].choose
  end
end

in_thread(name: :three) do
  20.times do
    play 60
    sleep 0.75
    play 64
    sleep 0.75
    play 65
    sleep 0.25
    play 64
    sleep 0.25
    play 65
    sleep 0.75
    play 66
    sleep 0.5
    play 67
    sleep 0.5
    play 68
    sleep 0.5
    
    
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

