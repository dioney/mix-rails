class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :author
      t.string :status
      t.string :mp3
      t.string :slug
      
      t.references :related, polymorphic: true
      t.timestamps
    end
  end
end
