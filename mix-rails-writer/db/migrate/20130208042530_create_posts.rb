class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :source
      t.datetime :date
      t.string :status
      t.string :slug
      t.string :type
      t.string :image
      
      t.timestamps
    end
  end
end
