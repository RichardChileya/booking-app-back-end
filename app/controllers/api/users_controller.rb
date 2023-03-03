class Api::UsersController < ApplicationController
  def index
    User.all.order(created_at: :desc)
  end

  def show
    User.find(params[:id])
  end
end
