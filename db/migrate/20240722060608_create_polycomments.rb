class CreatePolycomments < ActiveRecord::Migration[7.1]
  def change
    create_table :polycomments do |t|
      t.text :content
      t.references :commited, polymorphic: true, null: false

      t.timestamps
    end
  end
end
