class AddRelatedIdRelatedTypeToAttachment < ActiveRecord::Migration
  def up
    add_column :attachments, :related_id, :integer
    add_column :attachments, :related_type, :string
  end

  def down
    remove_column :attachments, :related_id
    remove_column :attachments, :related_type
  end
end
