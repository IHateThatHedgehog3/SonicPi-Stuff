pingas = "C:/Users/daniel_gutierrez/Documents/Audacity/pingas.wav"
hate = "C:/Users/daniel_gutierrez/Documents/Audacity/I Hate that Hedgehog compilation.wav"
define :melody do |octave|
  use_synth :saw
  play :bb2 + octave
  sleep 0.2
  play :b2 + octave
  sleep 0.2
  play :c3 + octave
  play :c4 + octave
  sleep 0.8
  play :eb3 + octave
  play :eb4 + octave
  sleep 0.8
  play :g3 + octave
  sleep 0.4
  play :gb3 + octave
  play :gb4 + octave
  sleep 0.8
  play :g3 + octave
  play :g4 + octave
  sleep 0.8
  play :c4 + octave
  play :c5 + octave
  sleep 0.8
  play :g3 + octave
  sleep 0.4
  play :gb3 + octave
  play :gb4 + octave
  sleep 0.8
  
  play :g3 + octave
  sleep 0.4
  play :eb3 + octave
  play :eb4 + octave
  sleep 0.8
  play :d3 + octave
  play :d4 + octave
  sleep 0.8
  play :c3 + octave
  play :c4 + octave
  sleep 0.8
  play :eb3 + octave
  play :eb4 + octave
  sleep 0.8
  play :g3 + octave
  sleep 0.4
  play :gb3 + octave
  play :gb4 + octave
  sleep 0.8
  play :g3 + octave
  play :g4 + octave
  sleep 0.8
end

use_bpm 100
use_synth :piano

live_loop :beat1 do
  use_synth :dsaw
  45.times do
    play :c2, amp: 0.8
    sleep 0.8
  end
  stop
end

sleep 4

sample pingas, amp: 4
sleep 4

live_loop :beat2 do
  use_synth :fm
  35.times do
    play :g4, amp: 0.5
    play :eb4, amp: 0.5
    sleep 0.4
    play :c4, amp: 0.5
    sleep 0.4
  end
  stop
end

melody 0

play :c5
sleep 0.8
play :eb5
sleep 0.8
play :g5
sleep 0.8

melody 24

play :g5
sleep 0.8
play :eb5
sleep 0.8
play :c5
sleep 0.8


sample hate, amp: 4
sleep 4
