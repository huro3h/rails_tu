class ApplicationController < ActionController::Base
  def hello
    render html: "Hello, Rails 5.2"
  end
end
