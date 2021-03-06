class SignUpsController < ApplicationController
  respond_to :html, :json

  def index
  end

  def new
    @sign_up = SignUp.new
    respond_with @sign_up
  end

  def create
    @sign_up = SignUp.new(params[:sign_up])
    if @sign_up.save
      Notifier.delay.welcome_email(@sign_up.email)
      flash[:notice] = 'Successfully added your email to the mailing list.'
      respond_with @sign_up, :location => root_path
    else
      respond_with @sign_up
    end
  end
end
