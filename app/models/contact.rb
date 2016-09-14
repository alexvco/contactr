class Contact < ApplicationRecord
  validates :firstname, :lastname, :email, :message, presence: { message: "You need to fill out all required fields!" }

end
