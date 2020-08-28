require 'ddtrace'
require 'datadog/statsd'

if Rails.env.production?
  Datadog.configure do |c|
    c.use :rails, service_name: 'dokkuexample'
    c.use :sidekiq, service_name: 'dokkuexample', client_service_name: 'dokkuexample-sidekiq', tag_args: true
  end
end
