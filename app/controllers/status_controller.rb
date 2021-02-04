class StatusController < ApplicationController
  before_action :authenticate_user

  def index
    render json: {instructor: current_user.instructor}
  end

end
