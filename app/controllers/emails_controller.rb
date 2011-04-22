class EmailsController < ApplicationController
  respond_to :html, :json

  def index
  end

  def new
    @email = Email.new
    respond_with @email
  end

  def create
    @email = Email.new(params[:email])
    if @email.save
      flash[:notice] = 'Successfully added email to mailing list.'
      respond_with @email, :location => root_path
    else
      render :new
    end
  end
end
