class AddImageToAttachments < ActiveRecord::Migration
  def up
  	add_attachment :attachments, :image
  end
  def down
  	remove_attachment :attachments, :image
  end
end
