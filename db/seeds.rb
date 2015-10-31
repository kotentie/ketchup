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
       ["Team EnVyUs vs. Fnatic - Cache - Quarter-final - Game 3 - ",28, tournament2.id]
  
]


match_list.each do |match|
  Match.create( :name => match[0], :matchdate => match[1], :matchorder => match[2], :tournament_id => match[3])
end

match_list2.each do |match|
  Match.create( :name => match[0], :matchorder => match[1], :tournament_id => match[2])
end


games_list = [
	["Cobblestone", "http://www.youtube.com/embed/kYRw_DdlnmE"],
	["Mirage", "http://www.youtube.com/embed/LHgdZR4fAcU"],
	["Cobblestone", "http://www.youtube.com/embed/EFawjRIzR2s"],
	["Overpass", "http://www.youtube.com/embed/PSRAZndiOhc"],
	["Cache", "http://www.youtube.com/embed/MrlGbfgPR28"],
  ["Dust2", "http://www.youtube.com/embed/IPz8IWBxejI"],
  ["Cobblestone", "http://www.youtube.com/embed/bC49ebnTlUI"],
  ["Dust2", "http://www.youtube.com/embed/1eq3ZroT0fc"],
  ["Dust2", "http://www.youtube.com/embed/OhYc8Llowgg"],
  ["Inferno", "http://www.youtube.com/embed/b6Slbne36So"],
  ["Train", "http://www.youtube.com/embed/29oeTvuxMo"],
  ["Inferno", "http://www.youtube.com/embed/zAGQBt_VhqU"],
  ["Dust2", "http://www.youtube.com/embed/cWTb_MzfwQM"],
  ["Mirage", "http://www.youtube.com/embed/GFj4-OcXRDg"],
  ["Inferno", "http://www.youtube.com/embed/Qz5ErHaVsUc"],
  ["Cobblestone", "http://www.youtube.com/embed/u7iHcbdHpT0"],
  ["Train", "http://www.youtube.com/embed/x2GQ9KCQIEs"],
  ["Cache", "http://www.youtube.com/embed/oi9zwKpOKh8"],
  ["Overpass", "http://www.youtube.com/embed/DA0iptQxFZQ"],
  ["Train", "http://www.youtube.com/embed/tncJS5DLDsc"],
  ["Dust2", "http://www.youtube.com/embed/VpBNVJkZMpE"],
  ["Cobblestone", "http://www.youtube.com/embed/CnTs9itCCHQ"],
  ["Mirage", "http://www.youtube.com/embed/_uXxcMuTuMg"]
]

matchid = 0

games_list.each_with_index do |game, i|
	Game.create(:map => game[0], :videolink => game[1], :match_id => i + 1)
  matchid += 1
end


matchid += 1


games_list2 = [

       ["Luminosity Gaming vs. Cloud9 - Dust 2 - Group Stage - ", "http://www.youtube.com/embed/xRQy4PpBkAU" ,1],
       ["Fnatic vs. Vexed Gaming - Cobblestone - Group Stage - ", "http://www.youtube.com/embed/9Tw3qcNbzhA",2],
       ["Virtus.Pro vs. Team Liquid - Cobblestone - Group Stage - ", "http://www.youtube.com/embed/101eoTIJ6sM",3],
       ["G2 Esports vs. mousesports - Inferno - Group Stage - ", "http://www.youtube.com/embed/-9NZL4UQNl8",4],
       ["Team Solomid vs. Flipsid3 Tactics - Cobblestone - Group Stage - ", "http://www.youtube.com/embed/oq3pSnwXWSA",5],
       ["Ninjas In Pyjamas vs. Titan - Cobblestone - Group Stage - ", "http://www.youtube.com/embed/Jz-GTF9tAOk",6],
       ["Team EnVyUs vs. Team Dignitas - Cobblestone - Group Stage - ", "http://www.youtube.com/embed/qbHkC40Kcmw",7],
       ["Natus Vincere vs. Counter Logic Gaming - Cobblestone - Group Stage - ", "http://www.youtube.com/embed/JjQHFrwpszY",8],
       ["Cloud9 vs. Vexed Gaming - Cobblestone - Group Stage - ", "http://www.youtube.com/embed/ealMl7CUrjs",9],
       ["Flipsid3 Tactics vs. mousesports - Overpass - Group Stage - ", "http://www.youtube.com/embed/YbKEKWZoqpk",10],
       ["Ninjas In Pyjamas vs. Team Liquid - Mirage - Group Stage - ", "http://www.youtube.com/embed/2j72wRXJ-cQ",11],
       ["Team Dignitas vs. Counter Logic Gaming - Cobblestone - Group Stage - ", "http://www.youtube.com/embed/jj30-V2fYuk",12],
       ["Fnatic vs. Luminosity Gaming - Inferno - Group Stage - ", "http://www.youtube.com/embed/699smFGY69s",13],
       ["Team Solomid vs. G2 Esports - Dust 2 - Group Stage - ", "http://www.youtube.com/embed/V1dWMSSD0S4",14],
       ["Virtus.pro vs. Titan - Train - Group Stage - ", "http://www.youtube.com/embed/1ThPMbp8rF8",15],
       ["Fnatic vs. Cloud9 - Dust 2 - Decider Match - Game 1 - ", "http://www.youtube.com/embed/Y4Py_E-QA00",16],
       ["Fnatic vs. Cloud9 - Overpass - Decider Match - Game 2 - ", "http://www.youtube.com/embed/oc2-Uwf9QR0",17],
       ["Team EnVyUs vs. Natus Vincere - Mirage - Group Stage - ", "http://www.youtube.com/embed/MHQbOxIzjoU",18],
       ["G2 Esports vs. mousesports - Mirage - Decider Match - Game 1 - ", "http://www.youtube.com/embed/wkI1Ce2pwUg",19],
       ["G2 Esports vs. mousesports - Inferno - Decider Match - Game 2 - ", "http://www.youtube.com/embed/8o_g8wj_qbc",20],
       ["G2 Esports vs. mousesports - Cache - Decider Match - Game 3 - ", "http://www.youtube.com/embed/o6WWm37jZrE",21],
       ["Titan vs. Ninjas in Pyjamas - Cache - Decider Match - Game 1 - ", "http://www.youtube.com/embed/zAaJSVOtjKU",22],
       ["Titan vs. Ninjas in Pyjamas - Dust 2 - Decider Match - Game 2 - ", "http://www.youtube.com/embed/K9M9Y-WLRN8",23],
       ["Natus Vincere vs. CLG - Train - Decider Match - Game 1 - ", "http://www.youtube.com/embed/Kw_d__GDsBQ",24],
       ["Natus Vincere vs. CLG - Cobblestone - Decider Match - Game 2 - ", "http://www.youtube.com/embed/S6wVQI2VQZ8",25],
       ["Team EnVyUs vs. Fnatic - Mirage - Quarter-final - Game 1 - ", "http://www.youtube.com/embed/2OgomRWyJgE",26],
       ["Team EnVyUs vs. Fnatic - Cobblestone - Quarter-final - Game 2 - ", "http://www.youtube.com/embed/B3CgsadEXI0",27],
       ["Team EnVyUs vs. Fnatic - Cache - Quarter-final - Game 3 - ", "https://www.youtube.com/embed/NE31g6jg7ok",28]
]

games_list2.each_with_index do |game|
  Game.create(:map => game[0], :videolink => game[1], :match_id => matchid)
  matchid += 1
end


