class AddImageToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :image, :string
  end
end
