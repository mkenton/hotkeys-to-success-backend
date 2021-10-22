class User < ApplicationRecord
    has_secure_password

    has_many :lesson_events

    validates :username, uniqueness: { case_sensitive: false}
end
