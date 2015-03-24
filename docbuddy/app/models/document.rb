class Document < ActiveRecord::Base
  belongs_to :user
  validates :upload,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ }

  has_attached_file :upload,
    :storage => :s3,
    :s3_host_name => 's3-us-west-1.amazonaws.com',
    :s3_protocol => 'http',
    :s3_credentials => "#{Rails.root}/config/s3.yml"
end
