#https://in-thread.sonic-pi.net/t/recording-sonic-pi-output-into-wav-files-programatically/949
#https://in-thread.sonic-pi.net/t/recording-is-not-happening-with-osc-commands/4710

#file naming convension
feature = 'rhythm'
type = 'mix'
personID = 'li'
version = '07'

#where to save
#save_file = "D:/Jupyter_Projects/Jupyter Notebooks/SEM_2/Music/#{Time.now.strftime("%H-%F")}-melody#{version}ju.wav"
save_file = "C:/Users/lizzy/Documents/Master AI Intelligent Technology/S2/MTM/Scripts/#{feature}_#{type}_#{personID}_#{version}.wav"

#what port are we using
osc_send 'localhost',51235, '/start-recording','myGUID'
interval = 1
use_bpm 100
#generate some sound to record
in_thread(name: :one) do #even part
  20.times do
    sample [:drum_tom_mid_soft,:drum_tom_mid_hard,:drum_bass_hard,:drum_heavy_kick].choose
    sleep interval * [0.25,0.5,0.75,1,1.25,1.5].choose
    sample [:drum_tom_mid_soft,:drum_tom_mid_hard,:drum_bass_hard,:drum_heavy_kick].choose
    sleep interval * [0.25,0.5,0.75,1,1.25,1.5].choose
    sample [:drum_tom_mid_soft,:drum_tom_mid_hard,:drum_bass_hard,:drum_heavy_kick].choose
    sleep interval * [0.25,0.5,0.75,1,1.25,1.5].choose
    sample [:drum_tom_mid_soft,:drum_tom_mid_hard,:drum_bass_hard,:drum_heavy_kick].choose
    sleep interval * [0.25,0.5,0.75,1,1.25,1.5].choose
    
  end
end

in_thread(name: :two) do
  20.times do
    use_random_seed 0
    4.times do
      play chord(:C4, :major).choose
      sleep 0.25
    end
    3.times do
      play chord(:C4, :major).choose
      sleep 0.25
    end
  end
  play_chord chord(:G3, :major)
  sleep 0.5
  play_chord chord(:C4, :major)
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

