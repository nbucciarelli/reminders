class EmailsController < ApplicationController
  respond_to :html, :json

  def index
  end

  def create
    @email = Email.new(params[:email])
    if @email.save
      flash[:notice] = 'Successfully added email to mailing list.'
      respond_with @email, :location => root_path
    end
  end
end
