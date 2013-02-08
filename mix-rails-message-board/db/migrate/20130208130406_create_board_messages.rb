class CreateBoardMessages < ActiveRecord::Migration
  def change
    create_table :board_messages do |t|
      t.string :name
      t.string :email
      t.text :message
      t.datetime :date
      t.string :status

      t.timestamps
    end
  end
end
