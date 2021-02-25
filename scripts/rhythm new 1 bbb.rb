#example
use_bpm 120
in_thread(name: :one) do
  12.times do
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_bass_soft
    sleep 0.5
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_bass_soft
    sleep 0.5
  end
end


in_thread(name: :two) do
  
  6.times do
    sleep 3
    sample :drum_cymbal_pedal
    sleep 0.5
    sample :drum_cymbal_pedal
    sleep 0.5
    sample :drum_cymbal_pedal
  end
end

in_thread(name: :three) do
  
  4.times do
    sample :drum_tom_lo_hard
    sleep 0.5
    sample :drum_tom_lo_hard
    sleep 8
  end
end
