class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :org
      t.date :datestart
      t.date :datefinish

      t.timestamps null: false
    end
  end
end
