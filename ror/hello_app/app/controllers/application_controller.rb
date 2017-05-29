class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "<p>This is my new App</p><p><a href='http://localhost:3000/users'>These are my users</a></p>".html_safe
  end
end