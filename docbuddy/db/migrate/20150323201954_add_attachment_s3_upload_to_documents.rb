class AddAttachmentS3UploadToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :s3_upload
    end
  end

  def self.down
    remove_attachment :documents, :s3_upload
  end
end
