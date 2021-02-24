4.times do
  play_chord [chord(:D4, :major)[2], chord(:D4, :major7).choose]
  sleep 1
  play_chord [chord(:D4, :major)[0], chord(:D4, :major7).choose]
  sleep 1
end