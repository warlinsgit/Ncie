class Post < ApplicationRecord
	
	belongs_to :user
	has_many :comments


	mount_uploader :image, ImageUploader

	mount_uploader :image, ImageUploader
	serialize :image, JSON   #if you sqllite add this line

	#belongs_to :user, optional:true

	validates :title, :content,  presence: true

	validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed. " }


end
