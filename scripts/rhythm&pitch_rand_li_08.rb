#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm&pitch'
type = 'rand'
personID = 'li'
version = '08'

#where to save
#save_file = "D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/#{Time.now.strftime("%H-%F")}-melody#{version}ju.wav"
save_file = "C:/Users/lizzy/Documents/Master AI Intelligent Technology/S2/MTM/Scripts/#{feature}_#{type}_#{personID}_#{version}.wav"

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'
interval = 1.25
use_bpm 120
#generate some sound to record


in_thread(name: :two) do #random part
  20.times do
    sample :drum_snare_soft
    sleep [0.5,1,1.25].choose
    sample :drum_heavy_kick
    sleep [0.5,0.75,1].choose
    sample :drum_snare_soft
    sleep [0.5,0.75,1].choose
    sample [:drum_cymbal_soft,:drum_heavy_kick].choose
    sleep [0.5,0.75,1].choose
    sample :drum_snare_soft
    sleep [0.5,0.75,1].choose
    sample [:drum_cymbal_soft,:drum_heavy_kick].choose
    sleep [0.5,0.75,1].choose
    sample :drum_snare_soft
    sleep [0.5,0.75,1].choose
  end
end

in_thread(name: :three) do #random part
  20.times do
    sample :ambi_glass_hum, rate: 0.9, release: 0.4
    play 62
    sleep [0.5,0.75,1].choose
    play 60
    sleep [0.5,0.75,1].choose
    play 62
    sleep [0.5,0.75,1].choose
    play 65
    sleep [0.5,0.75,1].choose
    play 65
    sleep [0.5,0.75,1].choose
    play 67
    sleep [0.5,0.75,1].choose
    play 65
    sleep [0.5,0.75,1].choose
    play 69
    
    
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

