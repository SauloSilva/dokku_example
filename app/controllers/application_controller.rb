class ApplicationController < ActionController::Base
  def index
    10.times { HardWorker.perform_async('bob', 5) }

    head :ok, content_type: "text/html"
  end
end
