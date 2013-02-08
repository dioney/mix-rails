class CreateBoardReplies < ActiveRecord::Migration
  def change
    create_table :board_replies do |t|
      t.string :name
      t.string :email
      t.text :message
      t.datetime :date
      t.string :status
      
      t.references :board_message
      t.timestamps
    end
  end
end
