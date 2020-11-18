class AddPictureToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :picture, :string
  end
end
