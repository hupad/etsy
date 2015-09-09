class Listing < ActiveRecord::Base
	has_attached_file :image, 
					  :styles => { :medium => "300x300", :thumb => "100x100>" },
					  :default_url => "default.jpg",
					  :storage => 's3',
					  :s3_credentials => {
					  	:bucket => "etsy-s3-bucket",
					  	:access_key_id => ENV['aws_access_key_id'], 
					  	:secret_access_key => ENV['aws_secret_access_key']
					  }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :name, :description, :price, presence: true
	validates :price, numericality: {greater_than: 0}
	validates_attachment_presence :image

	belongs_to :user
	has_many :orders
end
