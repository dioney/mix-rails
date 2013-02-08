class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.string :name
      t.text :rules
      t.date :date_from
      t.date :date_to
      t.string :photo
      t.string :partner_photo
      t.string :slug
      
      t.timestamps
    end
  end
end
