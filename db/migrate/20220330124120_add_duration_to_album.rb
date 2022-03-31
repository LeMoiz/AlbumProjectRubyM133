class AddDurationToAlbum < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :duration, :integer
  end
end
