class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  after_create :send_welcome_email

  has_many :events, foreign_key: 'creator_id'
  has_and_belongs_to_many :events

  private
  def send_welcome_email
    # UserMailer.welcome_email(self).deliver_now
  end
end
