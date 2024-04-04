class CreateKittens < ActiveRecord::Migration[7.1]
  def change
    create_table :kittens do |t|
      t.string :name
      t.string :image_url
      t.integer :love
      t.integer :sad
      t.integer :laugh
      t.integer :happy
      t.integer :cute

      t.timestamps
    end
  end
end
