if Rails.env == "production"
02.
# no production app yet
03.
else
04.
if ENV['USER'] == 'monica'
05.
Rails.application.config.middleware.use OmniAuth::Builder do
06.
provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
07.
provider :facebook, 'APP_ID', 'APP_SECRET'  # Find these values on the Facebook App page
08.
end
09.
end
10.
end