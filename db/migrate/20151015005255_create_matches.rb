class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      
      t.date :matchdate
      t.integer :matchorder
      t.belongs_to :tournament, index: true

      t.timestamps null: false
    end
  end
end
