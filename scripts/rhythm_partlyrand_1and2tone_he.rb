#example
use_bpm 100
in_thread(name: :one) do
  5.times do
    sample :drum_bass_hard
    sleep [0.5,1,1.5,2].choose
    sample :drum_bass_hard
    sleep [0.5,1,1.5,2].choose
    sample :drum_bass_hard
    sleep [0.5,1,1.5,2].choose
    sample :drum_bass_hard
    sleep [0.5,1,1.5,2].choose
  end
end

in_thread(name: :two) do
  8.times do
    sample :drum_snare_soft
    sleep [0.5,0.2,0.8].choose
    sample :drum_snare_soft
    sleep [0.5,0.2,0.8].choose
    sample :drum_snare_soft
    sleep [0.5,0.2,0.8].choose
    sample :drum_snare_soft
    sleep [0.5,0.2,0.8].choose
  end
end

in_thread(name: :three)do
  2.times do
    sample :drum_cymbal_closed
    sleep [2,4,3].choose
    sample :drum_cymbal_closed
    sleep [2,4,3].choose
    sample :drum_cymbal_closed
    sleep [2,4,3].choose
    sample :drum_cymbal_closed
    sleep [2,4,3].choose
  end
end