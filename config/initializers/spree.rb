# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
end

Spree.user_class = "User"

# Ensure our environment is bootstrapped with a facebook connect app
if ActiveRecord::Base.connection.table_exists? 'spree_authentication_methods'
  Spree::AuthenticationMethod.where(environment: Rails.env, provider: 'facebook').first_or_create do |auth_method|
    auth_method.api_key = 990198587696003
    auth_method.api_secret = d913b86358019bcd70c8f039590713d1
    auth_method.active = true
  end
end

if ActiveRecord::Base.connection.table_exists? 'spree_authentication_methods'
  Spree::AuthenticationMethod.where(environment: Rails.env, provider: 'twitter').first_or_create do |auth_method|
    auth_method.api_key = GQitOY5lxS73qhvkh34FQEBkS
    auth_method.api_secret = rm4ZEvSiDx8aaN6VgTrzVqGITKFvWafButtzr1xov7wAQ26sxe
    auth_method.active = true
  end
end

# if ActiveRecord::Base.connection.table_exists? 'spree_authentication_methods'
#   Spree::AuthenticationMethod.where(environment: Rails.env, provider: 'github').first_or_create do |auth_method|
#     auth_method.api_key = c03d71aff73fd06650ff
#     auth_method.api_secret = 8a37f8438b3a9b07b3a2b266723c7ea8625b57ed
#     auth_method.active = true
#   end
# end