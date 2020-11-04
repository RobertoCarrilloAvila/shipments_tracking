
# Set Sidekiq url for the server
Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDIS_SERVER'] }
end

# Set Sidekiq url for the client
Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDIS_CLIENT'] }
end