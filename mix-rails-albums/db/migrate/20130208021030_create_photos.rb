class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :description
      t.string :image
      t.string :slug

      t.references :related, polymorphic: true
      t.timestamps
    end
    
    add_index :photos, :slug, unique: true

  end
end
