class ApplicationController < ActionController::Base
  def hello
    render html: "Code Snips"
  end
end
