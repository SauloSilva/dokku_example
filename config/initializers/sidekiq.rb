if Rails.env.production?
  Sidekiq.configure_server do |config|
    config.redis = { url: ENV['REDIS_URL'] }
    config.options[:dead_max_jobs] = 1_000_000

    config.server_middleware do |chain|
      chain.add(Sidekiq::Middleware::Server::Datadog, tags: ['dokkuexample'])
    end
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: ENV['REDIS_URL'] }
  end
end
