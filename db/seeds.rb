# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teams = Team.create([{:name => 'Virtus Pro'}, {:name => 'NIP'}, {:name => 'Fnatic'}, {:name => 'Cloud9'}, {:name => 'EnVyUS'}, {:name => 'Navi'}, {:name => 'Titan'}, {:name => 'TSM'}])


player_list = [
  [ "Neo", teams[0].id],
  [ "Pasha", teams[0].id],
  [ "Byali", teams[0].id],
  [ "Snax", teams[0].id],
  [ "Taz", teams[0].id],
  [ "Forest", teams[1].id],
  [ "Allu", teams[1].id],
  [ "Xizt", teams[1].id],
  [ "Get_Right", teams[1].id],
  [ "JW", teams[2].id],
  [ "Krimz", teams[2].id],
  [ "Olof", teams[2].id],
  [ "Pronax", teams[2].id],
  [ "Flusha", teams[2].id],
  [ "Skadoddle", teams[3].id],
  [ "N0thing", teams[3].id],
  [ "SeanG", teams[3].id],
  [ "Freakazoid", teams[3].id],
  [ "Shroud", teams[3].id]
]


player_list.each do |player|
  Player.create( :name => player[0], :team_id => player[1])
end

tournament = Tournament.create(:name => 'Dubia Invitational 2015', :org => 'ESL ESEA', :datestart => '9/08/2015', :datefinish => '9/13/2015')
tournament2 = Tournament.create(:name => 'DreamHack Cluj-Napoca', :org => 'DreamHack', :datestart => '10/28/2015', :datefinish => '11/01/2015')
tournament3 = Tournament.create(:name => 'IEM San Jose', :org => 'IEM', :datestart => '11/21/2015', :datefinish => '11/23/2015')



match_list = [
	["Cloud9 vs. EnVyUS[Cbbl]", "9/08/2015", 1, tournament.id],
	["Virtus Pro vs. NIP[Mirage]", "9/08/2015", 2, tournament.id],
	["Fnatic vs. Titan [Cbbl]", "9/08/2015", 3, tournament.id],
	["Navi vs. TSM [Overpass]", "9/08/2015", 4, tournament.id],
	["Virtus Pro vs. EnVyUS[Cache]", "9/08/2015", 5, tournament.id],
	["NIP vs. Cloud9[Dust2]", "9/08/2015", 6, tournament.id],
  ["Navi vs. Titan[Cbbl]", "9/08/2015", 7, tournament.id],
  ["Fnatic vs. TSM[Dust2]", "9/08/2015", 8, tournament.id],
  ["EnVyUS vs. NIP[Dust2]", "9/08/2015", 9, tournament.id],
  ["EnVyUS vs. NIP [Inferno]", "9/08/2015", 9, tournament.id],
  ["Titan vs. Fnatic[Train]", "9/08/2015", 11, tournament.id],
  ["Titan vs. Fnatic[Inferno]", "9/08/2015", 12, tournament.id],
  ["TSM vs. NIP[Dust2]", "9/08/2015", 13, tournament.id],
  ["TSM vs. NIP[Mirage]", "9/08/2015", 14, tournament.id],
  ["TSM vs. NIP[Inferno]", "9/08/2015", 15, tournament.id],
  ["Virtus Pro vs. Fnatic[Cbbl]", "9/08/2015", 16, tournament.id],
  ["Virtus Pro vs. Fnatic[Train]", "9/08/2015", 17, tournament.id],
  ["Virtus Pro vs. Fnatic[Cache]", "9/08/2015", 18, tournament.id],
  ["Virtus Pro vs. TSM[Overpass]", "9/08/2015", 19, tournament.id],
  ["Virtus Pro vs. TSM[Train]", "9/08/2015", 20, tournament.id],
  ["Virtus Pro vs. TSM[Dust2]", "9/08/2015", 21, tournament.id],
  ["Virtus Pro vs. TSM[Cbbl]", "9/08/2015", 22, tournament.id],
  ["Virtus Pro vs. TSM[Mirage]", "9/08/2015", 23, tournament.id]
]

