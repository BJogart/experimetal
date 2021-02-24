2.times do
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