path = "/Users/obi/Music/Drum Kits/2023/@kyd.and.cambria - YeatxKanKan DrumxLoopKit/YeatxKanKan Loops/YeatxKanKanLoop 5 160 Bpm.wav"

live_loop :sayonara do
  sample path, 0, amp: 2
  sleep 40
end

live_loop :kicks do
  sample :drum_heavy_kick, rate: 0.7, amp: 0.5
  sleep(0.5)
end

live_loop :hats do
  with_fx :reverb do
    sync :kicks
    sleep 0.75
    sample  :hat_zap, amp: 0.4
  end
end

live_loop :top do
  sample :hat_raw, cutoff: rrand(0.2, 0.7), reverb: 0.8, echo: 0.2
  sleep(0.25)
end

live_loop :perc do
  with_fx :reverb , phase: 0.5 do
    sleep 0.75
    sample :hat_tap, amp: 0.5
  end
end


live_loop :chords do
  use_synth :piano
  play chord(:D5, :minor7)
  sleep(3.75)
  play chord(:Eb5, :minor7)
  sleep(0.75)
  play chord(:D5, :minor7)
  sleep(4.5)
end

live_loop :scale do
  use_synth :kalimba
  play_pattern_timed (scale :D5, :minor_pentatonic, num_octaves: 1), 0.25,
    release: 0.1
  
end

live_loop :bassline do
  play(:D3, amp: 0.5)
  sleep(1)
  play(:D3, amp: 1)
  sleep(1.5)
  play(:D3, amp: 0.75)
  sleep(0.5)
  play(:D3, amp: 1)
  sleep(1)
end



