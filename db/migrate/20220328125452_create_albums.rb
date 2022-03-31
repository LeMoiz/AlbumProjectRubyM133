class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :band
      t.string :title
      t.integer :year
      t.integer :no_songs
      t.timestamps
    end
  end
end
