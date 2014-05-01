module ProfilesHelper

include ActsAsTaggableOn::TagsHelper

def resource_name
	:profile
end

def resource
	@profile ||= Profile.new
end

def devise_mapping
	@devise_mapping ||= Devise.mappings[:profile]
end

def session_url
	session_path( resource_name )
end

 def save_tags1 (profile)
   profile.tag_list.add(profile.interests, parse: true)
   profile.save
   profile.reload 
   return nil  
 end

end