match_list2 = [

       ["Luminosity Gaming vs. Cloud9 - Dust 2 - Group Stage - ",1, tournament2.id],
       ["Fnatic vs. Vexed Gaming - Cobblestone - Group Stage - ",2, tournament2.id],
       ["Virtus.Pro vs. Team Liquid - Cobblestone - Group Stage - ",3, tournament2.id],
       ["G2 Esports vs. mousesports - Inferno - Group Stage - ", 4, tournament2.id],
       ["Team Solomid vs. Flipsid3 Tactics - Cobblestone - Group Stage - ",5, tournament2.id],
       ["Ninjas In Pyjamas vs. Titan - Cobblestone - Group Stage - ",6, tournament2.id],
       ["Team EnVyUs vs. Team Dignitas - Cobblestone - Group Stage - ",7, tournament2.id],
       ["Natus Vincere vs. Counter Logic Gaming - Cobblestone - Group Stage - ",8, tournament2.id],
       ["Cloud9 vs. Vexed Gaming - Cobblestone - Group Stage - ",9, tournament2.id],
       ["Flipsid3 Tactics vs. mousesports - Overpass - Group Stage - ",10, tournament2.id],
       ["Ninjas In Pyjamas vs. Team Liquid - Mirage - Group Stage - ",11, tournament2.id],
       ["Team Dignitas vs. Counter Logic Gaming - Cobblestone - Group Stage - ",12, tournament2.id],
       ["Fnatic vs. Luminosity Gaming - Inferno - Group Stage - ",13, tournament2.id],
       ["Team Solomid vs. G2 Esports - Dust 2 - Group Stage - ", 14, tournament2.id],
       ["Virtus.pro vs. Titan - Train - Group Stage - ",15, tournament2.id],
       ["Fnatic vs. Cloud9 - Dust 2 - Decider Match - Game 1 - ",16, tournament2.id],
       ["Fnatic vs. Cloud9 - Overpass - Decider Match - Game 2 - ",17, tournament2.id],
       ["Team EnVyUs vs. Natus Vincere - Mirage - Group Stage - ",18, tournament2.id],
       ["G2 Esports vs. mousesports - Mirage - Decider Match - Game 1 - ",19, tournament2.id],
       ["G2 Esports vs. mousesports - Inferno - Decider Match - Game 2 - ",20, tournament2.id],
       ["G2 Esports vs. mousesports - Cache - Decider Match - Game 3 - ",21, tournament2.id],
       ["Titan vs. Ninjas in Pyjamas - Cache - Decider Match - Game 1 - ",22, tournament2.id],
       ["Titan vs. Ninjas in Pyjamas - Dust 2 - Decider Match - Game 2 - ",23, tournament2.id],
       ["Natus Vincere vs. CLG - Train - Decider Match - Game 1 - ",24, tournament2.id],
       ["Natus Vincere vs. CLG - Cobblestone - Decider Match - Game 2 - ",25, tournament2.id],
       ["Team EnVyUs vs. Fnatic - Mirage - Quarter-final - Game 1 - ",26, tournament2.id],
       ["Team EnVyUs vs. Fnatic - Cobblestone - Quarter-final - Game 2 - ",27, tournament2.id],
       ["Team EnVyUs vs. Fnatic - Cache - Quarter-final - Game 3 - ",28, tournament2.id],
       ["Virtus.Pro vs. G2 Esports - Cache - Quarter-final - Game 1",29, tournament2.id],
       ["Virtus.Pro vs. G2 Esports - Train - Quarter-final - Game 2", 30, tournament2.id],
       ["TSM vs. Ninjas in Pyjamas - Train - Quarter-final - Game 1", 31, tournament2.id],
       ["TSM vs. Ninjas in Pyjamas - Dust 2 - Quarter-final - Game 2", 32, tournament2.id],
       ["Luminosity vs. Natus Vincere - Dust 2 - Quarter-final - Game 1", 33, tournament2.id],
       ["Luminosity vs. Natus Vincere - Overpass - Quarter-final - Game 2", 34, tournament2.id],
       ["Team EnVyUs vs. G2 Esports - Dust 2 - Semi-final - Game 1", 35, tournament2.id],
       ["Team EnVyUs vs. G2 Esports - Inferno - Semi-final - Game 2", 36, tournament2.id],
       ["Team EnVyUs vs. G2 Esports - Cache - Semi-final - Game 3", 37, tournament2.id],
       ["Ninjas in Pyjamas vs. Natus Vincere - Train - Semi-final - Game 1", 38, tournament2.id],
       ["Ninjas in Pyjamas vs. Natus Vincere - Dust 2 - Semi-final - Game 2", 39, tournament2.id],
       ["EnVyUs vs. Natus Vincere - Train - Grand-final - Game 1", 40, tournament2.id],
       ["EnVyUs vs. Natus Vincere - Cobblestone - Grand-final - Game 2", 41, tournament2.id],
       ["This Game is Just Here So you can't see that it was a two map final", 42, tournament2.id]
  
]


