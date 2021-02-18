# 15 seconds
starttime = Time.now

3. times do
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
  play 50, amp:4, release: 0.5
  sleep 0.5
end

endtime = Time.now
puts endtime - starttime