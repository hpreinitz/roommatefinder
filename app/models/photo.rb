
class Photo < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	#belongs_to :profile
end
