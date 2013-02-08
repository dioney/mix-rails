class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :status
      t.string :slug

      t.references :related, polymorphic: true
      t.timestamps
    end
    
    add_index :albums, :slug, unique: true

  end
end
