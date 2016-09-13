class Contact < ApplicationRecord
  after_create :send_email	
  validates :firstname, :lastname, :emasl, :message, presence: { message: "You need to fill out all required fields!" }

  private

  def send_email
  end
end
