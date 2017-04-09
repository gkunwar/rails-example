class HomeController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @my_events = current_user.events
  end

  def index
  end

  def contact

  end

  def event_contact
  end

  def search
  end
end
