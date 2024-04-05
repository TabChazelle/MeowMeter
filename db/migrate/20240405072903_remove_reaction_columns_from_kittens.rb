class RemoveReactionColumnsFromKittens < ActiveRecord::Migration[7.1]
  def change
    remove_column :kittens, :love
    remove_column :kittens, :sad
    remove_column :kittens, :laugh
    remove_column :kittens, :happy
    remove_column :kittens, :cute
  end
end
