ant0 = [0, 0, 0, 0, 2, 2, 2, 4, 4, 7, 7, 9, 11, 11, 11, 13, 13, 13, 13]
ant2 = [0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 4, 4, 4, 4, 4, 5, 7, 11, 13, 13]
ant4 = [0, 0, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 5, 5, 5, 7, 7, 7, 13, 13, 13]
ant5 = [2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 7, 7, 7, 7, 9, 13]
ant7 = [0, 0, 0, 2, 4, 4, 4, 5, 5, 5, 5, 7, 7, 7, 7, 7, 9, 9, 13, 13]
ant9 = [0, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 9, 9, 9, 9, 11, 11, 13]
ant11 = [0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 7, 9, 9, 9, 9, 9, 11, 11, 13]
# counting rest as 13
antr = [0, 0, 0, 0, 2, 2, 4, 4, 4, 4, 5, 5, 7, 7, 7, 7, 7, 7, 7, 9, 11]

define :play_random do |r, t|
  n = ant0.choose if t == 0
  n = ant2.choose if t == 2
  n = ant4.choose if t == 4
  n = ant5.choose if t == 5
  n = ant7.choose if t == 7
  n = ant9.choose if t == 9
  n = ant11.choose if t == 11
  n = antr.choose if t == 13
  play r + n if n != 13
  return n
end

n = 0
loop do
  n = play_random(:D4, n)
  sleep 1
end
