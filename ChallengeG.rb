# Stranger Things Main Theme
use_bpm 160
use_synth :saw

theme = [:c2,:e2,:g2,:b2,:c3,:b2,:g2,:e2]

x = 0

live_loop :main_theme do
  8.times do
    with_fx :distortion do
      play theme[x]
      x = x + 1
      sleep 0.5
    end
  end
  x = 0
end

# Seven Nation Army by The White Stripes

use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25
nations = [:e3, :e3, :g3, :e3, :r, :d3, :c3, :b2]
sleeps = [1.5,0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]
h = 0
y = 0
live_loop :seven_nations do
  8.times do
    play nations[h]
    h = h + 1
    sleep sleeps[y]
    y = y + 1
  end
  h = 0
  y = 0
end
