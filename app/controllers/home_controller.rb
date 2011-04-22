class HomeController < ApplicationController
  respond_to :html, :json

  def show
    @sign_up = SignUp.new
    respond_with @sign_up, :location => root_path
  end
end