match_list3 = [ 

  ["G2 vs.  CLG", 1, tournament3.id],
  ["G2 vs.  CLG", 2, tournament3.id],
  ["C9 vs.  TSM", 3, tournament3.id],
  ["C9  vs. TSM", 4, tournament3.id],
  ["C9 vs. TSM", 5, tournament3.id],
  ["NaVi vs.  LG", 6, tournament3.id],
  ["NaVi vs.  LG", 7, tournament3.id],
  ["TL vs.  VP", 8, tournament3.id],
  ["TL vs.  VP", 9, tournament3.id],
  ["Winner of A vs. Winner of B", 10, tournament3.id],
  ["Winner of A vs. Winner of B", 11, tournament3.id],
  ["Winner of A vs. Winner of B", 12, tournament3.id],
  ["Winner of C vs. Winner of D", 13, tournament3.id],
  ["Winner of C vs. Winner of D", 14, tournament3.id],
  ["Winner of E vs. Winner of F", 15, tournament3.id],
  ["Winner of E vs. Winner of F", 16, tournament3.id],
  ["Winner of E vs. Winner of F", 17, tournament3.id]

]



match_list.each do |match|
  Match.create( :name => match[0], :matchdate => match[1], :matchorder => match[2], :tournament_id => match[3])
end

match_list2.each do |match|
  Match.create( :name => match[0], :matchorder => match[1], :tournament_id => match[2])
end

match_list3.each do |match|
  Match.create( :name => match[0], :matchorder => match[1], :tournament_id => match[2])
end


games_list = [
	["Cobblestone", "http://www.youtube.com/embed/kYRw_DdlnmE?",1],
	["Mirage", "http://www.youtube.com/embed/LHgdZR4fAcU?",2],
	["Cobblestone", "http://www.youtube.com/embed/EFawjRIzR2s?",3],
	["Overpass", "http://www.youtube.com/embed/PSRAZndiOhc?",4],
	["Cache", "http://www.youtube.com/embed/MrlGbfgPR28?",5],
  ["Dust2", "http://www.youtube.com/embed/IPz8IWBxejI?",6],
  ["Cobblestone", "http://www.youtube.com/embed/bC49ebnTlUI?",7],
  ["Dust2", "http://www.youtube.com/embed/1eq3ZroT0fc?",8],
  ["Dust2", "http://www.youtube.com/embed/OhYc8Llowgg?", 9],
  ["Inferno", "http://www.youtube.com/embed/b6Slbne36So?", 10],
  ["Train", "http://www.youtube.com/embed/29oeTvuxMo?", 11],
  ["Inferno", "http://www.youtube.com/embed/zAGQBt_VhqU?", 12],
  ["Dust2", "http://www.youtube.com/embed/cWTb_MzfwQM?", 13],
  ["Mirage", "http://www.youtube.com/embed/GFj4-OcXRDg?",14],
  ["Inferno", "http://www.youtube.com/embed/Qz5ErHaVsUc?",15],
  ["Cobblestone", "http://www.youtube.com/embed/u7iHcbdHpT0?",16],
  ["Train", "http://www.youtube.com/embed/x2GQ9KCQIEs?",17],
  ["Cache", "http://www.youtube.com/embed/oi9zwKpOKh8?",18],
  ["Overpass", "http://www.youtube.com/embed/DA0iptQxFZQ?",19],
  ["Train", "http://www.youtube.com/embed/tncJS5DLDsc?",20],
  ["Dust2", "http://www.youtube.com/embed/VpBNVJkZMpE?",21],
  ["Cobblestone", "http://www.youtube.com/embed/CnTs9itCCHQ?",22],
  ["Mirage", "http://www.youtube.com/embed/_uXxcMuTuMg?",23]


]

matchid = 0

games_list.each_with_index do |game, i|
	Game.create(:map => game[0], :videolink => game[1], :match_id => i + 1)
  matchid += 1
end

matchid += 1

