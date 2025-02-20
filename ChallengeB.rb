# Challenge B
use_bpm 160
use_synth :tech_saws

#DEFINE a function to hold the notes
define :stranger_notes do
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end

with_fx :ping_pong do
  stranger_notes
end

with_fx :panslicer do
  stranger_notes
end

with_fx :wobble do
  stranger_notes
end

with_fx :whammy do
  stranger_notes
end

with_fx :panslicer do
  stranger_notes
end

play :c2, sustain: 3
play :e2, sustain: 4
play :g2, sustain: 2
play :b2, sustain: 2
