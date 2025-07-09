class Customer < ApplicationRecord
    has_one_attached :image

    validates :full_name, presence: true

    # https://stackoverflow.com/questions/38611405/email-validation-in-ruby-on-rails
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    # From Ransack errors:
    def self.ransackable_associations(auth_object = nil)
        ["image_attachment", "image_blob"]
    end

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "email_address", "full_name", "id", "notes", "phone_number", "updated_at"]
    end
end
