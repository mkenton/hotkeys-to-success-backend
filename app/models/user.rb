class User < ApplicationRecord
    has_secure_password

    has_many :lesson_events

    validates :username, uniqueness: { case_sensitive: false}

    def password_verified(password)
        verified = authenticate(password)
        errors.add(:password, 'is invalid') unless verified
        verified
    end

end
