class Team < ActiveRecord::Base
	has_many :players
	belongs_to :hometeam, :class_name => 'Groupmatch'
	belongs_to :awayteam, :class_name => 'Groupmatch'
end
