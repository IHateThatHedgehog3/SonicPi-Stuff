#Samples-Variables-----------------------------
Hit = "C:/Users/daniel_gutierrez/Downloads/Orchestra Hit Meme Sound FX.wav"
DeadOr = "C:/Users/daniel_gutierrez/Documents/Audacity/Metal Sonic’s CD voice lines animated.wav"
Sonic = "C:/Users/daniel_gutierrez/Downloads/df54-9fa1-4b1b-8ca2-e53d7403f583.wav"
RememberTht = "C:/Users/daniel_gutierrez/Documents/Audacity/af2f-5c9c-44af-bcb5-04bc738c34d9.wav"
x = 3.5
h = 0

#SetUp-----------------------------------------
use_bpm 143
use_synth  :dtri

#Background (1)--------------------------------
live_loop :ambience do
  with_fx :panslicer do
    100.times do
      sample :ambi_dark_woosh, amp: 0.2
      sleep 0.3
    end
    stop
  end
end

#Background (2)--------------------------------
use_synth :dsaw
play :c2, amp: 0.8, sustain: 47, amp: 0.3

sleep 8

#Sample (1)------------------------------------
sample DeadOr

sleep 8

#m1-8 (First Beat!)----------------------------
define :back do |different1, different2|
  play :e4, amp: 0.6
  sleep 0.75
  play :eb4, amp: 0.6
  sleep 0.75
  play :d4, amp: 0.6
  sleep 1
  play :c4, amp: 0.6
  sleep 0.5
  play :a3, amp: 0.6
  sleep 0.5
  play different1
  play different2
  sleep 0.5
end

live_loop :crazy do
  4.times do
    back :r, :r
    back :c4, :a3
  end
  stop
end

sleep 16

#m5-7 (Melody!)--------------------------------
use_synth :hoover
3.times do
  play :a5, amp: 0.5
  sleep 0.75
  play :a5, amp: 0.5
  sleep 0.75
  play :g5, amp: 0.5
  sleep 0.5
  play :a5, amp: 0.5
  sleep 0.5
  play :d5, amp: 0.5
  sleep 0.5
  play :e5, amp: 0.5
  sleep 0.5
  play :g5, amp: 0.5
  sleep 0.5
end

play :a5, amp: 0.5
sleep 0.75
play :c6, amp: 0.5
sleep 0.75
play :g5, amp: 0.5
sleep 0.75
play :d5, amp: 0.5
sleep 0.75
play :e5, amp: 0.5
sleep 0.75
play :c5, amp: 0.5
sleep 0.75

#End of Song - (You're too slow!)--------------
scene = [Hit, Sonic];
2.times do
  sample (scene [h])
  sleep 0.8
  h = h + 1
end

sleep 3

#End of Song - (Remember that...)--------------
4.times do
  sample RememberTht, amp: x
  sleep 0.9
  x= x-0.5
end
