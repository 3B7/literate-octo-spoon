if Rails.env.production?
  $redis = Redis.new(host: "54.183.191.117", port: 6379)
else
  $redis = Redis.new(host: "localhost", port: 6379)
end