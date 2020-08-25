require 'ddtrace'
require 'datadog/statsd'

if Rails.env.production?
  Datadog.configure do |c|
    c.use :rails, service_name: 'dokkuexample'
  end
end
