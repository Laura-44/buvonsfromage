class ApplicationController < ActionController::Base
  def default_url_options
    { host: ENV["www.buvonsfromage.com"] || "localhost:3000" }
  end
end


