
class Photo < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
end
