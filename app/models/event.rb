class Event < ApplicationRecord
  belongs_to :location

  after_save :set_default_address

  private
  def set_default_address
    self.location = "Broadway Infosys" unless location.present?
  end
end
