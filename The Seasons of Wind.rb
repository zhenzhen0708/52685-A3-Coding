# Welcome to Sonic Pi

use_bpm 55

#drum
in_thread do
  sample :drum_cymbal_open , amp: 0.5
  sleep 0.25
end

in_thread do
  loop do
    sample :drum_cymbal_closed, amp: 0.3
    sleep 0.25
  end
end

in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 0.25
  end
end

in_thread do
  loop do
    sleep 0.5
    sample :drum_snare_hard, amp: 0.25
    sleep 0.5
  end
end


#bass

in_thread do
  use_synth :bass_foundation
  
  play :C3 ,amp: 0.25
  sleep 0.25
  play :C3 ,amp: 0.25
  sleep 0.25
  play :C3 ,amp: 0.25
  sleep 0.25
  play :C3 ,amp: 0.25
  sleep 0.25
  play :C3 ,amp: 0.25
  sleep 0.25
  play :C3 ,amp: 0.25
  sleep 0.25
  play :C3 ,amp: 0.25
  sleep 0.25
  play :D3 ,amp: 0.25
  sleep 0.25
  
  play :E3 ,amp: 0.25
  sleep 0.25
  play :E3 ,amp: 0.25
  sleep 0.25
  play :E3 ,amp: 0.25
  sleep 0.25
  play :E3 ,amp: 0.25
  sleep 0.25
  play :E3 ,amp: 0.25
  sleep 0.25
  play :E3 ,amp: 0.25
  sleep 0.25
  play :E3 ,amp: 0.25
  sleep 0.25
  play :D3 ,amp: 0.25
  sleep 0.25
  
  play :G2 ,amp: 0.25
  sleep 0.25
  play :G2 ,amp: 0.25
  sleep 0.25
  play :G2 ,amp: 0.25
  sleep 0.25
  play :G2 ,amp: 0.25
  sleep 0.25
  play :G2 ,amp: 0.25
  sleep 0.25
  play :G2 ,amp: 0.25
  sleep 0.25
  play :G2 ,amp: 0.25
  sleep 0.25
  play :A2 ,amp: 0.25
  sleep 0.25
  
  play :B2 ,amp: 0.25
  sleep 0.25
  play :B2 ,amp: 0.25
  sleep 0.25
  play :B2 ,amp: 0.25
  sleep 0.25
  play :B2 ,amp: 0.25
  sleep 0.25
  play :B2 ,amp: 0.25
  sleep 0.25
  play :B2 ,amp: 0.25
  sleep 0.25
  play :B2 ,amp: 0.25
  sleep 0.25
  play :B2 ,amp: 0.25
  sleep 0.25
  
  play :C4 ,amp: 0.35
  sleep 0.25
  play :C4 ,amp: 0.35
  sleep 0.25
  play :C4 ,amp: 0.35
  sleep 0.25
  play :C4 ,amp: 0.35
  sleep 0.25
  play :C4 ,amp: 0.35
  sleep 0.25
  play :C4 ,amp: 0.35
  sleep 0.25
  play :C4 ,amp: 0.35
  sleep 0.25
  play :D4 ,amp: 0.35
  sleep 0.25
  
  play :E4 ,amp: 0.35
  sleep 0.25
  play :E4 ,amp: 0.35
  sleep 0.25
  play :E4 ,amp: 0.35
  sleep 0.25
  play :E4 ,amp: 0.35
  sleep 0.25
  play :E4 ,amp: 0.35
  sleep 0.25
  play :E4 ,amp: 0.35
  sleep 0.25
  play :G4 ,amp: 0.35
  sleep 0.25
  play :E4 ,amp: 0.35
  sleep 0.25
  
  play :G3 ,amp: 0.35
  sleep 0.25
  play :G3 ,amp: 0.35
  sleep 0.25
  play :G3 ,amp: 0.35
  sleep 0.25
  play :G3 ,amp: 0.35
  sleep 0.25
  play :G3 ,amp: 0.35
  sleep 0.25
  play :G3 ,amp: 0.35
  sleep 0.25
  play :G3 ,amp: 0.35
  sleep 0.25
  play :G3 ,amp: 0.35
  sleep 0.25
  
  play :D3 ,amp: 0.5
  sleep 1
  play :D3 ,amp: 0.5
  sleep 0.5
  play :DS3 ,amp: 0.5
  sleep 0.5
end



#pluck

in_thread do
  use_synth :pluck
  play_pattern_timed [:C5,:C5,:C5,:C5,:C5,:C5,:C5,:D5,:E5,:E5,:E5,:E5,:E5,:E5,:E5,:D5,:G4,:G4,:G4,:G4,:G4,:G4,:G4,:A4,:B4,:B4,:B4,:B4,:B4,:B4,:D5,:B4],0.25, amp: 0.5
  play_pattern_timed [:C5,:C5,:C5,:C5,:C5,:C5,:C5,:D5,:E5,:E5,:E5,:E5,:E5,:E5,:E5,:D5,:G4,:G4,:G4,:G4,:G4,:G4,:G4,:G4],0.25, amp: 0.5
  play :D5 ,amp: 0.5
  sleep 1
  play :D5 ,amp: 0.5
  sleep 0.5
  play :DS5 ,amp: 0.5
  sleep 0.5
end


#piano

in_thread do
  use_synth :piano
  play_pattern_timed [:C5,:C5,:C5,:C5,:C5,:C5,:C5,:D5,:E5,:E5,:E5,:E5,:E5,:E5,:E5,:D5,:G4,:G4,:G4,:G4,:G4,:G4,:G4,:A4,:B4,:B4,:B4,:B4,:B4,:B4,:D5,:B4],0.25, amp: 0.25
  play_pattern_timed [:C5,:C5,:C5,:C5,:C5,:C5,:C5,:D5,:E5,:E5,:E5,:E5,:E5,:E5,:E5,:D5,:G4,:G4,:G4,:G4,:G4,:G4,:G4,:G4],0.25, amp: 0.25
  play :D5 ,amp: 0.35
  sleep 1
  play :D5 ,amp: 0.35
  sleep 0.5
  play :DS5 ,amp: 0.35
  sleep 0.5
end


#chord

in_thread do
  use_synth_defaults release: 2 , amp: 0.5
  
  play chord(:C3, :major)
  sleep 2
  play chord(:E3, :minor)
  sleep 2
  play chord(:G3, :major)
  sleep 2
  play chord(:B3, :major7)
  sleep 2
  play chord(:C3, :major)
  sleep 2
  play chord(:E3, :minor)
  sleep 2
  play chord(:G3, :major)
  sleep 2
  play chord(:D3, :major)
  sleep 2
  
end


