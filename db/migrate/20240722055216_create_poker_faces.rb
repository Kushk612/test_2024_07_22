class CreatePokerFaces < ActiveRecord::Migration[7.1]
  def change
    create_table :poker_faces do |t|
      t.string :name
      t.integer :batch_id
      t.text :address

      t.timestamps
    end
  end
end
