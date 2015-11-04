class CreateGroupmatches < ActiveRecord::Migration
  def change
    create_table :groupmatches do |t|
    	t.belongs_to :match, index: true
    	t.references :hometeam, index: true
    	t.references :awayteam, index: true
      t.timestamps null: false
    end
  end
end