games_list2 = [

       ["Dust 2", "http://www.youtube.com/embed/xRQy4PpBkAU?" ,1],
       ["Cobblestone", "http://www.youtube.com/embed/9Tw3qcNbzhA?",2],
       ["Cobblestone", "http://www.youtube.com/embed/101eoTIJ6sM?",3],
       ["Inferno", "http://www.youtube.com/embed/-9NZL4UQNl8?",4],
       ["Cobblestone", "http://www.youtube.com/embed/oq3pSnwXWSA?",5],
       ["Cobblestone", "http://www.youtube.com/embed/Jz-GTF9tAOk?",6],
       ["Cobblestone", "http://www.youtube.com/embed/qbHkC40Kcmw?",7],
       ["Cobblestone", "http://www.youtube.com/embed/JjQHFrwpszY?",8],
       ["Cobblestone", "http://www.youtube.com/embed/ealMl7CUrjs?",9],
       ["Overpass", "http://www.youtube.com/embed/YbKEKWZoqpk?",10],
       ["Mirage", "http://www.youtube.com/embed/2j72wRXJ-cQ?",11],
       ["Cobblestone", "http://www.youtube.com/embed/jj30-V2fYuk?",12],
       ["Inferno", "http://www.youtube.com/embed/699smFGY69s?",13],
       ["Dust 2", "http://www.youtube.com/embed/V1dWMSSD0S4?",14],
       ["Train", "http://www.youtube.com/embed/1ThPMbp8rF8?",15],
       ["Dust 2 ", "http://www.youtube.com/embed/Y4Py_E-QA00?",16],
       ["Overpass", "http://www.youtube.com/embed/oc2-Uwf9QR0?",17],
       ["Mirage", "http://www.youtube.com/embed/MHQbOxIzjoU?",18],
       ["Mirage", "http://www.youtube.com/embed/wkI1Ce2pwUg?",19],
       ["Inferno", "http://www.youtube.com/embed/8o_g8wj_qbc?",20],
       ["Cache", "http://www.youtube.com/embed/o6WWm37jZrE?",21],
       ["Cache", "http://www.youtube.com/embed/zAaJSVOtjKU?",22],
       ["Dust 2", "http://www.youtube.com/embed/K9M9Y-WLRN8?",23],
       ["Train", "http://www.youtube.com/embed/Kw_d__GDsBQ?",24],
       ["Cobblestone", "http://www.youtube.com/embed/S6wVQI2VQZ8?",25],
       ["Mirage", "http://www.youtube.com/embed/2OgomRWyJgE?",26],
       ["Cobblestone", "http://www.youtube.com/embed/B3CgsadEXI0?",27],
       ["Cache", "http://www.youtube.com/embed/NE31g6jg7ok?",28],
       ["Cache", "http://www.youtube.com/embed/yk0GWBWSd5E?", 29],
       ["Train", "http://www.youtube.com/embed/2D4lXUU01x4?", 30],
       ["Train", "http://www.youtube.com/embed/O2S38DAcxTQ?", 31],
       ["Dust 2", "http://www.youtube.com/embed/vRuC-K_eKr0?", 32],
       ["Dust 2", "http://www.youtube.com/embed/G8-yxTIW-h0?", 33],
       ["Overpass", "http://www.youtube.com/embed/J49sRvAzB78?",34],
       ["Dust 2", "http://www.youtube.com/embed/n3E-WmbK3Is?", 35],
       ["Inferno", "http://www.youtube.com/embed/fT1f2_vSyuQ?", 36],
       ["Cache", "https://www.youtube.com/embed/V02cpWLWqu0?", 37],
       ["Train", "http://www.youtube.com/embed/38pj9LELyWM?", 38],
       ["Dust 2", "http://www.youtube.com/embed/WmiGMyayUe8?", 39],
       ["Train", "http://www.youtube.com/embed/Qh2vqiH2dgw?", 40],
       ["Cobblestone", "http://www.youtube.com/embed/L4HyDjy6kJ0?", 41],
       ["GameOver", "http://www.youtube.com/embed/dQw4w9WgXcQ?", 42]

]

games_list2.each_with_index do |game, i|
  Game.create(:map => game[0], :videolink => game[1], :match_id => matchid)
  matchid += 1
end


games_list3 = [

    ["Mirage", "http://www.youtube.com/embed/z5XXPJ8xfgI?", 1],
    ["Cache", "http://www.youtube.com/embed/FbQ-dS1UC0M?", 2],
    ["Overpass", "http://www.youtube.com/embed/N_VrT5nYioU?&start=1164", 3],
    ["Cache", "http://www.youtube.com/embed/t7grbw1P-V8?", 4],
    ["Dust 2", "http://www.youtube.com/embed/3tZR0B0fam8?", 5],
    ["Mirage", "http://www.youtube.com/embed/wRxwIpI8mSc?", 6],
    ["Overpass", "http://www.youtube.com/embed/nrA_ZClfbE8?", 7],
    ["Overpass", "http://www.youtube.com/embed/yL0edcxwMl0?", 8],
    ["Mirage", "http://www.youtube.com/embed/SDgdQyzxs7s?", 9],
    ["Cache", "http://www.youtube.com/embed/m9n5MnmZGVE?&start=971", 10],
    ["Overpass", "http://www.youtube.com/embed/NnhXdQFt988?&start=187", 11],
    ["Mirage", "http://www.youtube.com/embed/bUruFfWIIkU?&start=113", 12],
    ["Cobble", "http://www.youtube.com/embed/aAo3nhmpyOE?&start=289", 13],
    ["Dust 2", "http://www.youtube.com/embed/ldvyKwPi6cU?&start=281", 14],
    ["Dust 2", "http://www.youtube.com/embed/k_vg4B3KzYo?&start=953", 15],
    ["Cbble", "http://www.youtube.com/embed/pJCykYL1tWo?", 16],
    ["Rick Rolled Again Bro", "http://www.youtube.com/embed/dQw4w9WgXcQ?", 17]

]

games_list3.each_with_index do |game, i|
  Game.create(:map => game[0], :videolink => game[1], :match_id => matchid)
  matchid += 1
end


