2.times do
  4.times do
    use_random_seed 11
    play scale(:D4, :blues_major).choose
    sleep 0.25
  end
  2.times do
    play chord(:D4, :dim7).choose
    sleep 0.5
  end
end
2.times do
  4.times do
    use_random_seed 11
    play scale(:D4, :blues_major).choose
    sleep 0.25
  end
  2.times do
    play chord(:D4, :major).choose
    sleep 0.5
  end
end
4.times do
  use_random_seed 11
  play scale(:D4, :blues_major).choose
  sleep 0.25
end
2.times do
  play chord(:D4, :dim7).choose
  sleep 0.5
end