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

tournament = Tournament.create(:name => 'Dubia Invitational 2015', :org => 'ESL ESEA', :datestart => '10/08/2015', :datefinish => '10/13/2015')

match_list = [
	["Cloud9 vs. EnVyUS[Cbbl]", "10/08/2015", 1, tournament.id],
	["Virtus Pro vs. NIP[Mirage]", "10/08/2015", 2, tournament.id],
	["Fnatic vs. Titan [Cbbl]", "10/08/2015", 3, tournament.id],
	["Navi vs. TSM [Overpass]", "10/08/2015", 4, tournament.id],
	["Virtus Pro vs. EnVyUS[Cache]", "10/08/2015", 5, tournament.id],
	["NIP vs. Cloud9[Dust2]", "10/08/2015", 6, tournament.id]
]


match_list.each do |match|
  Match.create( :name => match[0], :matchdate => match[1], :matchorder => match[2], :tournament_id => match[3])
end


games_list = [
	["Cobblestone", "http://www.youtube.com/embed/kYRw_DdlnmE"],
	["Mirage", "http://www.youtube.com/embed/LHgdZR4fAcU"],
	["Cobblestone", "http://www.youtube.com/embed/EFawjRIzR2s"],
	["Overpass", "http://www.youtube.com/embed/PSRAZndiOhc"],
	["Cache", "http://www.youtube.com/embed/MrlGbfgPR28"],
	["Dust2", "http://www.youtube.com/embed/IPz8IWBxejI"]
]

games_list.each_with_index do |game, i|
	Game.create(:map => game[0], :videolink => game[1], :match_id => i + 1)
end



