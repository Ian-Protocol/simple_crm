class Customer < ApplicationRecord
    has_one_attached :image

    validates :full_name, presence: true

    # https://stackoverflow.com/questions/38611405/email-validation-in-ruby-on-rails
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
