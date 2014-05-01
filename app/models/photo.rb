
class Photo < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	#belongs_to :profile

#	LIMIT = 1

#    validate do |record|
#      record.validate_photo_quota
#    end

 #   def validate_photo_quota
 #     return unless self.profile
 #     if self.gallery.profile(:reload).count >= LIMIT
 #       errors.add(:base, :exceeded_quota)
#    end
 #  end
end
