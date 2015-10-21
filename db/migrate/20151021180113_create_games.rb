class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :map
      t.string :score
      t.string :videolink
      belongs_to :match, index:true

      t.timestamps null: false
    end
  end
end
