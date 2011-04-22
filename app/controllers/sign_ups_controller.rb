class SignUpsController < ApplicationController
  respond_to :html, :json

  def index
  end

  def new
    @sign_up = SignUp.new
    respond_with @sign_up
  end

  def create
    @sign_up = SignUp.new(params[:email])
    if @sign_up.save
      flash[:notice] = 'Successfully added your email to the mailing list.'
      respond_with @sign_up, :location => root_path
    else
      render :new
    end
  end
end
