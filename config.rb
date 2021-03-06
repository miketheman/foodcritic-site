activate :syntax
activate :livereload
activate :s3_sync do |s3_sync|
  s3_sync.bucket = 'www.foodcritic.io'
  s3_sync.region = 'eu-west-1'
  s3_sync.after_build = true
  s3_sync.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
  s3_sync.aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
end
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
