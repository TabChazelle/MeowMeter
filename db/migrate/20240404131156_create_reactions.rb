class CreateReactions < ActiveRecord::Migration[7.1]
  def change
    create_table :reactions do |t|
      t.references :kitten, null: false, foreign_key: true
      t.string :reaction_type
      t.integer :reaction_count, default: 0
      t.timestamps
    end
  end
end
