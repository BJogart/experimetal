#example
use_bpm 100
in_thread(name: :one) do
  6.times do
    sample [:drum_cymbal_open,:drum_tom_lo_soft,:drum_bass_hard,:drum_bass_soft].choose
    sleep  1
    sample [:drum_cymbal_open,:drum_tom_lo_soft,:drum_bass_hard,:drum_bass_soft].choose
    sleep  1
    sample [:drum_cymbal_open,:drum_tom_lo_soft,:drum_bass_hard,:drum_bass_soft].choose
    sleep  1
    sample [:drum_cymbal_open,:drum_tom_lo_soft,:drum_bass_hard,:drum_bass_soft].choose
    sleep  1
  end
end

in_thread(name: :two) do
  8.times do
    sample [:drum_tom_lo_soft,:drum_tom_high_hard,:drum_tom_high_soft,:drum_tom_lo_hard].choose
    sleep  0.5
    sample [:drum_tom_lo_soft,:drum_tom_high_hard,:drum_tom_high_soft,:drum_tom_lo_hard].choose
    sleep  0.8
    sample [:drum_tom_lo_soft,:drum_tom_high_hard,:drum_tom_high_soft,:drum_tom_lo_hard].choose
    sleep  0.8
    sample [:drum_tom_lo_soft,:drum_tom_high_hard,:drum_tom_high_soft,:drum_tom_lo_hard].choose
    sleep  0.8
  end
end


