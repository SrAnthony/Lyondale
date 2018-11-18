class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @customers = Customer.order(created_at: :desc).limit(5)
    @properties = Property.order(created_at: :desc).limit(5)
    @rents = Rent.order(created_at: :desc).limit(5)
  end
end
