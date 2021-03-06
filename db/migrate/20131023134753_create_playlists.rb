class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :state, default: 'private'

      t.timestamps
    end
  end
end
