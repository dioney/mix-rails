class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.string :key
      t.string :value
      t.boolean :activated
      t.boolean :system

      t.timestamps
    end
  end
end
