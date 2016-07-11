class Api::UsersController < ApplicationController

  protect_from_forgery with: :null_session

  before_action :doorkeeper_authorize!

  def me
    @user = current_resource_owner
    render "api/registrations/user"
  end

  def delete
    @user = current_resource_owner
    @user.destroy
    head :ok

  end

private
  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

end
