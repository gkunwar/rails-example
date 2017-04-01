class HomeController < ApplicationController
  # layout 'contact'
  def index
    @name = "Ganesh"
    # It gives the number of record from events table
    @event_count = Event.count
    # It gives first record from events table
    @event = Event.first
    address = 'address'
  end

  def contact

  end

  def event_contact
    # Redirect to contact
    # redirect_to '/contact'
    # Render
    # render 'contact'
  end

  def search
    binding.pry
  end
end
