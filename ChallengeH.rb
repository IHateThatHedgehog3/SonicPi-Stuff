finish = "C:/Users/daniel_gutierrez/Downloads/Mortal Kombats Finish Him sound byte.wav"
use_bpm 120
use_synth :chiplead
define :twoNotes do |note1, note2|
  play note1
  play note2
  sleep 0.5
end

sample finish
sleep 4

live_loop :beat1 do
  use_synth :dsaw
  play :c2, amp: 0.8
  sleep 1
end

sleep 16

live_loop :beat2 do
  with_fx :wobble do
    play :c2, amp: 0.5
    sleep 0.5
    play :c2, amp: 0.5
    sleep 0.5
  end
end

sleep 16

# MEASURE 1 ---------------------------
twoNotes :a4, :a5
twoNotes :a4, :a5
twoNotes :c5, :c6
twoNotes :a4, :a5
twoNotes :d5, :d6
twoNotes :a4, :a5
twoNotes :e5, :e6
twoNotes :d5, :d6

# MEASURE 2 ---------------------------
twoNotes :c5, :c6
twoNotes :c5, :c6
twoNotes :e5, :e6
twoNotes :c5, :c6
twoNotes :g5, :g6
twoNotes :c4, :c5
twoNotes :e5, :e6
twoNotes :c4, :c5

# MEASURE 3 ---------------------------
twoNotes :g4, :g5
twoNotes :g4, :g5
twoNotes :b4, :b5
twoNotes :g4, :g5
twoNotes :c5, :c6
twoNotes :g4, :g5
twoNotes :d5, :d6
twoNotes :c5, :c6

# MEASURE 4 ---------------------------
twoNotes :f4, :f5
twoNotes :f4, :f5
twoNotes :a4, :a5
twoNotes :f4, :f5
twoNotes :c5, :c6
twoNotes :f4, :f5
twoNotes :c5, :c6
twoNotes :b4, :b5
