define :play_rhythm do |n|
  sample :drum_snare_soft
  sleep n / 4
  sample :drum_snare_soft
  sleep n / 4
  sample :drum_snare_soft
  sleep n / 2
end


loop do
  play_rhythm([0.75, 1.0, 1.25].choose)
end