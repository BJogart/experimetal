#example
use_bpm 80
in_thread(name: :one) do
  5.times do
    sample :drum_tom_lo_soft
    sleep 1
    sample :drum_tom_lo_soft
    sleep 1
    sample :drum_tom_lo_soft
    sleep 1
    sample :drum_tom_lo_soft
    sleep 1
  end
end


in_thread(name: :two) do
  
  6.times do
    sample :drum_cymbal_open
    sleep 4
  end
end

in_thread(name: :three) do
  
  4.times do
    sample :drum_tom_mid_hard
    sleep 2
    sample :drum_tom_mid_hard
    sleep 2
    sample :drum_tom_mid_hard
    sleep 2
  end
end


