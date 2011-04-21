class HomeController < ApplicationController
  respond_to :html, :json

  def show
    @email = Email.new
    respond_with @email, :location => root_path
  end
end
