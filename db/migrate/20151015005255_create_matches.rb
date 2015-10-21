class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :awayteam
      t.string :hometeam
      t.date :matchdate
      t.belongs_to :tournament

      t.timestamps null: false
    end
  end
end
