module ProfilesHelper

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
end