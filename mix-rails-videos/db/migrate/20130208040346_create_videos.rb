class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.string :description
      t.integer :likes
      t.integer :dislikes
      t.integer :views
      t.string :youtube_code
      t.datetime :published_at
      t.integer :seconds
      t.string :category
      t.boolean :active
      t.string :slug

      t.references :related, polymorphic: true
      t.timestamps
    end
  end
end
