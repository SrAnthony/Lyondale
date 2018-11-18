class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @customers = Customer.order(created_at: :desc).limit(3)
    @properties = Property.order(created_at: :desc).limit(3)
    @rents = Rent.order(created_at: :desc).limit(5)
  end
end
