class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :categorizable, polymorphic: true
      t.references :category
      t.timestamps
    end
  end
end
