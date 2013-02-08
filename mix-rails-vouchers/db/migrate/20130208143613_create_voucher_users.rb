class CreateVoucherUsers < ActiveRecord::Migration
  def change
    create_table :voucher_users do |t|
      t.string :name
      t.string :email
      t.boolean :confirmed
      t.date :confirmation_date

      t.references :voucher
      t.timestamps
    end
  end
end
