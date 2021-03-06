class UsersController < ApplicationController

  before_action :load_user

  # validates :username, presence true

  def load_user
    @user = User.find(params[:id])
  end

  def show
    # @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login @user
      redirect_to @user
    else
      render 'new'
    end

  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:firstname,:lastname,:username)
  end


end
