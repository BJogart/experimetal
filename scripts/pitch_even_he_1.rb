#example pitch even with tone freq from pitch freq, is very boring
in_thread(name: :one) do #even part
  play 60 + [1,1,1,1,2,2,2,3,3,5,5,6,7,7,7].choose
  sleep [1,2,3].choose
  play 60 + [1,1,1,1,1,1,2,2,2,2,3,3,3,3,3,4,5,7].choose
  sleep [1,2,3].choose
  play 60 + [1,1,2,2,2,2,2,2,3,3,3,3,4,4,4,5,5,5].choose
  sleep [1,2,3].choose
  play 60 +[2,2,2,3,3,3,3,3,3,3,3,4,4,4,5,5,5,5,6].choose
  sleep [1,2,3].choose
  play 60 + [1,1,1,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6].choose
  sleep [1,2,3].choose
  play 60 +[1,4,5,5,5,5,5,5,5,5,5,5,6,6,6,6,7,7].choose
  sleep [1,2,3].choose
  play 60 +[1,1,1,1,1,1,1,1,2,2,5,6,6,6,6,6,7,7].choose
  sleep [1,2,3].choose
  play 60 +[1,1,1,1,2,2,3,3,3,3,4,4,5,5,5,5,5,5,5,6,7].choose
  sleep [1,2,3].choose
end
