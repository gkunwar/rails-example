class Event < ApplicationRecord
  belongs_to :location
  belongs_to :creator, class_name: 'User', foreign_key: "creator_id"

  after_save :set_default_address
  has_and_belongs_to_many :users

  private
  def set_default_address
    self.location = "Broadway Infosys" unless location.present?
  end
end
