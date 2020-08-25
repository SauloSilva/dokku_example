class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    # do something
    sleep rand(1..20)
  end
end
