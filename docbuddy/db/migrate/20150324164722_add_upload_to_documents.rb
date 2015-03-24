class AddUploadToDocuments < ActiveRecord::Migration
  def self.up
    add_attachment :documents, :upload
  end

  def self.down
    remove_attachment :documents, :upload
  end
end
