#example
use_bpm 100
in_thread(name: :one) do
  6.times do
    sample :drum_heavy_kick
    sleep [0.5,1,1.5,2].choose
    sample :drum_heavy_kick
    sleep [0.5,1,1.5,2].choose
    sample  :drum_heavy_kick
    sleep [0.5,1,1.5,2].choose
    sample :drum_heavy_kick
    sleep [0.5,1,1.5,2].choose
  end
end

in_thread(name: :two) do
  8.times do
    sample [:drum_tom_lo_soft,:drum_tom_high_hard,:drum_tom_high_soft,:drum_tom_lo_hard].choose
    sleep [0.5,0.2,0.8].choose
    sample [:drum_tom_lo_soft,:drum_tom_high_hard,:drum_tom_high_soft,:drum_tom_lo_hard].choose
    sleep [0.5,0.2,0.8].choose
    sample [:drum_tom_lo_soft,:drum_tom_high_hard,:drum_tom_high_soft,:drum_tom_lo_hard].choose
    sleep [0.5,0.2,0.8].choose
    sample [:drum_tom_lo_soft,:drum_tom_high_hard,:drum_tom_high_soft,:drum_tom_lo_hard].choose
    sleep [0.5,0.2,0.8].choose
  end
end


