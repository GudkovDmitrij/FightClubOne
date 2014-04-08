class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :URL
      t.string :name
      t.integer :category_id
      t.timestamps
    end
  end
end
