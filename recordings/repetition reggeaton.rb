
live_loop :flibble do
  sample :bd_haus, rate: 1, amp: 0.5
  sleep 0.375
  sample :sn_dolf, rate: 0.8, amp: 0.4
  sleep 0.125
  sample :bd_haus, rate: 1, amp: 0.5
  sleep 0.25
  sample :sn_dolf, rate: 0.8, amp: 0.5
  sleep 0.25
end

3.times do
  use_synth :saw
  play 38, amp: 1
  sleep 0.25
  play 50, amp: 0.8
  sleep 0.25
  use_synth :prophet
  play 57, amp: 0.8
  sleep 0.25
  play 55, amp: 0.8
  sleep 0.25
  play 55, amp: 0.8
  sleep 0.5
  play 55, amp: 0.8
  sleep 0.1633
  play 53, amp: 0.8
  sleep 0.1633
  play 50, amp: 0.8
  sleep 0.1633
end

