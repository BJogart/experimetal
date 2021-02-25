# lower numbers = lower pitched beeps and
# higher numbers = higher pitched beeps. Just like on a piano,
# the numbers relate to notes on the piano.
# play 47 = play the 47th note on the piano.
# so play 48 is one note up (the next note to the right).
# the 4th octave C is number 60

# adjusting playback rate also adjusts pitch_to_ratio (halving pitch = octave lower)



starttime = Time.now

play 50, amp:4, release: 0.5
sleep 1.25
play 54, amp:4, release: 0.5
sleep 1.25
play 58, amp:4, release: 0.5
sleep 1.25
play 60, amp:4, release: 0.5
sleep 1.25
play 58, amp:4, release: 0.5
sleep 1.25
play 54, amp:4, release: 0.5
sleep 1.25
play 58, amp:4, release: 0.5
sleep 1.25
play 60, amp:4, release: 0.5
sleep 1.25
play 62, amp:4, release: 0.5
sleep 1.25
play 61, amp:4, release: 0.5
sleep 1.25
play 60, amp:4, release: 0.5
sleep 1.25
play 62, amp:4, release: 0.5
sleep 1.25
play 60, amp:4, release: 0.5

endtime = Time.now
puts endtime - starttime